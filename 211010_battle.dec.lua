RegisterTableGoal(GOAL_BlackSwordMariques211010_Battle, "BlackSwordMariques211010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("WallGrapple_Flg", 0)
    arg1:SetStringIndexedNumber("WallDoesExist", 0)
    arg1:SetStringIndexedNumber("Disenchant_Cnt", 0)
    arg1:SetStringIndexedNumber("Wait_Cnt", 0)
    arg1:SetStringIndexedNumber("isCombo", 0)
    arg1:SetNumber(0, 0)
    
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
    arg1:SetStringIndexedNumber("isCombo", 0)
    if arg1:IsEventFlag(13002822) == true or arg1:IsEventFlag(13002823) == true or arg1:IsEventFlag(13002824) == true then
        arg1:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        arg1:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    if arg1:GetStringIndexedNumber("Disenchant_Cnt") > 0 and arg1:HasSpecialEffectId(TARGET_SELF, 15253) then
        arg1:SetStringIndexedNumber("Disenchant_Cnt", 0)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15254) then
        arg1:SetStringIndexedNumber("Disenchant_Cnt", arg1:GetStringIndexedNumber("Disenchant_Cnt") + 1)
    end
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15299) then
            f2_local0[22] = 50
        else
            f2_local0[21] = 50
            f2_local0[22] = 50
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15270) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) == false then
        f2_local0[26] = 10000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15299) and arg1:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        f2_local0[23] = 10000
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(0) <= 0 and arg1:GetStringIndexedNumber("WallGrapple_Flg") == 1 then
        f2_local0[23] = 30
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 15 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15252) then
                f2_local0[1] = 30
                f2_local0[18] = 30
                f2_local0[5] = 30
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[13] = 90
                end
            else
                f2_local0[1] = 30
                f2_local0[18] = 30
                f2_local0[5] = 30
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[13] = 30
                end
            end
        elseif f2_local3 > 6 then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 15252) or arg1:HasSpecialEffectId(TARGET_SELF, 15252) then
                f2_local0[1] = 20
                f2_local0[18] = 20
                f2_local0[14] = 25
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[15] = 40
                end
            else
                f2_local0[1] = 25
                f2_local0[18] = 25
                f2_local0[5] = 35
                f2_local0[14] = 30
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[15] = 25
                end
            end
        elseif f2_local3 > 4 then
            f2_local0[1] = 30
            f2_local0[18] = 30
            f2_local0[5] = 25
            f2_local0[14] = 20
            if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                f2_local0[7] = 15
                f2_local0[15] = 10
            end
        elseif f2_local3 > 1.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[14] = 30
                f2_local0[20] = 20
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[15] = 10
                    f2_local0[7] = 20
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[14] = 30
                f2_local0[17] = 30
                f2_local0[20] = 20
                if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                    f2_local0[15] = 20
                    f2_local0[7] = 10
                end
            end
        elseif f2_local3 > -2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 60) then
                    f2_local0[4] = 0
                    f2_local0[5] = 10
                    f2_local0[6] = 50
                    f2_local0[17] = 50
                    f2_local0[19] = 25
                    f2_local0[20] = 20
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[7] = 20
                    end
                else
                    f2_local0[4] = 0
                    f2_local0[5] = 45
                    f2_local0[6] = 0
                    f2_local0[17] = 50
                    f2_local0[19] = 25
                    f2_local0[20] = 20
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[7] = 35
                    end
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 60) then
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[17] = 50
                    f2_local0[19] = 25
                    f2_local0[20] = 20
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[15] = 20
                    end
                else
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[17] = 50
                    f2_local0[19] = 25
                    f2_local0[20] = 20
                    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                        f2_local0[15] = 35
                    end
                end
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 30
            f2_local0[17] = 30
            f2_local0[19] = 25
            f2_local0[20] = 30
            if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                f2_local0[7] = 25
                f2_local0[15] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[6] = 35
            f2_local0[17] = 50
            f2_local0[19] = 25
            f2_local0[20] = 35
            if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                f2_local0[15] = 30
            end
        end
    elseif f2_local3 < 0 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[6] = 80
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[17] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[42] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 0
    end
    if arg1:GetNumber(0) == 0 then
        arg1:SetNumber(0, 1)
        f2_local0[1] = 100000
    end
    if arg1:GetHpRate(TARGET_SELF) <= 0.7 and arg1:GetTimer(2) <= 0 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 120) and f2_local3 <= 5 then
        f2_local0[25] = 60
    end
    f2_local0[20] = 0
    f2_local0[1] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3026, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3027, 15, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3032, 60, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3033, 45, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3034, 60, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3029, 30, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3023, 15, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3035, 20, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3035, 15, f2_local0[15], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3003, 16, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3036, 60, f2_local0[20], 1)
    f2_local0[44] = SetCoolTime(arg1, arg2, 2002, 30, f2_local0[44], 0)
    f2_local0[44] = SetCoolTime(arg1, arg2, 2003, 30, f2_local0[44], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act26)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_Act46)
    local f2_local7 = REGIST_FUNC(arg1, arg2, BlackSwordMariques211010_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function BlackSwordMariques211010_Act01(arg0, arg1, arg2)
    local f3_local0 = 10
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 5
    local f3_local6 = 5
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f3_local7 = 10
    local f3_local8 = 3016
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act02(arg0, arg1, arg2)
    local f4_local0 = 10
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 5
    local f4_local6 = 5
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f4_local7 = 10
    local f4_local8 = 3021
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act03(arg0, arg1, arg2)
    local f5_local0 = 8
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 5
    local f5_local6 = 5
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f5_local7 = 20
    local f5_local8 = 3022
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f6_local0 = 10
    local f6_local1 = 3026
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f7_local0 = 15
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 5
    local f7_local6 = 5
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 10
    local f7_local8 = 3027
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f8_local0 = 10
    local f8_local1 = 3028
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act07(arg0, arg1, arg2)
    local f9_local0 = 20
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 5
    local f9_local6 = 5
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f9_local7 = 10
    local f9_local8 = 3031
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act08(arg0, arg1, arg2)
    local f10_local0 = 25
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 5
    local f10_local6 = 5
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f10_local7 = 10
    local f10_local8 = 3032
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act09(arg0, arg1, arg2)
    local f11_local0 = 20
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 5
    local f11_local6 = 5
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f11_local7 = 10
    local f11_local8 = 3033
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local7, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act10(arg0, arg1, arg2)
    local f12_local0 = 11
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 5
    local f12_local6 = 5
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f12_local7 = 10
    local f12_local8 = 3034
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act11(arg0, arg1, arg2)
    local f13_local0 = 8.5
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 5
    local f13_local6 = 5
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f13_local7 = 10
    local f13_local8 = 3029
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act12(arg0, arg1, arg2)
    local f14_local0 = 17
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 5
    local f14_local6 = 5
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f14_local7 = 10
    local f14_local8 = 3023
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act13(arg0, arg1, arg2)
    local f15_local0 = 20
    local f15_local1 = 0
    local f15_local2 = 999
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 5
    local f15_local6 = 5
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15256)
    local f15_local7 = 10
    local f15_local8 = 3035
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local7, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act14(arg0, arg1, arg2)
    local f16_local0 = 10
    local f16_local1 = 0
    local f16_local2 = 999
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 5
    local f16_local6 = 5
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:SetTimer(1, 20)
    local f16_local7 = 10
    local f16_local8 = 3025
    local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local7, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15255)
    local f17_local0 = 10
    local f17_local1 = 3030
    local f17_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act16(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f18_local0 = 20
    local f18_local1 = 3033
    local f18_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 0
    local f18_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local0, f18_local1, TARGET_ENE_0, f18_local2, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act17(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f19_local0 = 20
    local f19_local1 = 3003
    local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 0
    local f19_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act18(arg0, arg1, arg2)
    local f20_local0 = 8
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 5
    local f20_local6 = 5
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f20_local7 = 10
    local f20_local8 = 3001
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local7, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act19(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15258)
    local f21_local0 = 20
    local f21_local1 = 3000
    local f21_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, TARGET_ENE_0, f21_local2, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f22_local0 = 15
    local f22_local1 = 3036
    local f22_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local3 = 0
    local f22_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local0, f22_local1, TARGET_SELF, f22_local2, f22_local3, f22_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act21(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        arg0:SetTimer(0, 15)
    end
    arg0:SetStringIndexedNumber("Wait_Cnt", 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f23_local0 = 10
    local f23_local1 = 3037
    local f23_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, f23_local1, TARGET_ENE_0, f23_local2, f23_local3, f23_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act22(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        arg0:SetTimer(0, 20)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f24_local0 = 10
    local f24_local1 = 3038
    local f24_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local3 = 0
    local f24_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local0, f24_local1, TARGET_ENE_0, f24_local2, f24_local3, f24_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act23(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 15299) == false then
        arg0:SetTimer(0, 5)
    end
    local f25_local0 = 15
    local f25_local1 = 3036
    local f25_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local3 = 0
    local f25_local4 = 0
    if arg0:GetStringIndexedNumber("isCombo") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local0, f25_local1, POINT_EVENT, f25_local2, f25_local3, f25_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local0, f25_local1, POINT_EVENT, f25_local2, f25_local3, f25_local4, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act25(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f26_local0 = 10
    local f26_local1 = 3015
    local f26_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local3 = 0
    local f26_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f26_local0, f26_local1, TARGET_ENE_0, f26_local2, f26_local3, f26_local4, 0, 0)
    arg0:SetTimer(2, 30)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act26(arg0, arg1, arg2)
    local f27_local0 = 10
    local f27_local1 = 20006
    local f27_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 0
    local f27_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f27_local0, f27_local1, TARGET_ENE_0, f27_local2, f27_local3, f27_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act40(arg0, arg1, arg2)
    local f28_local0 = 3
    local f28_local1 = 14.8
    local f28_local2 = true
    local f28_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local0, TARGET_ENE_0, f28_local1, TARGET_SELF, f28_local2, f28_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act41(arg0, arg1, arg2)
    local f29_local0 = 2
    local f29_local1 = 8
    local f29_local2 = false
    local f29_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local0, TARGET_ENE_0, f29_local1, TARGET_SELF, f29_local2, f29_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(55, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act43(arg0, arg1, arg2)
    local f31_local0 = 1
    local f31_local1 = 0
    local f31_local2 = 100
    local f31_local3 = 0
    local f31_local4 = 0
    local f31_local5 = TARGET_ENE_0
    local f31_local6 = 1
    local f31_local7 = 0
    local f31_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7, f31_local8)
    local f31_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act44(arg0, arg1, arg2)
    local f32_local0 = arg0:GetRandam_Int(0, 1)
    local f32_local1 = 3.5
    local f32_local2 = TARGET_ENE_0
    local f32_local3 = f32_local0
    local f32_local4 = 100
    local f32_local5 = true
    local f32_local6 = -1
    local f32_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f32_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, isLifeSuccess, f32_local6, f32_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act45(arg0, arg1, arg2)
    local f33_local0 = 6
    local f33_local1 = 15
    local f33_local2 = true
    local f33_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f33_local0, TARGET_ENE_0, f33_local1, TARGET_SELF, f33_local2, f33_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_Act46(arg0, arg1, arg2)
    local f34_local0 = 3
    local f34_local1 = TARGET_ENE_0
    local f34_local2 = 8
    local f34_local3 = TARGET_ENE_0
    local f34_local4 = true
    local f34_local5 = -1
    local f34_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f34_local7 = false
    local f34_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f34_local0, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function BlackSwordMariques211010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackSwordMariques211010_AfterAttackAct, 10)
    
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
    local f38_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f38_local1 = 0
    local f38_local2 = 20
    local f38_local3 = arg1:GetDist(TARGET_ENE_0)
    local f38_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsEventFlag(13002822) == true or arg1:IsEventFlag(13002823) == true or arg1:IsEventFlag(13002824) == true then
        arg1:SetStringIndexedNumber("WallGrapple_Flg", 1)
    else
        arg1:SetStringIndexedNumber("WallGrapple_Flg", 0)
    end
    arg1:SetStringIndexedNumber("isCombo", 1)
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 15257) and arg1:GetTimer(4) <= 0 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        arg2:ClearSubGoal()
        if f38_local3 > 15 then
            Approach_Act_Flex(arg1, arg2, 13, 0, 999, 100, 0, 5, 5)
        end
        arg1:SetTimer(4, 5)
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1.5, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(0) <= 0 and arg1:GetStringIndexedNumber("WallGrapple_Flg") == 1 and (not not arg1:HasSpecialEffectId(TARGET_SELF, 15258) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5027) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5028) or arg1:HasSpecialEffectId(TARGET_SELF, 5032)) then
            arg2:ClearSubGoal()
            BlackSwordMariques211010_Act23(arg1, arg2)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetRemainingAttackCoolTime(3003) <= 0 and f38_local4 < 45 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 2.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 1 and arg1:GetTimer(1) <= 0 then
                arg1:SetTimer(1, 30)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f38_local3 < 1 then
                arg2:ClearSubGoal()
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 9 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) and arg1:GetTimer(3) <= 0 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_RF, 240, -1, 999 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 3 then
                arg1:SetTimer(3, 15)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > -0.5 then
                if f38_local4 < 10 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:GetHpRate(TARGET_SELF) <= 0.7 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 5 then
                arg1:SetTimer(2, 30)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 11 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 1 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(2) <= 0 and arg1:GetHpRate(TARGET_SELF) <= 0.7 then
                arg1:SetTimer(2, 30)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local3 > 1 and arg1:GetTimer(1) <= 0 then
                arg1:SetTimer(1, 20)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15255) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local4 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15256) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 9 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 13.3 + arg1:GetMapHitRadius(TARGET_SELF)) and f38_local4 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15258) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f38_local4 > 70 then

                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_BlackSwordMariques211010_AfterAttackAct, "BlackSwordMariques211010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSwordMariques211010_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


