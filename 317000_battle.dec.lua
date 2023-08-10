RegisterTableGoal(GOAL_WolfRider317000_Battle, "WolfRider317000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfRider317000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, arg1:GetRandam_Int(0, 7))
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetHpRate(TARGET_SELF)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 11880) then
        f2_local0[40] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11875) then
        if InsideRange(arg1, arg2, 0, 130, 0, 99) then
            f2_local0[1] = 40
            f2_local0[3] = 60
        else
            f2_local0[3] = 100
        end
    elseif not (f2_local6 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if InsideRange(arg1, arg2, 90, 180, 0, 99) then
            f2_local0[19] = 100
        else
            f2_local0[19] = 100
        end
    elseif arg1:IsRiding(TARGET_SELF) and arg1:HasSpecialEffectId(TARGET_SELF, 11875) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11850) == true then
            if f2_local3 >= 7 then
                if arg1:GetNumber(1) ~= 0 then
                    arg1:SetNumber(1, 0)
                end
                arg1:SetNumber(0, arg1:GetNumber(0) + 1)
                if arg1:GetNumber(0) >= 2 then
                    f2_local0[30] = 100
                elseif InsideRange(arg1, arg2, 90, 180, 0, 99) then
                    f2_local0[11] = 100
                else
                    f2_local0[10] = 100
                end
            else
                f2_local0[30] = 100
            end
        else
            if arg1:GetNumber(0) ~= 0 then
                arg1:SetNumber(0, 0)
            end
            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
            if f2_local3 >= 7 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and arg1:GetNumber(1) <= 2 then
                f2_local0[12] = 100
            elseif f2_local3 >= 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and arg1:GetNumber(1) >= 5 then
                if InsideRange(arg1, arg2, 90, 180, 0, 99) then
                    f2_local0[11] = 100
                else
                    f2_local0[10] = 100
                end
            elseif f2_local3 >= 10 then
                if InsideRange(arg1, arg2, 90, 180, 0, 99) then
                    f2_local0[11] = 30
                    f2_local0[30] = 70
                else
                    f2_local0[10] = 30
                    f2_local0[30] = 70
                end
            elseif f2_local3 >= 7 then
                if InsideRange(arg1, arg2, 0, 180, 0, 99) then
                    f2_local0[12] = 50
                    f2_local0[30] = 50
                elseif InsideRange(arg1, arg2, 90, 180, 0, 99) then
                    f2_local0[11] = 30
                    f2_local0[30] = 70
                else
                    f2_local0[10] = 30
                    f2_local0[30] = 70
                end
            elseif f2_local3 >= 4 then
                if InsideRange(arg1, arg2, 0, 270, 0, 99) then
                    f2_local0[14] = 40
                    f2_local0[21] = 40
                    f2_local0[30] = 20
                elseif InsideRange(arg1, arg2, 90, 180, 0, 99) then
                    f2_local0[11] = 30
                    f2_local0[30] = 70
                else
                    f2_local0[10] = 30
                    f2_local0[30] = 70
                end
            elseif InsideRange(arg1, arg2, 0, 180, 0, 99) then
                f2_local0[14] = 20
                f2_local0[16] = 70
                f2_local0[21] = 10
            else
                f2_local0[15] = 100
            end
        end
    elseif f2_local3 >= 5 then
        if InsideRange(arg1, arg2, 0, 130, 0, 99) then
            f2_local0[1] = 100
        elseif InsideRange(arg1, arg2, 180, 80, 0, 99) then
            f2_local0[2] = 100
        else
            f2_local0[3] = 100
        end
    elseif InsideRange(arg1, arg2, 0, 130, 0, 99) then
        f2_local0[1] = 100
    elseif InsideRange(arg1, arg2, 180, 80, 0, 99) then
        f2_local0[2] = 100
    else
        f2_local0[3] = 100
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 11870) then
        f2_local0[17] = 0
    end
    if arg1:IsRiding(TARGET_SELF) and f2_local4 <= 0.6 and f2_local3 >= 4 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and arg1:HasSpecialEffectId(TARGET_SELF, 11860) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11870) then
        f2_local0[17] = 10000000
    end
    f2_local0[16] = SetCoolTime(arg1, arg2, 3008, 30, f2_local0[16], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act3)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act21)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, WolfRider317000_Act40)
    local f2_local7 = REGIST_FUNC(arg1, arg2, WolfRider317000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function WolfRider317000_Act1(arg0, arg1, arg2)
    local f3_local0 = 3000
    local f3_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f3_local2 = 0
    local f3_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f3_local0 = 3001
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local0, TARGET_ENE_0, f3_local1, f3_local2, f3_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act2(arg0, arg1, arg2)
    local f4_local0 = 3002
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f4_local2 = 0
    local f4_local3 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f4_local0 = 3003
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act10(arg0, arg1, arg2)
    local f6_local0 = 3000
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 6002
    local f6_local5 = 6003
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f6_local0 = 3020
        f6_local4 = 6012
        f6_local5 = 6013
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 5) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f6_local4, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f6_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act11(arg0, arg1, arg2)
    local f7_local0 = 3001
    local f7_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 6002
    local f7_local5 = 6003
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f7_local0 = 3021
        f7_local4 = 6012
        f7_local5 = 6013
    end
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 5) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local0, TARGET_ENE_0, f7_local1, f7_local2, f7_local3, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f7_local4, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f7_local5, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act12(arg0, arg1, arg2)
    local f8_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3002
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f8_local7 = 3022
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act13(arg0, arg1, arg2)
    local f9_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3003
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f9_local9 = 0
    local f9_local10 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f9_local7 = 3023
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act14(arg0, arg1, arg2)
    local f10_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3004
    local f10_local8 = 3005
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f10_local10 = 0
    local f10_local11 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f10_local8 = 3024
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act15(arg0, arg1, arg2)
    local f11_local0 = 3006
    local f11_local1 = 3007
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f11_local1, TARGET_ENE_0, f11_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(1, arg0:GetNumber(1) + 8)
    local f12_local0 = 3008
    local f12_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 0
    local f12_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local1, f12_local2, f12_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act17(arg0, arg1, arg2)
    local f13_local0 = 3009
    local f13_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act18(arg0, arg1, arg2)
    local f14_local0 = 3010
    local f14_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act19(arg0, arg1, arg2)
    local f15_local0 = 3012
    local f15_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 99) then
        f15_local0 = 3013
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act20(arg0, arg1, arg2)
    local f16_local0 = 3011
    local f16_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act21(arg0, arg1, arg2)
    local f17_local0 = 2.5
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3015
    local f17_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act29(arg0, arg1, arg2)
    local f18_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 0
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 8
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3004
    local f18_local8 = 3014
    local f18_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local7, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f18_local8, TARGET_ENE_0, f18_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act30(arg0, arg1, arg2)
    local f19_local0 = 6002
    local f19_local1 = 6003
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f19_local0 = 6012
        f19_local1 = 6013
    end
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act31(arg0, arg1, arg2)
    local f20_local0 = 6001
    if arg0:HasSpecialEffectId(TARGET_SELF, 11860) == true then
        f20_local0 = 6011
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f20_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.2, TARGET_SELF)
    if RideRequest(arg0, 3, -1) then
        arg0:AddTopGoal(GOAL_COMMON_Mount, 2, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfRider317000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WolfRider317000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetDist(TARGET_ENE_0)
    local f25_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f25_local2 = arg1:GetRandam_Int(1, 100)
    local f25_local3 = arg1:GetHpRate(TARGET_SELF)
    local f25_local4 = 3000
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsRiding(TARGET_SELF) then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4) then
                f25_local4 = 3005
                if arg1:HasSpecialEffectId(TARGET_SELF, 11860) == true then
                    f25_local4 = 3024
                end
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f25_local4, TARGET_ENE_0, f25_local1 + 3, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 360, 10) then
                arg2:ClearSubGoal()
                WolfRider317000_Act30(arg1, arg2)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 7, TARGET_SELF, false, -1)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
            arg1:SetNumber(2, arg1:GetNumber(2) + 1)
            if arg1:GetNumber(2) * 60 < f25_local2 then

            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 150, -1, 8) then
                arg1:SetNumber(2, 0)
                arg2:ClearSubGoal()
                WolfRider317000_Act31(arg1, arg2)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 270, -1, 8) then
                arg1:SetNumber(2, 0)
                arg2:ClearSubGoal()
                WolfRider317000_Act30(arg1, arg2)
                return true
            else

            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(83) then
            arg2:ClearSubGoal()
            return true
        else

        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WolfRider317000_AfterAttackAct, "WolfRider317000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfRider317000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


