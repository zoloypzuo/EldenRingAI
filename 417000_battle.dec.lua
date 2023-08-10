RegisterTableGoal(GOAL_WriggleCarrion_417000_Battle, "GOAL_WriggleCarrion_417000_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 12111)
    if f2_local7 == true then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            f2_local0[22] = 80
            f2_local0[23] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
            f2_local0[25] = 80
            f2_local0[23] = 20
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
            f2_local0[26] = 80
            f2_local0[23] = 20
        else
            f2_local0[21] = 80
            f2_local0[23] = 15
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[1] = 100
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[1] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local4 <= 50 and f2_local3 >= 3 then
            f2_local0[8] = 100
        else
            f2_local0[2] = 80
            f2_local0[3] = 20
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
        if f2_local4 <= 50 and f2_local3 >= 3 then
            f2_local0[9] = 100
        else
            f2_local0[5] = 80
            f2_local0[3] = 20
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
        if f2_local4 <= 50 and f2_local3 >= 3 then
            f2_local0[10] = 100
        else
            f2_local0[6] = 80
            f2_local0[3] = 20
        end
    elseif f2_local4 <= 50 and f2_local3 >= 3 then
        f2_local0[7] = 100
    else
        f2_local0[1] = 80
        f2_local0[3] = 15
        f2_local0[4] = 5
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_Act30)
    local f2_local8 = REGIST_FUNC(arg1, arg2, WriggleCarrion417000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WriggleCarrion417000_Act01(arg0, arg1, arg2)
    local f3_local0 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f3_local1, TARGET_ENE_0, f3_local0, TARGET_SELF, true, -1)
    local f3_local2 = 3000
    local f3_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local4 = 0
    local f3_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local2, TARGET_ENE_0, f3_local3, f3_local4, f3_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act02(arg0, arg1, arg2)
    local f4_local0 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f4_local1, TARGET_ENE_0, f4_local0, TARGET_SELF, true, -1)
    local f4_local2 = 3001
    local f4_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local4 = 0
    local f4_local5 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local2, TARGET_ENE_0, f4_local3, f4_local4, f4_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act03(arg0, arg1, arg2)
    local f5_local0 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f5_local1, TARGET_ENE_0, f5_local0, TARGET_SELF, true, -1)
    local f5_local2 = 3002
    local f5_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local4 = 0
    local f5_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local3, f5_local4, f5_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act04(arg0, arg1, arg2)
    local f6_local0 = 1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f6_local1, TARGET_ENE_0, f6_local0, TARGET_SELF, true, -1)
    local f6_local2 = 3003
    local f6_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local3, f6_local4, f6_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act05(arg0, arg1, arg2)
    local f7_local0 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f7_local1, TARGET_ENE_0, f7_local0, TARGET_SELF, true, -1)
    local f7_local2 = 3004
    local f7_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local4 = 0
    local f7_local5 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local2, TARGET_ENE_0, f7_local3, f7_local4, f7_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act06(arg0, arg1, arg2)
    local f8_local0 = 1.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f8_local1, TARGET_ENE_0, f8_local0, TARGET_SELF, true, -1)
    local f8_local2 = 3005
    local f8_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local4 = 0
    local f8_local5 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local2, TARGET_ENE_0, f8_local3, f8_local4, f8_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f9_local1, TARGET_ENE_0, f9_local0, TARGET_SELF, true, -1)
    local f9_local2 = 3006
    local f9_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local4 = 0
    local f9_local5 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local2, TARGET_ENE_0, f9_local3, f9_local4, f9_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act08(arg0, arg1, arg2)
    local f10_local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f10_local1, TARGET_ENE_0, f10_local0, TARGET_SELF, true, -1)
    local f10_local2 = 3007
    local f10_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local4 = 0
    local f10_local5 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local2, TARGET_ENE_0, f10_local3, f10_local4, f10_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act09(arg0, arg1, arg2)
    local f11_local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f11_local1, TARGET_ENE_0, f11_local0, TARGET_SELF, true, -1)
    local f11_local2 = 3008
    local f11_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 0
    local f11_local5 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local2, TARGET_ENE_0, f11_local3, f11_local4, f11_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act10(arg0, arg1, arg2)
    local f12_local0 = 4.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 4
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget_ParallelMov, f12_local1, TARGET_ENE_0, f12_local0, TARGET_SELF, true, -1)
    local f12_local2 = 3009
    local f12_local3 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local4 = 0
    local f12_local5 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local2, TARGET_ENE_0, f12_local3, f12_local4, f12_local5, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act21(arg0, arg1, arg2)
    local f13_local0 = 3000
    local f13_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 0
    local f13_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local1, f13_local2, f13_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act22(arg0, arg1, arg2)
    local f14_local0 = 3001
    local f14_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act23(arg0, arg1, arg2)
    local f15_local0 = 3002
    local f15_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act24(arg0, arg1, arg2)
    local f16_local0 = 3003
    local f16_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 60
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act25(arg0, arg1, arg2)
    local f17_local0 = 3004
    local f17_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local2 = 0
    local f17_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local1, f17_local2, f17_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act26(arg0, arg1, arg2)
    local f18_local0 = 3005
    local f18_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = -90
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 6), TARGET_SELF, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act27(arg0, arg1, arg2)
    local f19_local0 = 3006
    local f19_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local2 = 0
    local f19_local3 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local0, TARGET_ENE_0, f19_local1, f19_local2, f19_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act28(arg0, arg1, arg2)
    local f20_local0 = 3007
    local f20_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act29(arg0, arg1, arg2)
    local f21_local0 = 3008
    local f21_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local2 = 0
    local f21_local3 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local0, TARGET_ENE_0, f21_local1, f21_local2, f21_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_Act30(arg0, arg1, arg2)
    local f22_local0 = 3009
    local f22_local1 = 3.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = -90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local0, TARGET_ENE_0, f22_local1, f22_local2, f22_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function WriggleCarrion417000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WriggleCarrion_417000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:SetTimer(1, 5)
        if IsFinishTimer(1) and 1 >= targetDist then
            local f26_local0 = 3002
            local f26_local1 = 3.4 - arg1:GetMapHitRadius(TARGET_SELF)
            local f26_local2 = 0
            local f26_local3 = 0
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_WriggleCarrion_417000_AfterAttackAct, "GOAL_WriggleCarrion_417000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WriggleCarrion_417000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f27_local0 = arg1:GetDist(TARGET_ENE_0)
    local f27_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 10)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 80)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 15)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 80)
    if f27_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 20)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    else
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 30)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


