RegisterTableGoal(GOAL_ProlificRenala203100_Battle, "ProlificRenala203100_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203100_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("MoonPosibleFlg")
    arg1:GetStringIndexedNumber("Warp_Cnt")
    arg1:SetStringIndexedNumber("BackStepFlg", 0)
    arg1:SetStringIndexedNumber("MoonPosibleFlg", 0)
    arg1:SetStringIndexedNumber("Warp_Cnt", 0)
    
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
    arg1:SetStringIndexedNumber("MoonPosibleFlg", 0)
    if arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_FL, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_FR, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BL, 2) == true and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BR, 2) == true then
        arg1:SetStringIndexedNumber("MoonPosibleFlg", 1)
    end
    if arg1:GetStringIndexedNumber("BackStepFlg") == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 14590) == false then
        arg1:SetStringIndexedNumber("BackStepFlg", 0)
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if arg1:IsEventFlag(14003970) and not arg1:IsEventFlag(14003971) and arg1:HasSpecialEffectId(TARGET_SELF, 14590) then
        if arg1:GetStringIndexedNumber("BackStepFlg") == 0 then
            f2_local0[43] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            f2_local0[47] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:IsEventFlag(14003920) and not arg1:IsEventFlag(14003921) and arg1:HasSpecialEffectId(TARGET_SELF, 14590) then
        if arg1:GetStringIndexedNumber("BackStepFlg") == 0 then
            f2_local0[43] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            f2_local0[47] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:IsEventFlag(14003960) and not arg1:IsEventFlag(14003961) and arg1:HasSpecialEffectId(TARGET_SELF, 14590) then
        if arg1:GetStringIndexedNumber("BackStepFlg") == 0 then
            f2_local0[43] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            f2_local0[47] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:IsEventFlag(14003935) and not arg1:IsEventFlag(14003936) and arg1:HasSpecialEffectId(TARGET_SELF, 14590) then
        if arg1:GetStringIndexedNumber("BackStepFlg") == 0 then
            f2_local0[43] = 100
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 80, -1, 999) then
            f2_local0[47] = 100
        else
            f2_local0[42] = 100
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 20 then
            if arg1:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[16] = 10
            else
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[16] = 10
            end
            f2_local0[26] = 80
            f2_local0[28] = 80
            f2_local0[25] = 30
            f2_local0[27] = 30
        elseif f2_local3 > 10 then
            if arg1:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                f2_local0[1] = 20
                f2_local0[2] = 15
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 40
                f2_local0[9] = 15
                f2_local0[16] = 10
            else
                f2_local0[1] = 25
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[9] = 15
                f2_local0[16] = 10
            end
            f2_local0[26] = 80
            f2_local0[28] = 80
            f2_local0[25] = 30
            f2_local0[27] = 30
        elseif f2_local3 > 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5032) and arg1:GetTimer(0) <= 0 and f2_local4 < 80 then
                arg1:SetTimer(0, 10)
                f2_local0[12] = 70
                f2_local0[15] = 30
            else
                if arg1:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                    f2_local0[5] = 50
                end
                f2_local0[4] = 10
                f2_local0[8] = 45
                f2_local0[9] = 30
                f2_local0[26] = 30
                f2_local0[28] = 30
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) and f2_local4 < 50 then
            f2_local0[12] = 15
            f2_local0[13] = 80
            f2_local0[20] = 5
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) and f2_local4 < 50 then
            f2_local0[12] = 50
            f2_local0[13] = 30
            f2_local0[20] = 5
        else
            f2_local0[12] = 20
            f2_local0[13] = 50
            f2_local0[20] = 30
            f2_local0[25] = 160
            f2_local0[26] = 200
            f2_local0[27] = 200
            f2_local0[28] = 200
            if arg1:GetHpRate(TARGET_SELF) > 0.6 and arg1:GetStringIndexedNumber("MoonPosibleFlg") == 1 then
                f2_local0[5] = 100
            end
        end
    else
        f2_local0[42] = 100
    end
    f2_local0[21] = 0
    if arg1:IsEventFlag(14003970) then
        f2_local0[25] = 0
    end
    if arg1:IsEventFlag(14003920) then
        f2_local0[26] = 0
    end
    if arg1:IsEventFlag(14003960) then
        f2_local0[27] = 0
    end
    if arg1:IsEventFlag(14003935) then
        f2_local0[28] = 0
    end
    if arg1:GetTimer(2) > 0 then
        f2_local0[25] = 0
        f2_local0[26] = 0
        f2_local0[27] = 0
        f2_local0[28] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.6 then
        f2_local0[25] = 0
        f2_local0[26] = 0
        f2_local0[27] = 0
        f2_local0[28] = 0
    end
    if arg1:GetNumber(1) == 0 then
        f2_local0[41] = 1000000
        arg1:SetNumber(1, 1)
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 16, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 16, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 16, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3005, 40, f2_local0[5], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[8], 10)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[9], 5)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[12], 5)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[13], 5)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[15], 5)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3019, 15, f2_local0[15], 5)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3007, 20, f2_local0[16], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3016, 45, f2_local0[21], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3030, 90, f2_local0[25], 0)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3031, 60, f2_local0[26], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3032, 70, f2_local0[27], 0)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3033, 60, f2_local0[28], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act05)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act09)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act16)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act22)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, ProlificRenala203100_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, ProlificRenala203100_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function ProlificRenala203100_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local0 = 4
    local f3_local1 = 3000
    local f3_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 0
    local f3_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local0, f3_local1, TARGET_ENE_0, f3_local2, f3_local3, f3_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local0 = 4
    local f4_local1 = 3001
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local0 = 4
    local f5_local1 = 3002
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 0
    local f5_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local0, f5_local1, TARGET_ENE_0, f5_local2, f5_local3, f5_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f6_local0 = 4
    local f6_local1 = 3003
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f7_local0 = 4
    local f7_local1 = 3005
    local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f8_local0 = 4
    local f8_local1 = 3008
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f9_local0 = 4
    local f9_local1 = 3009
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 0
    local f9_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local0, f9_local1, TARGET_ENE_0, f9_local2, f9_local3, f9_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act12(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f10_local7 = 4
    local f10_local8 = 3018
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act13(arg0, arg1, arg2)
    local f11_local0 = 6
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 2
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f11_local7 = 4
    local f11_local8 = 3013
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act14(arg0, arg1, arg2)
    local f12_local0 = 5
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local f12_local7 = 4
    local f12_local8 = 3010
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act15(arg0, arg1, arg2)
    local f13_local0 = 10
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 999) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f13_local7 = 4
        local f13_local8 = 3014
        local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local10 = 0
        local f13_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f13_local7 = 4
        local f13_local8 = 3019
        local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f13_local10 = 0
        local f13_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function ProlificRenala203100_Act16(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f14_local0 = 15
    local f14_local1 = 3007
    local f14_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local0, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act20(arg0, arg1, arg2)
    if arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 4) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f15_local0 = 10
        local f15_local1 = 3015
        local f15_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f15_local3 = 0
        local f15_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        local f15_local0 = 10
        local f15_local1 = 3016
        local f15_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f15_local3 = 0
        local f15_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function ProlificRenala203100_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local f16_local0 = 10
    local f16_local1 = 3016
    local f16_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 0
    local f16_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act22(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f17_local0 = 10
    local f17_local1 = 3029
    local f17_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act25(arg0, arg1, arg2)
    arg0:SetTimer(2, 15)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f18_local0 = 20
    local f18_local1 = 3030
    local f18_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 0
    local f18_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act26(arg0, arg1, arg2)
    arg0:SetTimer(2, 15)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f19_local0 = 20
    local f19_local1 = 3031
    local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 0
    local f19_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act27(arg0, arg1, arg2)
    arg0:SetTimer(2, 15)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14586)
    local f20_local0 = 20
    local f20_local1 = 3032
    local f20_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 0
    local f20_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, TARGET_ENE_0, f20_local2, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act28(arg0, arg1, arg2)
    arg0:SetTimer(2, 15)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f21_local0 = 20
    local f21_local1 = 3033
    local f21_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, TARGET_ENE_0, f21_local2, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act30(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f22_local0 = 4
    local f22_local1 = 3031
    local f22_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local3 = 0
    local f22_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, TARGET_ENE_0, f22_local2, f22_local3, f22_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act31(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f23_local0 = 4
    local f23_local1 = 3026
    local f23_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, f23_local1, TARGET_ENE_0, f23_local2, f23_local3, f23_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act40(arg0, arg1, arg2)
    local f24_local0 = 2
    local f24_local1 = 2
    local f24_local2 = true
    local f24_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local0, TARGET_ENE_0, f24_local1, TARGET_SELF, f24_local2, f24_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act41(arg0, arg1, arg2)
    local f25_local0 = 3
    local f25_local1 = 20
    local f25_local2 = true
    local f25_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, f25_local2, f25_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(15, 20), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act43(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("BackStepFlg", 1)
    local f27_local0 = 20
    local f27_local1 = 6001
    local f27_local2 = TARGET_ENE_0
    local f27_local3 = 0
    local f27_local4 = AI_DIR_TYPE_R
    local f27_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act44(arg0, arg1, arg2)
    local f28_local0 = arg0:GetRandam_Int(0, 1)
    local f28_local1 = 3.5
    local f28_local2 = TARGET_ENE_0
    local f28_local3 = f28_local0
    local f28_local4 = 15
    local f28_local5 = true
    local f28_local6 = -1
    local f28_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, isLifeSuccess, f28_local6, f28_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act45(arg0, arg1, arg2)
    local f29_local0 = 6
    local f29_local1 = 15
    local f29_local2 = true
    local f29_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local0, TARGET_ENE_0, f29_local1, TARGET_SELF, f29_local2, f29_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act46(arg0, arg1, arg2)
    local f30_local0 = 3
    local f30_local1 = TARGET_ENE_0
    local f30_local2 = 8
    local f30_local3 = TARGET_ENE_0
    local f30_local4 = true
    local f30_local5 = -1
    local f30_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f30_local7 = false
    local f30_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7, f30_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_Act47(arg0, arg1, arg2)
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 1.5) and arg0:GetDist(TARGET_ENE_0) <= 8 then
        local f31_local0 = 3
        local f31_local1 = TARGET_ENE_0
        local f31_local2 = 8
        local f31_local3 = TARGET_ENE_0
        local f31_local4 = true
        local f31_local5 = -1
        local f31_local6 = GUARD_GOAL_DESIRE_RET_Failed
        local f31_local7 = false
        local f31_local8 = 1
        arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7, f31_local8)
    else
        local f31_local0 = arg0:GetRandam_Int(0, 1)
        local f31_local1 = 3.5
        local f31_local2 = TARGET_ENE_0
        local f31_local3 = f31_local0
        local f31_local4 = 100
        local f31_local5 = true
        local f31_local6 = -1
        local f31_local7 = GUARD_GOAL_DESIRE_RET_Failed
        local f31_local8 = true
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, isLifeSuccess, f31_local6, f31_local7)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ProlificRenala203100_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ProlificRenala203100_AfterAttackAct, 10)
    
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
    local f35_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 20
    local f35_local3 = arg1:GetDist(TARGET_ENE_0)
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 300, -1, 999) and arg1:GetTimer(1) <= 0 and f35_local4 < 30 and f35_local3 < 5 then
        arg1:SetTimer(1, 10)
        arg2:ClearSubGoal()
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 4, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 50) and f35_local3 > 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:SetStringIndexedNumber("Warp_Cnt", arg1:GetStringIndexedNumber("Warp_Cnt") + 1)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 20) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, -1, 999) and arg1:GetRemainingAttackCoolTime(3007) <= 0 and f35_local3 > 15 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 6, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        else
            local f35_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 14586)
            if f35_local5 then
                f35_local5 = 5
                local f35_local6 = 0
                arg2:ClearSubGoal()
                if arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BR, f35_local5 + 1) then
                    f35_local6 = 13
                elseif arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_BL, f35_local5 + 1) then
                    f35_local6 = 12
                elseif arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f35_local5 + 1) then
                    f35_local6 = 4
                elseif arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f35_local5 + 1) then
                    f35_local6 = 3
                elseif arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, f35_local5 + 1) then
                    f35_local6 = 2
                else
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, POINT_INITIAL, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
                    return true
                end
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 5, TARGET_SELF, f35_local6, 5, TARGET_ENE_0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_ProlificRenala203100_AfterAttackAct, "ProlificRenala203100_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ProlificRenala203100_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


