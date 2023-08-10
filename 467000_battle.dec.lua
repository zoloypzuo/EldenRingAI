RegisterTableGoal(GOAL_Ancestor467000_Battle, "Ancestor467000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ancestor467000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("Warp_Cnt")
    arg1:GetStringIndexedNumber("Drain_Cnt")
    arg1:GetStringIndexedNumber("Charge_Flg")
    arg1:GetStringIndexedNumber("ChargeLR_Flg")
    arg1:SetStringIndexedNumber("Debug_Test_Flg", 0)
    arg1:SetStringIndexedNumber("Drain_Cnt", 0)
    arg1:SetStringIndexedNumber("Warp_Cnt", 0)
    arg1:SetStringIndexedNumber("Charge_Flg", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:GetStringIndexedNumber("Rolling_Cnt")
    arg1:GetStringIndexedNumber("Jumping_Cnt")
    arg1:GetStringIndexedNumber("AnimalActive_Flg")
    arg1:GetStringIndexedNumber("ActiveAnimalVariety_Cnt")
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = 1
    if arg1:HasSpecialEffectId(TARGET_SELF, 13622) then
        f2_local7 = 50
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13638) then
        arg1:SetStringIndexedNumber("Debug_Test_Flg", 1)
    else
        arg1:SetStringIndexedNumber("Debug_Test_Flg", 0)
    end
    if arg1:GetNumber(0) ~= 2 then
        arg1:SetNumber(0, 2)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 13636)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 13637)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13628)
    arg1:SetStringIndexedNumber("AnimalActive_Flg", 0)
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 13606) or not not arg1:HasSpecialEffectId(TARGET_SELF, 13607) or not not arg1:HasSpecialEffectId(TARGET_SELF, 13608) or arg1:HasSpecialEffectId(TARGET_SELF, 13609) then
        arg1:SetStringIndexedNumber("AnimalActive_Flg", 1)
        arg1:SetStringIndexedNumber("Warp_Cnt", arg1:GetStringIndexedNumber("Warp_Cnt") + 1)
    end
    arg1:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13606) then
        arg1:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", arg1:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13607) then
        arg1:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", arg1:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13608) then
        arg1:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", arg1:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13609) then
        arg1:SetStringIndexedNumber("ActiveAnimalVariety_Cnt", arg1:GetStringIndexedNumber("ActiveAnimalVariety_Cnt") + 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13638) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13615) then
            f2_local0[10] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13614) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 10000) then
                f2_local0[16] = 100
            else
                f2_local0[43] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13616) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 10000) then
                f2_local0[8] = 100
            else
                f2_local0[43] = 100
            end
        end
    elseif f2_local3 > 40 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
            f2_local0[41] = 100
        else
            f2_local0[41] = 10
            f2_local0[43] = 90
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13611) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13644) == false and arg1:GetHpRate(TARGET_SELF) < 0.5 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            f2_local0[14] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13611) and arg1:HasSpecialEffectId(TARGET_SELF, 13644) == false and arg1:GetHpRate(TARGET_SELF) < 0.4 and arg1:GetStringIndexedNumber("Drain_Cnt") == 1 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            f2_local0[5] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13611) and arg1:HasSpecialEffectId(TARGET_SELF, 13644) == false and arg1:GetHpRate(TARGET_SELF) < 0.3 and arg1:GetStringIndexedNumber("Drain_Cnt") == 2 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            f2_local0[5] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13611) and arg1:HasSpecialEffectId(TARGET_SELF, 13644) == false and arg1:GetHpRate(TARGET_SELF) < 0.1 and arg1:GetNumber(0) < arg1:GetStringIndexedNumber("Drain_Cnt") and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
            f2_local0[5] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13625) and arg1:HasSpecialEffectId(TARGET_SELF, 13644) == false and arg1:GetStringIndexedNumber("Drain_Cnt") <= arg1:GetNumber(0) and arg1:HasSpecialEffectId(TARGET_SELF, 13612) == false then
            f2_local0[3] = 100
            f2_local0[17] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13615) and arg1:HasSpecialEffectId(TARGET_SELF, 13622) then
            f2_local0[10] = 100
            f2_local0[43] = 1
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13614) and arg1:HasSpecialEffectId(TARGET_SELF, 13622) then
            f2_local0[24] = 100
            f2_local0[43] = 1
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13616) and arg1:HasSpecialEffectId(TARGET_SELF, 13622) then
            f2_local0[8] = 100
            f2_local0[43] = 1
        elseif f2_local3 > 16 then
            f2_local0[3] = 50
            f2_local0[13] = 40
            f2_local0[41] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, 13615) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[10] = 100
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13614) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[24] = 100
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13616) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[8] = 100
            end
        elseif f2_local3 > 12 then
            f2_local0[3] = 40
            f2_local0[13] = 50
            f2_local0[41] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, 13615) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[10] = 120
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13614) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[24] = 100
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13616) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[8] = 70
            end
        elseif f2_local3 > 5.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[1] = 10
                f2_local0[3] = 50
                f2_local0[12] = 30
                f2_local0[41] = 10
            else
                f2_local0[3] = 20
                f2_local0[41] = 20
                f2_local0[43] = 60
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13615) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[10] = 100
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 13616) and arg1:HasSpecialEffectId(TARGET_SELF, 13626) == false then
                f2_local0[8] = 100
            end
        elseif f2_local3 > -1 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 70) then
                f2_local0[1] = 65
                f2_local0[3] = 10
                f2_local0[4] = 20
                f2_local0[43] = 5
            else
                f2_local0[1] = 35
                f2_local0[3] = 20
                f2_local0[4] = 10
                f2_local0[17] = 20
                f2_local0[43] = 20
            end
        elseif f2_local3 > -2 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 60) then
                f2_local0[5] = 60
                f2_local0[17] = 20
                f2_local0[43] = 20
            else
                f2_local0[17] = 20
                f2_local0[43] = 80
            end
        else
            if f2_local3 <= -4 then
                f2_local0[4] = 50
                f2_local0[5] = 40
                f2_local0[43] = 10
            else
                f2_local0[43] = 70
                f2_local0[5] = 30
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) then
                f2_local0[4] = 100
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) then
                f2_local0[4] = 100
                f2_local0[5] = 100
            end
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, 40) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 40) then
            if f2_local3 > -2 and f2_local3 < 1.5 then
                f2_local0[2] = 80
                f2_local0[4] = 0
                f2_local0[43] = 20
                if arg1:HasSpecialEffectId(TARGET_SELF, 13615) then
                    f2_local0[10] = 100
                end
            elseif f2_local3 <= -1.5 then
                f2_local0[4] = 50
                f2_local0[5] = 50
                f2_local0[17] = 50
                f2_local0[20] = 50
            else
                f2_local0[17] = 20
                f2_local0[43] = 80
                if arg1:HasSpecialEffectId(TARGET_SELF, 13615) then
                    f2_local0[10] = 150
                end
            end
        elseif f2_local3 < -2.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f2_local0[4] = 30
                f2_local0[5] = 70
                f2_local0[43] = 0
            else
                f2_local0[4] = 70
                f2_local0[5] = 30
                f2_local0[43] = 0
            end
            f2_local0[20] = 50
        else
            f2_local0[43] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 13615) then
                f2_local0[10] = 150
            end
        end
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 220) and arg1:HasSpecialEffectId(TARGET_SELF, 13638) == false and f2_local3 <= 20 then
        f2_local0[17] = 40
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f2_local3 > 15 then
        f2_local0[26] = 60
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13638) and arg1:HasSpecialEffectId(TARGET_SELF, 13614) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        f2_local0[24] = 60
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13622) and arg1:GetRemainingAttackCoolTime(3006) <= 0 and arg1:GetRemainingAttackCoolTime(3031) <= 0 and f2_local3 < 13 then
        f2_local0[24] = 0
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 13638) then
        f2_local0[16] = 0
    end
    if arg1:GetStringIndexedNumber("Warp_Cnt") >= 35 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        f2_local0[11] = 5 * arg1:GetStringIndexedNumber("Warp_Cnt")
    elseif f2_local3 <= 6 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        f2_local0[11] = 5 * arg1:GetStringIndexedNumber("Warp_Cnt")
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13645) and not arg1:HasSpecialEffectId(TARGET_SELF, 13618) then
        arg1:SetStringIndexedNumber("Warp_Cnt", arg1:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13645) and (not arg1:HasSpecialEffectId(TARGET_SELF, 13606) or arg1:HasSpecialEffectId(TARGET_SELF, 13618)) then
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13646) and not arg1:HasSpecialEffectId(TARGET_SELF, 13621) and not arg1:HasSpecialEffectId(TARGET_SELF, 13619) then
        arg1:SetStringIndexedNumber("Warp_Cnt", arg1:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13646) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13621) and arg1:HasSpecialEffectId(TARGET_SELF, 13619) then
            f2_local0[11] = 0
        end
        if not arg1:HasSpecialEffectId(TARGET_SELF, 13607) and not arg1:HasSpecialEffectId(TARGET_SELF, 13609) then
            f2_local0[11] = 0
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13647) and not arg1:HasSpecialEffectId(TARGET_SELF, 13620) then
        arg1:SetStringIndexedNumber("Warp_Cnt", arg1:GetStringIndexedNumber("Warp_Cnt") + 6)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13644) then
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 12, f2_local0[1], 5)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3005, 12, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3031, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[4], 2)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 25, f2_local0[5], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3027, 20, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3010, 23, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3021, 23, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 23, f2_local0[11], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3023, 23, f2_local0[11], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3025, 8, f2_local0[13], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3035, 20, f2_local0[17], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3036, 20, f2_local0[17], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3035, 15, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3036, 15, f2_local0[3], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[17], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[17], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[20], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3038, 20, f2_local0[26], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13614) == false and arg1:HasSpecialEffectId(TARGET_SELF, 13622) == false then
        f2_local0[24] = SetCoolTime(arg1, arg2, 3033, 30, f2_local0[24], 1)
        f2_local0[24] = SetCoolTime(arg1, arg2, 3032, 30, f2_local0[24], 1)
        f2_local0[24] = SetCoolTime(arg1, arg2, 3015, 30, f2_local0[24], 1)
    end
    f2_local0[43] = SetCoolTime(arg1, arg2, 6002, 7, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 6003, 7, f2_local0[43], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act17)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act26)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Ancestor467000_Act43)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Ancestor467000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Ancestor467000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.2
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f3_local7 = 3.5
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f4_local0 = 4
    local f4_local1 = 3005
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 13638)
    if f5_local0 then
        f5_local0 = 16
        local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f5_local2 = 0
        local f5_local3 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f5_local0, 3033, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    f5_local0 = 15
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f5_local7 = 16
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    local f5_local11 = arg0:GetRandam_Int(1, 100)
    local f5_local12 = 3006
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 20) then
        if f5_local11 < 50 then
            f5_local12 = 3006
        else
            f5_local12 = 3031
        end
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        f5_local12 = 3006
    else
        f5_local12 = 3031
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local12, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f6_local0 = 3.3
    local f6_local1 = 3007
    local f6_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 0
    local f6_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local0, f6_local1, TARGET_ENE_0, f6_local2, f6_local3, f6_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act05(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13611) and arg0:GetHpRate(TARGET_SELF) < 0.4 and arg0:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        local f7_local0 = 4.9
        local f7_local1 = 3008
        local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 0
        local f7_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        local f7_local0 = 4.9
        local f7_local1 = 3008
        local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 0
        local f7_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function Ancestor467000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f8_local0 = 30
    local f8_local1 = 3009
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_R, 8) and arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_BR, 8) and arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 8) and f9_local0 > 8 then
        if arg0:GetStringIndexedNumber("Charge_Flg") == 0 then
            arg0:SetStringIndexedNumber("Charge_Flg", 1)
            arg0:SetStringIndexedNumber("ChargeLR_Flg", 1)
            arg0:SetTimer(0, 4)
            arg0:SetTimer(1, 10)
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 90, 12, AI_SPA_DIR_TYPE_TargetF)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    elseif arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_L, 8) and arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_BL, 8) and arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_B, 8) and f9_local0 > 8 then
        if arg0:GetStringIndexedNumber("Charge_Flg") == 0 then
            arg0:SetStringIndexedNumber("Charge_Flg", 1)
            arg0:SetStringIndexedNumber("ChargeLR_Flg", 0)
            arg0:SetTimer(0, 4)
            arg0:SetTimer(1, 10)
            arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, -90, 12, AI_SPA_DIR_TYPE_TargetF)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    else
        arg0:SetTimer(2, 3)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act08(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Jumping_Cnt", 0)
    arg0:SetStringIndexedNumber("Warp_Cnt", arg0:GetStringIndexedNumber("Warp_Cnt") + 2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f10_local0 = 12
    local f10_local1 = 3016
    local f10_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 0
    local f10_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f10_local0, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetStringIndexedNumber("Warp_Cnt", 0)
    local f11_local0 = 9
    local f11_local1 = 3017
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:SetStringIndexedNumber("Rolling_Cnt", 0)
    arg0:SetStringIndexedNumber("Warp_Cnt", arg0:GetStringIndexedNumber("Warp_Cnt") + 5)
    local f12_local0 = 10
    local f12_local1 = 3018
    local f12_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act11(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Warp_Cnt", 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f13_local0 = 0
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13645) then
        if not arg0:HasSpecialEffectId(TARGET_SELF, 13618) and arg0:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) then
            f13_local0 = 1
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) then
            f13_local0 = 2
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13608) then
            f13_local0 = 3
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13646) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 13609) and not arg0:HasSpecialEffectId(TARGET_SELF, 13621) and arg0:HasSpecialEffectId(TARGET_SELF, 13607) and not arg0:HasSpecialEffectId(TARGET_SELF, 13619) then
            if f13_local1 <= 50 then
                f13_local0 = 1
            else
                f13_local0 = 2
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) and not arg0:HasSpecialEffectId(TARGET_SELF, 13621) then
            f13_local0 = 1
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) and not arg0:HasSpecialEffectId(TARGET_SELF, 13619) then
            f13_local0 = 2
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) and not arg0:HasSpecialEffectId(TARGET_SELF, 13621) then
            f13_local0 = 1
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) and not arg0:HasSpecialEffectId(TARGET_SELF, 13619) then
            f13_local0 = 2
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) then
            f13_local0 = 2
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) then
            f13_local0 = 1
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13606) then
            f13_local0 = 0
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 13608) then
            f13_local0 = 3
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13608) and not arg0:HasSpecialEffectId(TARGET_SELF, 13620) then
        f13_local0 = 3
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13608) and not arg0:HasSpecialEffectId(TARGET_SELF, 13620) and not arg0:HasSpecialEffectId(TARGET_SELF, 13621) then
        f13_local0 = 3
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) and not arg0:HasSpecialEffectId(TARGET_SELF, 13621) then
        f13_local0 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) and not arg0:HasSpecialEffectId(TARGET_SELF, 13619) then
        f13_local0 = 2
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13608) then
        f13_local0 = 3
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13609) then
        f13_local0 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13607) then
        f13_local0 = 2
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 13606) then
        f13_local0 = 0
    end
    if f13_local0 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif f13_local0 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 25, 3023, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act12(arg0, arg1, arg2)
    local f14_local0 = 7.5
    local f14_local1 = 0
    local f14_local2 = 0
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f14_local7 = 5.1
    local f14_local8 = 3024
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act13(arg0, arg1, arg2)
    local f15_local0 = 15
    local f15_local1 = 0
    local f15_local2 = 0
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 2
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f15_local7 = 5.4
    local f15_local8 = 3025
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local7, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f16_local0 = 4.9
    local f16_local1 = 3008
    local f16_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local3 = 0
    local f16_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act15(arg0, arg1, arg2)
    if arg0:GetStringIndexedNumber("ChargeLR_Flg") == 1 then
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 40, 12, AI_SPA_DIR_TYPE_TargetF)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:GetStringIndexedNumber("ChargeLR_Flg") == 0 then
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, -40, 12, AI_SPA_DIR_TYPE_TargetF)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, POINT_AI_FIXED_POS, 1, TARGET_SELF, false, -1, -1, -1, -1)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function Ancestor467000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetStringIndexedNumber("Warp_Cnt", arg0:GetStringIndexedNumber("Warp_Cnt") + 3)
    arg0:SetStringIndexedNumber("Charge_Flg", 0)
    local f18_local1 = 7.3
    local f18_local2 = 3015
    local f18_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local4 = 0
    local f18_local5 = 0
    if f18_local0 >= 22 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local1, f18_local2, TARGET_ENE_0, f18_local3, f18_local4, f18_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local1, 3032, TARGET_ENE_0, f18_local3, f18_local4, f18_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act17(arg0, arg1, arg2)
    local f19_local0 = 15
    local f19_local1 = 3035
    local f19_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 0
    local f19_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 13636)
    local f20_local0 = 16
    local f20_local1 = 3030
    local f20_local2 = 9999
    local f20_local3 = 0
    local f20_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, TARGET_ENE_0, f20_local2, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act21(arg0, arg1, arg2)
    local f21_local0 = 16
    local f21_local1 = 3006
    local f21_local2 = 3032
    local f21_local3 = 9999
    local f21_local4 = 0
    local f21_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local0, f21_local1, TARGET_ENE_0, f21_local3, f21_local4, f21_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f21_local0, f21_local2, TARGET_ENE_0, f21_local3, f21_local4, f21_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act22(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = 0
    local f22_local2 = 9999
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 2
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 16
    local f22_local8 = 3033
    local f22_local9 = 3032
    local f22_local10 = 9999
    local f22_local11 = 0
    local f22_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local7, 3028, TARGET_ENE_0, f22_local10, f22_local11, f22_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local7, f22_local8, TARGET_ENE_0, f22_local10, f22_local11, f22_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f22_local7, f22_local9, TARGET_ENE_0, f22_local10, f22_local11, f22_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act23(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:SetStringIndexedNumber("Rolling_Cnt", 9)
    arg0:SetStringIndexedNumber("Warp_Cnt", arg0:GetStringIndexedNumber("Warp_Cnt") + 5)
    local f23_local0 = 10
    local f23_local1 = 3018
    local f23_local2 = 9999
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local0, 3028, TARGET_ENE_0, f23_local2, f23_local3, f23_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f23_local0, f23_local1, TARGET_ENE_0, f23_local2, f23_local3, f23_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act24(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 4.9
    local f24_local2 = 3033
    local f24_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local4 = 0
    local f24_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local1, f24_local2, TARGET_ENE_0, f24_local3, f24_local4, f24_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act25(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Jumping_Cnt", 4)
    arg0:SetStringIndexedNumber("Warp_Cnt", arg0:GetStringIndexedNumber("Warp_Cnt") + 2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f25_local0 = 12
    local f25_local1 = 3016
    local f25_local2 = 9999
    local f25_local3 = 0
    local f25_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local0, 3028, TARGET_ENE_0, f25_local2, f25_local3, f25_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f25_local0, f25_local1, TARGET_ENE_0, f25_local2, f25_local3, f25_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act26(arg0, arg1, arg2)
    local f26_local0 = 35
    local f26_local1 = 0
    local f26_local2 = 9999
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = 2
    local f26_local6 = 2
    Approach_Act_Flex(arg0, arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local7 = 16
    local f26_local8 = 3038
    local f26_local9 = 9999
    local f26_local10 = 0
    local f26_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f26_local7, 3038, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act40(arg0, arg1, arg2)
    local f27_local0 = 1.5
    local f27_local1 = 12 + arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = true
    local f27_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, TARGET_ENE_0, f27_local1, TARGET_SELF, f27_local2, f27_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act41(arg0, arg1, arg2)
    local f28_local0 = 1.15
    local f28_local1 = 10 + arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = false
    local f28_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local0, TARGET_ENE_0, f28_local1, TARGET_SELF, f28_local2, f28_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(20, 30), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Ancestor467000_Act43(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f30_local0 = 2
        local f30_local1 = 6003
        local f30_local2 = TARGET_ENE_0
        local f30_local3 = 0
        local f30_local4 = AI_DIR_TYPE_R
        local f30_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f30_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f30_local0 then
            f30_local0 = 2
            local f30_local1 = 6002
            local f30_local2 = TARGET_ENE_0
            local f30_local3 = 0
            local f30_local4 = AI_DIR_TYPE_L
            local f30_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Ancestor467000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Ancestor467000_AfterAttackAct, 10)
    
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
    local f34_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = 20
    local f34_local3 = arg1:GetDist(TARGET_ENE_0)
    local f34_local4 = arg1:GetRandam_Int(1, 100)
    local f34_local5 = 3
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, -1 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, -1, -1.3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 1.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f34_local4 < 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.9, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 80, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2.9, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 150, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.1, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) and arg1:HasSpecialEffectId(TARGET_SELF, 13613) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.1, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg2:ClearSubGoal()
            arg1:SetStringIndexedNumber("Rolling_Cnt", arg1:GetStringIndexedNumber("Rolling_Cnt") + 1)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:SetStringIndexedNumber("Rolling_Cnt", arg1:GetStringIndexedNumber("Rolling_Cnt") + 1)
            if arg1:GetStringIndexedNumber("Rolling_Cnt") >= 10 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and arg1:GetStringIndexedNumber("Rolling_Cnt") >= 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                arg2:ClearSubGoal()
                if f34_local3 > 10 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 2, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg1:SetStringIndexedNumber("Jumping_Cnt", arg1:GetStringIndexedNumber("Jumping_Cnt") + 1)
            if arg1:GetStringIndexedNumber("Jumping_Cnt") > 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.2, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 270) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f34_local3 > 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3.2, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:SetStringIndexedNumber("Drain_Cnt", arg1:GetStringIndexedNumber("Drain_Cnt") + 1)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 30, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13636) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, -1, 999 + arg1:GetMapHitRadius(TARGET_SELF)) and f34_local3 > -3.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 999 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13611) and arg1:GetHpRate(TARGET_SELF) < 0.4 and arg1:GetStringIndexedNumber("AnimalActive_Flg") == 1 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13628) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f34_local3 > 11 and f34_local3 < 34 then
            arg2:ClearSubGoal()
            if f34_local3 >= 22 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3032, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        end
    end
    
end

RegisterTableGoal(GOAL_Ancestor467000_AfterAttackAct, "Ancestor467000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Ancestor467000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


