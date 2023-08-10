RegisterTableGoal(GOAL_RoamCommonSoldiersOneHand437000_Battle, "RoamCommonSoldiersOneHand437000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamCommonSoldiersOneHand437000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
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
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = 0
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13698)
    local f2_local8 = 4
    local f2_local9 = 7
    if arg1:HasSpecialEffectId(TARGET_SELF, 13652) then
        f2_local8 = 4 + 3
        f2_local9 = 7 + 3
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13653) then
        f2_local8 = 4 + 10
        f2_local9 = 7 + 10
    end
    if arg1:IsRiding(TARGET_SELF) then
        if f2_local3 < 5 or not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 280, -1, 15) then
            f2_local0[31] = 100
        else
            f2_local0[30] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13698) then
        f2_local0[17] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13690) and arg1:HasSpecialEffectId(TARGET_SELF, 13653) then
        f2_local0[3] = 60
        f2_local0[48] = 1
        if f2_local3 > 5 then
            f2_local0[48] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13690) and arg1:HasSpecialEffectId(TARGET_SELF, 13659) and f2_local3 > 2 then
        f2_local0[2] = 60
        f2_local0[48] = 40
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 13650) and arg1:HasSpecialEffectId(TARGET_SELF, 13680) == false and arg1:GetTimer(1) <= 0 then
        arg1:SetTimer(1, 10)
        if f2_local3 < 9 then
            arg1:Replaning()
        else
            f2_local0[21] = 100
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[49] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 13653) then
            f2_local0[3] = 30
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13650) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13688) then
                f2_local0[2] = 100
            else
                f2_local0[2] = 30
            end
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if f2_local3 < f2_local8 or f2_local9 < f2_local3 then
            f2_local0[49] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13650) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13688) then
                f2_local0[2] = 120
            else
                f2_local0[2] = 40
            end
            f2_local0[49] = 60
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13651) then
            f2_local0[14] = 5
            f2_local0[49] = 95
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13652) then
            f2_local0[7] = 5
            f2_local0[49] = 95
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13653) then
            f2_local0[3] = 60
            f2_local0[49] = 40
        end
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 13651) then
            if f2_local3 > 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                else
                    f2_local0[42] = 100
                end
            elseif arg1:GetTimer(0) > 0 then
                f2_local0[45] = 100
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 > 8 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13650) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13688) then
                            f2_local0[2] = 160
                        else
                            f2_local0[2] = 80
                        end
                        f2_local0[40] = 0
                        f2_local0[8] = 5
                        f2_local0[9] = 5
                        f2_local0[14] = 5
                        f2_local0[49] = 30
                    else
                        f2_local0[40] = 0
                        f2_local0[8] = 25
                        f2_local0[9] = 10
                        f2_local0[14] = 70
                        f2_local0[49] = 30
                    end
                elseif f2_local3 > 3 then
                    f2_local0[8] = 40
                    f2_local0[9] = 30
                    f2_local0[49] = 20
                    if f2_local3 > 5 then
                        f2_local0[14] = 50
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13688) and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
                        f2_local0[2] = 100
                    end
                else
                    f2_local0[1] = 15
                    f2_local0[8] = 15
                    f2_local0[9] = 20
                    f2_local0[12] = 25
                    f2_local0[13] = 25
                    f2_local0[49] = 30
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[42] = 100
            end
            f2_local0[49] = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13652) then
            if f2_local3 > 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                    f2_local0[40] = 100
                    f2_local0[41] = 0
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 > 7 then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13650) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
                        if arg1:HasSpecialEffectId(TARGET_SELF, 13688) then
                            f2_local0[2] = 160
                        else
                            f2_local0[2] = 80
                        end
                        f2_local0[6] = 5
                        f2_local0[7] = 10
                        f2_local0[40] = 0
                        f2_local0[49] = 5
                    else
                        f2_local0[6] = 30
                        f2_local0[7] = 60
                        f2_local0[40] = 0
                        f2_local0[49] = 5
                    end
                elseif f2_local3 > 3 then
                    f2_local0[5] = 20
                    f2_local0[6] = 70
                    f2_local0[49] = 5
                    if arg1:HasSpecialEffectId(TARGET_SELF, 13688) and arg1:HasSpecialEffectId(TARGET_SELF, 13659) then
                        f2_local0[2] = 100
                    end
                elseif f2_local3 > 2 then
                    f2_local0[1] = 20
                    f2_local0[5] = 20
                    f2_local0[6] = 60
                    f2_local0[49] = 5
                else
                    f2_local0[1] = 25
                    f2_local0[5] = 40
                    f2_local0[6] = 60
                    f2_local0[11] = 35
                    f2_local0[49] = 5
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 < 3 then
                    f2_local0[6] = 80
                    f2_local0[42] = 20
                end
                f2_local0[42] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13653) then
            if f2_local3 > 40 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, -1) then
                    f2_local0[41] = 0
                    f2_local0[49] = 100
                else
                    f2_local0[42] = 100
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f2_local3 > 7.5 then
                    f2_local0[3] = 75
                    f2_local0[49] = 25
                else
                    f2_local0[3] = 75
                    f2_local0[49] = 25
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[42] = 100
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13650) then
            f2_local0[6] = 0
        end
        if f2_local3 > 5 then
            f2_local0[9] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13663) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 13675) then
                f2_local0[16] = 90000
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                f2_local0[16] = 120
            end
        else
            f2_local0[16] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 13696) and arg1:HasSpecialEffectId(TARGET_SELF, 13665) and arg1:HasSpecialEffectId(TARGET_SELF, 13653) == false then
            if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
                if arg1:GetHpRate(TARGET_SELF) < 0.5 then
                    f2_local0[15] = 99999
                end
            elseif arg1:GetHpRate(TARGET_SELF) < 1 or arg1:HasSpecialEffectId(TARGET_SELF, 13666) then
                f2_local0[15] = 99999
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 6, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 30, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 6, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 6, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3017, 6, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3018, 6, f2_local0[2], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3019, 6, f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[3], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 6, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 6, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3020, 6, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3023, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[14], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3028, 20, f2_local0[16], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act45)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_Act49)
    local f2_local10 = REGIST_FUNC(arg1, arg2, RoamCommonSoldiersOneHand437000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function RoamCommonSoldiersOneHand437000_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13651) then
        local f3_local0 = 2.5
        local f3_local1 = 999
        local f3_local2 = 0
        local f3_local3 = 0
        local f3_local4 = 0
        local f3_local5 = 2
        local f3_local6 = 6
        Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
        local f3_local7 = 8
        local f3_local8 = 3000
        local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f3_local10 = 0
        local f3_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f3_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13652)
        if f3_local0 then
            f3_local0 = 2.8
            local f3_local1 = 999
            local f3_local2 = 0
            local f3_local3 = 0
            local f3_local4 = 0
            local f3_local5 = 2
            local f3_local6 = 2
            Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
            local f3_local7 = 8
            local f3_local8 = 3022
            local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
            local f3_local10 = 0
            local f3_local11 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function RoamCommonSoldiersOneHand437000_Act02(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13690) == false then
        local f4_local0 = 9.5
        local f4_local1 = 0
        local f4_local2 = 999
        local f4_local3 = 0
        local f4_local4 = 0
        local f4_local5 = 2
        local f4_local6 = 2
        Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local0 = 8
    local f4_local1 = 3001
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 40
    if arg0:HasSpecialEffectId(TARGET_SELF, 13692) then
        f4_local1 = 3002
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13693) then
        f4_local1 = 3003
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13694) then
        f4_local1 = 3004
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13695) then
        f4_local1 = 3019
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13696) then
        f4_local1 = 3017
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13697) then
        f4_local1 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act03(arg0, arg1, arg2)
    local f5_local0 = 30
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 8
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = -1
    local f5_local11 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act04(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13656) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f6_local0 = 3
        local f6_local1 = 3006
        local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local3 = 0
        local f6_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13657) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f6_local0 = 8
        local f6_local1 = 3007
        local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local3 = 0
        local f6_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function RoamCommonSoldiersOneHand437000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3
    local f7_local1 = 999
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f7_local7 = 8
    local f7_local8 = 3010
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act06(arg0, arg1, arg2)
    local f8_local0 = 4
    local f8_local1 = 999
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f8_local7 = 8
    local f8_local8 = 3012
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act07(arg0, arg1, arg2)
    local f9_local0 = 8
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 6
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f9_local7 = 8
    local f9_local8 = 3013
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act08(arg0, arg1, arg2)
    local f10_local0 = 2.4
    local f10_local1 = 999
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f10_local7 = 8
    local f10_local8 = 3020
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f11_local0 = 10
    local f11_local1 = 3021
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act10(arg0, arg1, arg2)
    local f12_local0 = 0.9
    local f12_local1 = 999
    local f12_local2 = 0
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:SetTimer(0, 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local7 = 8
    local f12_local8 = 3023
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act11(arg0, arg1, arg2)
    local f13_local0 = 3.6
    local f13_local1 = 999
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f13_local7 = 8
    local f13_local8 = 3014
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act12(arg0, arg1, arg2)
    local f14_local0 = 2
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f14_local7 = 8
    local f14_local8 = 3024
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act13(arg0, arg1, arg2)
    local f15_local0 = 2
    local f15_local1 = 999
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f15_local7 = 8
    local f15_local8 = 3025
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local7, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5.5
    local f16_local1 = 999
    local f16_local2 = 0
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 2
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f16_local7 = 8
    local f16_local8 = 3026
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local7, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act15(arg0, arg1, arg2)
    local f17_local0 = 4
    local f17_local1 = 999
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f17_local7 = 8
    local f17_local8 = 3016
    local f17_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local7, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act16(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13675) then
        local f18_local0 = 6.5
        local f18_local1 = 999
        local f18_local2 = 0
        local f18_local3 = 0
        local f18_local4 = 0
        local f18_local5 = 2
        local f18_local6 = 2
        Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    end
    local f18_local0 = 8
    local f18_local1 = 3028
    local f18_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 0
    local f18_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act17(arg0, arg1, arg2)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 5) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, 3, TARGET_ENE_0, 5, TARGET_ENE_0, true, -1, GUARD_GOAL_DESIRE_RET_Failed, false, 0)
    end
    local f19_local0 = 8
    local f19_local1 = 20026
    local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 0
    local f19_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f20_local0 = 8
    local f20_local1 = 3030
    local f20_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 0
    local f20_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, TARGET_ENE_0, f20_local2, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f21_local0 = 20
    local f21_local1 = 3031
    local f21_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, TARGET_ENE_0, f21_local2, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act22(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f22_local0 = 8
    local f22_local1 = 3032
    local f22_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local3 = 0
    local f22_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, TARGET_ENE_0, f22_local2, f22_local3, f22_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act30(arg0, arg1, arg2)
    local f23_local0 = 3000
    local f23_local1 = 3001
    local f23_local2 = 3005
    local f23_local3 = 3006
    local f23_local4 = 3007
    local f23_local5 = 3010
    local f23_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local7 = 0
    local f23_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 13662) or arg0:HasSpecialEffectId(TARGET_SELF, 5232) then
        if arg0:IsFinishTimer(0) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local5, TARGET_ENE_0, f23_local6, f23_local7, f23_local8, 0, 0)
            arg0:SetTimer(0, 5)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5231) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local2, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13661) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local1, TARGET_ENE_0, f23_local6, f23_local7, f23_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local0, TARGET_ENE_0, f23_local6, f23_local7, f23_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Dismount, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act40(arg0, arg1, arg2)
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku then
        local f25_local0 = arg0:GetTeamOrder(ORDER_TYPE_Role)
        local f25_local1 = ROLE_TYPE_Torimaki
        if f25_local0 == f25_local1 then
            local f25_local0 = 2
            local f25_local1 = 10
            local f25_local2 = false
            local f25_local3 = -1
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, f25_local2, f25_local3)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        else
            f25_local0 = 2
            f25_local1 = 8
            local f25_local2 = true
            local f25_local3 = -1
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, f25_local2, f25_local3)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    local f25_local0 = 2
    local f25_local1 = 10
    local f25_local2 = false
    local f25_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, f25_local2, f25_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RoamCommonSoldiersOneHand437000_Act41(arg0, arg1, arg2)
    local f26_local0 = 2
    local f26_local1 = 3
    local f26_local2 = false
    local f26_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f26_local0, TARGET_ENE_0, f26_local1, TARGET_SELF, f26_local2, f26_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 100, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act43(arg0, arg1, arg2)
    local f28_local0 = 1
    local f28_local1 = 0
    local f28_local2 = 100
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = TARGET_ENE_0
    local f28_local6 = 1
    local f28_local7 = -1
    local f28_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8)
    local f28_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act44(arg0, arg1, arg2)
    local f29_local0 = arg0:GetRandam_Int(0, 1)
    local f29_local1 = 2.5
    local f29_local2 = TARGET_ENE_0
    local f29_local3 = f29_local0
    local f29_local4 = 15
    local f29_local5 = true
    local f29_local6 = -1
    local f29_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f29_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, isLifeSuccess, f29_local6, f29_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act45(arg0, arg1, arg2)
    local f30_local0 = 3
    local f30_local1 = TARGET_ENE_0
    local f30_local2 = 8
    local f30_local3 = TARGET_ENE_0
    local f30_local4 = true
    local f30_local5 = -1
    local f30_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f30_local7 = false
    local f30_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7, f30_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act48(arg0, arg1, arg2)
    local f31_local0 = 5
    local f31_local1 = -1
    local f31_local2 = true
    local f31_local3 = 1.5
    local f31_local4 = 10
    local f31_local5 = 1.5
    local f31_local6 = 0.5
    local f31_local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f31_local3)
    local f31_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f31_local3)
    local f31_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f31_local3)
    local f31_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f31_local3)
    local f31_local11 = arg0:GetDist(POINT_INITIAL)
    local f31_local12 = arg0:GetRandam_Int(0, 1)
    if f31_local8 == true and f31_local7 == true then

    elseif f31_local8 == true and f31_local7 == false then
        f31_local12 = 0
    elseif f31_local8 == false and f31_local7 == true then
        f31_local12 = 1
    elseif f31_local8 == false and f31_local7 == false then
        f31_local12 = 2
    end
    if f31_local0 < f31_local11 and arg0:HasSpecialEffectId(TARGET_SELF, 5024) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f31_local4, POINT_INITIAL, f31_local0 - 2, TARGET_SELF, false, f31_local1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        if f31_local12 <= 1 then
            if f31_local0 - 2 < f31_local11 then
                if f31_local8 == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    f31_local12 = 0
                elseif f31_local7 == true and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    f31_local12 = 1
                end
            end
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f31_local5, TARGET_ENE_0, f31_local12, 100, f31_local2, false, f31_local1, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_Act49(arg0, arg1, arg2)
    local f32_local0 = 4
    local f32_local1 = 7
    if arg0:HasSpecialEffectId(TARGET_SELF, 13652) then
        f32_local0 = 4 + 3
        f32_local1 = 7 + 3
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13653) then
        f32_local0 = 4 + 10
        f32_local1 = 7 + 10
    end
    local f32_local2 = -1
    local f32_local3 = true
    local f32_local4 = 1
    local f32_local5 = 10
    local f32_local6 = 1.5
    local f32_local7 = 0.5
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        f32_local6 = 2.5
        f32_local7 = 2.5
        if not not arg0:HasSpecialEffectId(TARGET_SELF, 13651) or arg0:HasSpecialEffectId(TARGET_SELF, 13651) then
            f32_local0 = 4
            f32_local1 = 7
        end
    end
    local f32_local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f32_local4)
    local f32_local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f32_local4)
    local f32_local10 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, f32_local4)
    local f32_local11 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f32_local4)
    local f32_local12 = arg0:GetDist(TARGET_ENE_0)
    local f32_local13 = arg0:GetRandam_Int(0, 1)
    if f32_local9 == true and f32_local8 == true then

    elseif f32_local9 == true and f32_local8 == false then
        f32_local13 = 0
    elseif f32_local9 == false and f32_local8 == true then
        f32_local13 = 1
    elseif f32_local9 == false and f32_local8 == false then
        f32_local13 = 2
    end
    if f32_local1 < f32_local12 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f32_local5, TARGET_ENE_0, arg0:GetRandam_Float(f32_local0, f32_local1), TARGET_SELF, false, f32_local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f32_local12 <= f32_local1 and f32_local0 <= f32_local12 then
        if f32_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f32_local6, TARGET_ENE_0, f32_local13, 100, f32_local3, false, f32_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif f32_local12 < f32_local0 then
        if f32_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f32_local7, TARGET_ENE_0, arg0:GetRandam_Float(f32_local0, f32_local1), TARGET_ENE_0, f32_local3, f32_local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif f32_local13 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f32_local6, TARGET_ENE_0, f32_local13, 100, f32_local3, false, f32_local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function RoamCommonSoldiersOneHand437000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RoamCommonSoldiersOneHand437000_AfterAttackAct, 10)
    
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 10) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13698) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_RoamCommonSoldiersOneHand437000_AfterAttackAct, "RoamCommonSoldiersOneHand437000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RoamCommonSoldiersOneHand437000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


