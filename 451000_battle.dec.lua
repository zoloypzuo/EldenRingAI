RegisterTableGoal(GOAL_GuardianDescendant451000_Battle, "GuardianDescendant451000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GuardianDescendant451000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("isCombo", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14860)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14861)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14862)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14863)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14864)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14865)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14866)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14867)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18920)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18921)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18922)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18923)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18924)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = arg1:GetEventRequest()
    arg1:SetStringIndexedNumber("isCombo", 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14854) == false and (not not arg1:HasSpecialEffectId(TARGET_SELF, 14852) or arg1:HasSpecialEffectId(TARGET_SELF, 14853)) then
        f2_local0[20] = 10000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18941) then
        f2_local0[14] = 10000000
    else
        if f2_local3 < 0 then
            f2_local0[3] = 15
            f2_local0[15] = 10
            f2_local0[22] = 10
            f2_local0[25] = 30
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                f2_local0[4] = 10
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[23] = 10
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                f2_local0[2] = 30
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                f2_local0[17] = 40
            else
                f2_local0[16] = 40
            end
        elseif f2_local3 < 5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 130) then
                f2_local0[1] = 30
                f2_local0[4] = 10
                f2_local0[7] = 20
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    f2_local0[6] = 20
                    f2_local0[24] = 30
                end
            else
                f2_local0[15] = 10
                f2_local0[22] = 15
                if f2_local3 > -2 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 110) then
                    f2_local0[21] = 40
                end
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                    f2_local0[5] = 20
                end
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    f2_local0[17] = 40
                else
                    f2_local0[16] = 40
                end
            end
        elseif f2_local3 < 15 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 130) then
                f2_local0[1] = 30
                f2_local0[4] = 10
                f2_local0[7] = 20
                if f2_local3 < 11 then
                    f2_local0[26] = 50
                end
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                    f2_local0[23] = 20
                end
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                    f2_local0[6] = 20
                    f2_local0[24] = 30
                end
            else
                f2_local0[44] = 50
                if f2_local3 < 10 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_BR, 110) then
                    f2_local0[21] = 40
                end
            end
        elseif f2_local3 < 9999 then
            if f2_local3 > 15 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 180, 40) then
                f2_local0[14] = 50
                f2_local0[45] = 25
                f2_local0[46] = 25
            else
                f2_local0[42] = 100
            end
        else
            f2_local0[42] = 100
        end
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 20) then
            f2_local0[8] = 10000
            f2_local0[11] = 999999
        end
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 40) then
            f2_local0[9] = 10000
            f2_local0[13] = 999999
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14852) == false then
        f2_local0[8] = 0
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14853) == false then
        f2_local0[9] = 0
        f2_local0[13] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 18938) then
        f2_local0[13] = 0
        f2_local0[11] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14850) == false then
        f2_local0[13] = 0
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14850) == false then
        f2_local0[23] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18937) then
        f2_local0[8] = 0
        f2_local0[9] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14876) then
        f2_local0[5] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[15] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18936) and arg1:HasSpecialEffectId(TARGET_SELF, 18941) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14886) == false then
        f2_local0[14] = 0
        f2_local0[4] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14886) and arg1:GetHpRate(TARGET_SELF) < 0.85 then
        f2_local0[29] = 999999
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14878) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 35) and arg1:GetHpRate(TARGET_SELF) < 0.6 then
            f2_local0[27] = 1000
        end
        f2_local0[28] = 1000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18935) then
        f2_local0[5] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    if arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 10) == false then

    else

    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[2], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3014, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[7], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3034, 5, f2_local0[24], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3009, 60 + arg1:GetRandam_Int(0, 5), f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 60 + arg1:GetRandam_Int(0, 5), f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 120 + arg1:GetRandam_Int(0, 5), f2_local0[5], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18941) == false then
        f2_local0[14] = SetCoolTime(arg1, arg2, 3022, 60 + arg1:GetRandam_Int(0, 5), f2_local0[14], 0)
    end
    f2_local0[15] = SetCoolTime(arg1, arg2, 3028, 60 + arg1:GetRandam_Int(0, 5), f2_local0[15], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3012, 90 + arg1:GetRandam_Int(0, 5), f2_local0[22], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3013, 20 + arg1:GetRandam_Int(0, 5), f2_local0[23], 0)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3001, 20, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3037, 40, f2_local0[27], 0)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3038, 60, f2_local0[28], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3021, 15, f2_local0[9], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[11], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[13], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act29)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act46)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_Act48)
    local f2_local8 = REGIST_FUNC(arg1, arg2, GuardianDescendant451000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function GuardianDescendant451000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 7
    local f3_local3 = 0
    local f3_local4 = 999
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    local f3_local8 = 3
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3.5
    local f3_local11 = 0
    local f3_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 5
    local f4_local3 = 0
    local f4_local4 = 999
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    local f4_local8 = 3
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3002
    local f4_local10 = 3.5
    local f4_local11 = 0
    local f4_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 3009
    local f5_local3 = 3.5
    local f5_local4 = 0
    local f5_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 3010
    local f6_local3 = 3.5
    local f6_local4 = 0
    local f6_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 3011
    local f7_local3 = 3.5
    local f7_local4 = 0
    local f7_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local2, TARGET_ENE_0, f7_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 5
    local f8_local3 = 0
    local f8_local4 = 999
    local f8_local5 = 0
    local f8_local6 = 0
    local f8_local7 = 3
    local f8_local8 = 3
    Approach_Act_Flex(arg0, arg1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7, f8_local8)
    local f8_local9 = 3014
    local f8_local10 = 3.5
    local f8_local11 = 0
    local f8_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local9, TARGET_ENE_0, f8_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 6
    local f9_local3 = 0
    local f9_local4 = 999
    local f9_local5 = 0
    local f9_local6 = 0
    local f9_local7 = 3
    local f9_local8 = 3
    Approach_Act_Flex(arg0, arg1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7, f9_local8)
    local f9_local9 = 3015
    local f9_local10 = 3.5
    local f9_local11 = 0
    local f9_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local9, TARGET_ENE_0, f9_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 10
    local f10_local3 = 0
    local f10_local4 = 999
    local f10_local5 = 0
    local f10_local6 = 0
    local f10_local7 = 3
    local f10_local8 = 3
    Approach_Act_Flex(arg0, arg1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7, f10_local8)
    local f10_local9 = 3016
    local f10_local10 = 3.5
    local f10_local11 = 0
    local f10_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local9, TARGET_ENE_0, f10_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 3017
    local f11_local3 = 3.5
    local f11_local4 = 0
    local f11_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local2, TARGET_ENE_0, f11_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 3018
    local f12_local3 = 3.5
    local f12_local4 = 0
    local f12_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local2, TARGET_ENE_0, f12_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 3029
    local f13_local3 = 3019
    local f13_local4 = 50
    local f13_local5 = 0
    local f13_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14878) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local2, TARGET_ENE_0, f13_local4, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local3, TARGET_ENE_0, f13_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 3020
    local f14_local3 = 3.5
    local f14_local4 = 0
    local f14_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local2, TARGET_ENE_0, f14_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 3029
    local f15_local3 = 3021
    local f15_local4 = 50
    local f15_local5 = 0
    local f15_local6 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14878) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local2, TARGET_ENE_0, f15_local4, 0, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local3, TARGET_ENE_0, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 3022
    local f16_local3 = 3.5
    local f16_local4 = 5
    local f16_local5 = 60
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local2, TARGET_ENE_0, f16_local3, f16_local4, f16_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 3028
    local f17_local3 = 3.5
    local f17_local4 = 0
    local f17_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = 3031
    local f18_local3 = 3.5
    local f18_local4 = 0
    local f18_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local2, TARGET_ENE_0, f18_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 3033
    local f19_local3 = 3.5
    local f19_local4 = 0
    local f19_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local2, TARGET_ENE_0, f19_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetRandam_Int(1, 100)
    local f20_local2 = 7
    local f20_local3 = 0
    local f20_local4 = 999
    local f20_local5 = 0
    local f20_local6 = 0
    local f20_local7 = 3.5
    local f20_local8 = 3.5
    Approach_Act_Flex(arg0, arg1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6, f20_local7, f20_local8)
    local f20_local9 = 3032
    local f20_local10 = 3.5
    local f20_local11 = 0
    local f20_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local9, TARGET_ENE_0, f20_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act19(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    local f21_local1 = 3004
    local f21_local2 = 999
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, f21_local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3034, TARGET_ENE_0, f21_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Int(1, 100)
    local f22_local2 = 3030
    local f22_local3 = 3.5
    local f22_local4 = 0
    local f22_local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 14850) then
        f22_local2 = 3029
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 14878) then
        f22_local2 = 3038
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local2, TARGET_ENE_0, f22_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act21(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = 3036
    local f23_local3 = 3.5
    local f23_local4 = 0
    local f23_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local2, TARGET_ENE_0, f23_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act22(arg0, arg1, arg2)
    local f24_local0 = 3012
    local f24_local1 = 999
    local f24_local2 = 0
    local f24_local3 = 60
    if arg0:GetStringIndexedNumber("isCombo") == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local0, TARGET_ENE_0, f24_local1, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f24_local0, TARGET_ENE_0, f24_local1, 0, 0, 0)
    end
    local f24_local4 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14852) and arg0:HasSpecialEffectId(TARGET_SELF, 18937) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, f24_local1, 0, 0, f24_local3)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14853) and arg0:HasSpecialEffectId(TARGET_SELF, 18937) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, f24_local1, 0, 0, f24_local3)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 18936) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, f24_local1, 0, 0, f24_local3)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 18936) and f24_local4 < 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, f24_local1, 0, 0, f24_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = 20
    local f25_local3 = 0
    local f25_local4 = 999
    local f25_local5 = 0
    local f25_local6 = 0
    local f25_local7 = 1.5
    local f25_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6, f25_local7, f25_local8)
    local f25_local9 = 3013
    local f25_local10 = 3.5
    local f25_local11 = 0
    local f25_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f25_local9, TARGET_ENE_0, f25_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act24(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = 7
    local f26_local3 = 0
    local f26_local4 = 999
    local f26_local5 = 0
    local f26_local6 = 0
    local f26_local7 = 3.5
    local f26_local8 = 3.5
    Approach_Act_Flex(arg0, arg1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7, f26_local8)
    local f26_local9 = 3034
    local f26_local10 = 3.5
    local f26_local11 = 0
    local f26_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local9, TARGET_ENE_0, f26_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act25(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    local f27_local2 = 3001
    local f27_local3 = 3.5
    local f27_local4 = 0
    local f27_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local2, TARGET_ENE_0, f27_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = arg0:GetRandam_Int(1, 100)
    local f28_local2 = 7
    local f28_local3 = 0
    local f28_local4 = 999
    local f28_local5 = 0
    local f28_local6 = 0
    local f28_local7 = 3.5
    local f28_local8 = 3.5
    Approach_Act_Flex(arg0, arg1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8)
    local f28_local9 = 3004
    local f28_local10 = 3.5
    local f28_local11 = 0
    local f28_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local9, TARGET_ENE_0, f28_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act27(arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = arg0:GetRandam_Int(1, 100)
    local f29_local2 = 20
    local f29_local3 = 0
    local f29_local4 = 999
    local f29_local5 = 0
    local f29_local6 = 0
    local f29_local7 = 3.5
    local f29_local8 = 3.5
    Approach_Act_Flex(arg0, arg1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6, f29_local7, f29_local8)
    local f29_local9 = 3037
    local f29_local10 = 3.5
    local f29_local11 = 0
    local f29_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f29_local9, TARGET_ENE_0, f29_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act28(arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = arg0:GetRandam_Int(1, 100)
    local f30_local2 = 20
    local f30_local3 = 0
    local f30_local4 = 999
    local f30_local5 = 0
    local f30_local6 = 0
    local f30_local7 = 3.5
    local f30_local8 = 3.5
    Approach_Act_Flex(arg0, arg1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7, f30_local8)
    local f30_local9 = 3038
    local f30_local10 = 3.5
    local f30_local11 = 0
    local f30_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f30_local9, TARGET_ENE_0, f30_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act29(arg0, arg1, arg2)
    local f31_local0 = 20001
    local f31_local1 = 3.5
    local f31_local2 = 0
    local f31_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local1, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 10, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 5, TARGET_ENE_0, 6, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act44(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 10, TARGET_ENE_0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 5, TARGET_ENE_0, 8, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBL, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachAround, 5, TARGET_ENE_0, 8, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBR, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GuardianDescendant451000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_GuardianDescendant451000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f43_local0 = arg1:GetRandam_Int(1, 100)
    local f43_local1 = arg1:GetRandam_Int(1, 100)
    local f43_local2 = arg1:GetDist(TARGET_ENE_0)
    local f43_local3 = arg1:GetHpRate(TARGET_SELF)
    local f43_local4 = arg1:GetRandam_Int(0, 10)
    local f43_local5 = arg1:GetRandam_Int(0, 5)
    arg1:SetStringIndexedNumber("isCombo", 1)
    local f43_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 0 + arg1:GetMapHitRadius(TARGET_SELF))
    if not f43_local6 then
        f43_local6 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 120, 4)
    end
    local f43_local7 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 1 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local8 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 1 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local9 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 120, 11 + arg1:GetMapHitRadius(TARGET_SELF))
    if f43_local9 then
        f43_local9 = arg1:GetAttackPassedTime(3004) > 15
    end
    local f43_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 5 + arg1:GetMapHitRadius(TARGET_SELF))
    if not f43_local10 then
        f43_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 120, -3 + arg1:GetMapHitRadius(TARGET_SELF))
        if not f43_local10 then
            f43_local10 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 120, -4 + arg1:GetMapHitRadius(TARGET_SELF))
        end
    end
    local f43_local11 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 120, 5 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local12 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 20 + arg1:GetMapHitRadius(TARGET_SELF))
    if f43_local12 then
        f43_local12 = arg1:GetAttackPassedTime(3013) > 20
    end
    local f43_local13 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 7 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local14 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 6 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local15 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 120, -2 + arg1:GetMapHitRadius(TARGET_SELF))
    if f43_local15 then
        f43_local15 = arg1:GetAttackPassedTime(3031) > 10
    end
    local f43_local16 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 9 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local17 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 120, -2 + arg1:GetMapHitRadius(TARGET_SELF))
    if f43_local17 then
        f43_local17 = arg1:GetAttackPassedTime(3033) > 10
    end
    local f43_local18 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 120, 9 + arg1:GetMapHitRadius(TARGET_SELF))
    local f43_local19 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 120, 15 + arg1:GetMapHitRadius(TARGET_SELF))
    if f43_local19 then
        f43_local19 = arg1:HasSpecialEffectId(TARGET_SELF, 18937) == false
    end
    if f43_local10 == true then
        arg1:SetNumber(15, 15)
    else
        arg1:SetNumber(15, 0)
    end
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then

    else

    end
    if (arg1:HasSpecialEffectId(TARGET_SELF, 18936) == false or arg1:HasSpecialEffectId(TARGET_SELF, 14886) == true) and arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 14860) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14861) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14866) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14867) or arg1:HasSpecialEffectId(TARGET_SELF, 18920) then
            if f43_local10 == true and arg1:GetAttackPassedTime(3010) >= 10 and arg1:HasSpecialEffectId(TARGET_SELF, 14886) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif f43_local10 == true and f43_local0 > 60 and arg1:GetAttackPassedTime(3010) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.6 and (not not arg1:HasSpecialEffectId(TARGET_SELF, 18921) or arg1:HasSpecialEffectId(TARGET_SELF, 18923)) then
            if f43_local10 == true and arg1:GetAttackPassedTime(3010) >= 10 and arg1:HasSpecialEffectId(TARGET_SELF, 14886) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif f43_local10 == true and f43_local0 > 60 and arg1:GetAttackPassedTime(3010) >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18935) == false and arg1:GetHpRate(TARGET_SELF) < 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 14850) and arg1:HasSpecialEffectId(TARGET_SELF, 14876) == false and arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:HasSpecialEffectId(TARGET_SELF, 14860) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14861) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14866) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14867) or not not arg1:HasSpecialEffectId(TARGET_SELF, 18920) or not not arg1:HasSpecialEffectId(TARGET_SELF, 18921) or not not arg1:HasSpecialEffectId(TARGET_SELF, 18922) or arg1:HasSpecialEffectId(TARGET_SELF, 18923)) and f43_local12 == true and f43_local0 > 50 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 10, 0, 0, 0)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18935) == false and arg1:GetHpRate(TARGET_SELF) < 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 14876) == false and arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 14860) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14861) or not not arg1:HasSpecialEffectId(TARGET_SELF, 14867) or arg1:HasSpecialEffectId(TARGET_SELF, 18920) then
            if f43_local11 == true and f43_local0 > 40 then
                arg2:ClearSubGoal()
                GuardianDescendant451000_Act22(arg1, arg2)
                return true
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 18921) and f43_local11 == true and f43_local0 > 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14860) then
        if f43_local6 == true and arg1:GetAttackPassedTime(3001) > 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local8 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14861) then
        if f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local8 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local19 == true and arg1:HasSpecialEffectId(TARGET_SELF, 14852) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local19 == true and arg1:HasSpecialEffectId(TARGET_SELF, 14853) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local9 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14862) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14863) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14866) then
        if f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local16 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3032, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14867) then
        if f43_local6 == true and arg1:GetAttackPassedTime(3001) > 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local9 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 18920) then
        if f43_local15 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 18921) and arg1:GetHpRate(TARGET_SELF) < 0.6 then
        if f43_local6 == true and arg1:GetAttackPassedTime(3001) > 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 18923) and arg1:GetHpRate(TARGET_SELF) < 0.6 then
        if f43_local7 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local15 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local17 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local14 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif f43_local18 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 18924) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14864) then
        if f43_local2 < 13 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14865) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 50) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 50) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_GuardianDescendant451000_AfterAttackAct, "GuardianDescendant451000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_GuardianDescendant451000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f44_local0 = arg1:GetDist(TARGET_ENE_0)
    local f44_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f44_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f44_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


