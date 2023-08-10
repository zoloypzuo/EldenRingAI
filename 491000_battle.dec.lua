RegisterTableGoal(GOAL_king_grounddragon491000_Battle, "king_grounddragon491000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_king_grounddragon491000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5400)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = 0
    f2_local5 = arg1:GetHpRate(TARGET_SELF)
    if f2_local5 <= 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 11320) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[29] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 11321) then
        local f2_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, 180, 15)
        if f2_local6 then
            if f2_local3 > 8 then
                f2_local0[32] = 100
            else
                f2_local0[10] = 20
                f2_local0[13] = 20
                f2_local0[15] = 20
                f2_local0[32] = 40
            end
        else
            f2_local6 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local6 = 2
            end
            if 15 + f2_local6 < f2_local3 then
                f2_local0[10] = 0
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[19] = 20
                f2_local0[21] = 30
            elseif 8 + f2_local6 < f2_local3 then
                f2_local0[10] = 0
                f2_local0[11] = 20
                f2_local0[12] = 0
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[15] = 0
                f2_local0[16] = 20
                f2_local0[17] = 20
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[21] = 30
            elseif 4 + f2_local6 < f2_local3 then
                f2_local0[10] = 0
                f2_local0[11] = 20
                f2_local0[12] = 20
                f2_local0[13] = 0
                f2_local0[14] = 20
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[21] = 30
            else
                f2_local0[10] = 20
                f2_local0[11] = 0
                f2_local0[12] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[17] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[21] = 30
            end
        end
    else
        local f2_local6 = 0
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            f2_local6 = 3
        end
        if f2_local3 < 8 + f2_local6 then
            if f2_local3 > -2 and f2_local3 < 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
                f2_local0[8] = 10
                f2_local0[9] = 10
                f2_local0[4] = 70
                f2_local0[1] = 30
            elseif f2_local3 > 4 and f2_local3 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
                f2_local0[1] = 35
                f2_local0[2] = 35
                f2_local0[4] = 30
            elseif f2_local3 > -5 and f2_local3 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 180, 15) then
                f2_local0[5] = 25
                f2_local0[6] = 70
                f2_local0[9] = 5
                f2_local0[30] = 1
                f2_local0[32] = 1
            elseif f2_local3 > -5 and f2_local3 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 130, 180, 15) then
                f2_local0[5] = 20
                f2_local0[7] = 70
                f2_local0[8] = 5
                f2_local0[30] = 1
                f2_local0[32] = 1
            else
                f2_local0[3] = 90
                f2_local0[5] = 10
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 220, 180, 30) then
            f2_local0[32] = 100
        else
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[5] = 20
            f2_local0[4] = 50
        end
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[9], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[3], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[10], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[13], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[19], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3020, 25, f2_local0[21], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act21)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, king_grounddragon491000_Act40)
    local f2_local6 = REGIST_FUNC(arg1, arg2, GOAL_king_grounddragon491000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function king_grounddragon491000_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f3_local0 = 5
    local f3_local1 = 3000
    local f3_local2 = TARGET_ENE_0
    local f3_local3 = 30
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    arg0:SetNumber(0, 0)
    local f3_local7 = arg0:GetDist(TARGET_ENE_0)
    local f3_local8 = arg0:GetRandam_Int(1, 100)
    if f3_local7 > 15 then
        f3_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, f3_local2, f3_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11325)
    local f4_local0 = 5
    local f4_local1 = 3001
    local f4_local2 = TARGET_ENE_0
    local f4_local3 = 30
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    arg0:SetNumber(0, 0)
    local f4_local7 = arg0:GetDist(TARGET_ENE_0)
    local f4_local8 = arg0:GetRandam_Int(1, 100)
    if f4_local7 > 12 then
        f4_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, f4_local2, f4_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f5_local0 = 5
    local f5_local1 = 3002
    local f5_local2 = TARGET_ENE_0
    local f5_local3 = 30
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, f5_local2, f5_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f6_local0 = 5
    local f6_local1 = 3003
    local f6_local2 = TARGET_ENE_0
    local f6_local3 = 30
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    arg0:SetNumber(0, 0)
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    local f6_local8 = arg0:GetRandam_Int(1, 100)
    if f6_local7 > 18 then
        f6_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, f6_local2, f6_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f7_local0 = 5
    local f7_local1 = 3004
    local f7_local2 = TARGET_ENE_0
    local f7_local3 = 30
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, f7_local2, f7_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f8_local0 = 5
    local f8_local1 = 3007
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 30
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, f8_local2, f8_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f9_local0 = 5
    local f9_local1 = 3009
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 30
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f10_local0 = 5
    local f10_local1 = 3010
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 30
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    local f11_local0 = 5
    local f11_local1 = 3011
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 30
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 4
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f12_local1 = 5
    end
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f12_local8 = 5
    local f12_local9 = 3000
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 30
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 7.2
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f13_local1 = 9.2
    end
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f13_local8 = 5
    local f13_local9 = 3001
    local f13_local10 = TARGET_ENE_0
    local f13_local11 = 30
    local f13_local12 = 0
    local f13_local13 = 0
    local f13_local14 = 0
    arg0:SetNumber(0, 0)
    local f13_local15 = arg0:GetDist(TARGET_ENE_0)
    local f13_local16 = arg0:GetRandam_Int(1, 100)
    if f13_local15 > 13 then
        f13_local9 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, f13_local10, f13_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 4.8
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f14_local1 = 6.8
    end
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f14_local8 = 5
    local f14_local9 = 3003
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 30
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act13(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f15_local0 = 5
    local f15_local1 = 3004
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 30
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg0:SetNumber(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 6.3
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f16_local1 = 7.8
    end
    Approach_Act_Flex(arg0, arg1, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f16_local8 = 5
    local f16_local9 = 3010
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 30
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg0:SetNumber(0, 0)
    local f16_local15 = arg0:GetDist(TARGET_ENE_0)
    local f16_local16 = arg0:GetRandam_Int(1, 100)
    if f16_local15 > 15 then
        f16_local9 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f17_local0 = 5
    local f17_local1 = 3012
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 30
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg0:SetNumber(0, 0)
    local f17_local7 = arg0:GetDist(TARGET_ENE_0)
    local f17_local8 = arg0:GetRandam_Int(1, 100)
    if f17_local7 > 15 then
        f17_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 8
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 100
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f18_local1 = 9.5
    end
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f18_local8 = 5
    local f18_local9 = 3013
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = 30
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    arg0:SetNumber(0, 0)
    local f18_local15 = arg0:GetDist(TARGET_ENE_0)
    local f18_local16 = arg0:GetRandam_Int(1, 100)
    if f18_local15 > 13 then
        f18_local9 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local8, f18_local9, f18_local10, f18_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 9
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 100
    local f19_local5 = 0
    local f19_local6 = 0
    local f19_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 5021) then
        f19_local1 = 10.5
    end
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f19_local8 = 5
    local f19_local9 = 3014
    local f19_local10 = TARGET_ENE_0
    local f19_local11 = 30
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    arg0:SetNumber(0, 0)
    local f19_local15 = arg0:GetDist(TARGET_ENE_0)
    local f19_local16 = arg0:GetRandam_Int(1, 100)
    if f19_local15 > 20 then
        f19_local9 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local8, f19_local9, f19_local10, f19_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f20_local0 = 5
    local f20_local1 = 3015
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 30
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg0:SetNumber(0, 0)
    local f20_local7 = arg0:GetDist(TARGET_ENE_0)
    local f20_local8 = arg0:GetRandam_Int(1, 100)
    if f20_local7 > 15 then
        f20_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act19(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f21_local0 = 5
    local f21_local1 = 3016
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 30
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg0:SetNumber(0, 0)
    local f21_local7 = arg0:GetDist(TARGET_ENE_0)
    local f21_local8 = arg0:GetRandam_Int(1, 100)
    if f21_local7 > 20 then
        f21_local1 = 3030
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act20(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = 3014
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 30
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, f22_local2, f22_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act21(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 110, 180, 30) then
        local f23_local0 = 5
        local f23_local1 = 3020
        local f23_local2 = TARGET_ENE_0
        local f23_local3 = 30
        local f23_local4 = 0
        local f23_local5 = 0
        local f23_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, f23_local1, f23_local2, f23_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act25(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act26(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, DIST_None, 1.5, 10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act27(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act29(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act30(arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = 10
    local f31_local2 = 12
    local f31_local3 = 50
    local f31_local4 = arg0:GetRandam_Int(1, 100)
    local f31_local5 = -1
    if f31_local4 <= f31_local3 then
        f31_local5 = 9910
    end
    if f31_local1 <= f31_local0 then
        Approach_Act(arg0, arg1, f31_local1, f31_local2, f31_local3, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f31_local1, TARGET_ENE_0, true, f31_local5)
    
end

function king_grounddragon491000_Act31(arg0, arg1, arg2)
    local f32_local0 = 50
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    local f32_local2 = -1
    if f32_local1 <= f32_local0 then
        f32_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f32_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act32(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act33(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 12, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act34(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 12, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act35(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act36(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function king_grounddragon491000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_king_grounddragon491000_ActAfter_AdjustSpace, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f42_local0 = arg1:GetRandam_Int(1, 100)
    local f42_local1 = arg1:GetRandam_Int(1, 100)
    local f42_local2 = arg1:GetDist(TARGET_ENE_0)
    local f42_local3 = arg1:GetHpRate(TARGET_SELF)
    local f42_local4 = arg1:GetNumber(0)
    local f42_local5 = arg1:GetNumber(1)
    local f42_local6 = arg1:GetRandam_Int(0, 10)
    local f42_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11325) and f42_local2 > 7 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) and f42_local2 > 15 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) and f42_local2 > 15 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) then
        if f42_local2 < 8 then
            if f42_local0 <= 100 and arg1:GetNumber(0) == 0 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            elseif f42_local0 <= 40 and arg1:GetNumber(0) >= 1 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        elseif f42_local2 < 15 then
            if f42_local0 <= 100 and arg1:GetNumber(0) == 0 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            elseif f42_local0 <= 20 and arg1:GetNumber(0) == 1 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        elseif f42_local2 < 30 then
            if f42_local0 <= 100 and arg1:GetNumber(0) == 0 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            elseif f42_local0 <= 0 and arg1:GetNumber(0) == 1 then
                arg2:ClearSubGoal()
                arg1:SetNumber(0, f42_local4 + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        if f42_local2 > -1 and f42_local2 < 1.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 180, 15) then
            if 5 + f42_local7 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        elseif f42_local2 > -1 and f42_local2 < 2.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 140, 180, 15) and 5 + f42_local7 <= arg1:GetAttackPassedTime(3009) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) and f42_local2 > 3 and f42_local2 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5036) and f42_local2 < 4 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5037) and f42_local2 < 4 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5038) and f42_local2 > 3 and f42_local2 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        if f42_local2 < 4 then
            if 20 + f42_local7 <= arg1:GetAttackPassedTime(3000) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif 10 + f42_local7 <= arg1:GetAttackPassedTime(3012) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif 10 + f42_local7 <= arg1:GetAttackPassedTime(3013) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
        if f42_local0 <= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f42_local2 < 4 then
            if f42_local1 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif f42_local2 > 4 and 10 + f42_local7 <= arg1:GetAttackPassedTime(3019) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) and f42_local2 < 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) and f42_local2 < 8 and f42_local2 > 3 and f42_local2 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and f42_local2 < 4 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        if f42_local2 < 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then
                if 30 + f42_local7 <= arg1:GetAttackPassedTime(3004) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        elseif f42_local2 < 12 then
            if 20 + f42_local7 <= arg1:GetAttackPassedTime(3010) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 999, 0, 0, 0)
                return true
            end
        elseif 50 + f42_local7 <= arg1:GetAttackPassedTime(3016) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11321) then
            if f42_local2 < 8 then
                if f42_local2 > -2 and f42_local2 < 3 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then

                elseif f42_local2 > 3 and f42_local2 < 8 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) then

                end
            elseif f42_local2 > 10 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 30) and 50 + f42_local7 <= arg1:GetAttackPassedTime(3016) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f42_local2 < 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 15) and 10 + f42_local7 <= arg1:GetAttackPassedTime(3002) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif f42_local2 > -1 and f42_local2 < 1.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 180, 15) then
                if 20 + f42_local7 <= arg1:GetAttackPassedTime(3007) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif 10 + f42_local7 <= arg1:GetAttackPassedTime(3011) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f42_local2 > -1 and f42_local2 < 2.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 140, 180, 15) then
                if 20 + f42_local7 <= arg1:GetAttackPassedTime(3009) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif 10 + f42_local7 <= arg1:GetAttackPassedTime(3010) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f42_local2 > -2 and f42_local2 < 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 15) and 40 + f42_local7 <= arg1:GetAttackPassedTime(3004) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_king_grounddragon491000_AfterAttackAct, "king_grounddragon491000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_king_grounddragon491000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


