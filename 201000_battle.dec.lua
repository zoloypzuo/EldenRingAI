RegisterTableGoal(GOAL_WolfHeadWarrior201000_Battle, "WolfHeadWarrior201000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfHeadWarrior201000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("HealLimit")
    arg1:SetStringIndexedNumber("HealLimit", 3)
    arg1:GetStringIndexedNumber("Heal_Flg")
    arg1:GetStringIndexedNumber("WarCry_Int")
    arg1:GetStringIndexedNumber("BackSlash_Int")
    arg1:GetStringIndexedNumber("Dash_Int")
    arg1:GetStringIndexedNumber("Atk_Cnt")
    arg1:SetStringIndexedNumber("WarCry_Int", 0)
    arg1:SetStringIndexedNumber("BackSlash_Int", 0)
    arg1:SetStringIndexedNumber("Dash_Int", 0)
    arg1:SetStringIndexedNumber("Atk_Cnt", 0)
    arg1:SetStringIndexedNumber("Heal_Flg", 0)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    arg1:EnableUnfavorableAttackCheck(0, 3029)
    arg1:EnableUnfavorableAttackCheck(0, 3030)
    arg1:EnableUnfavorableAttackCheck(0, 3031)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    
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
    local f2_local7 = nil
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14557)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14557)
    if arg1:GetStringIndexedNumber("WarCry_Int") > 0 then
        arg1:SetStringIndexedNumber("WarCry_Int", arg1:GetStringIndexedNumber("WarCry_Int") - 1)
    end
    if arg1:GetStringIndexedNumber("BackSlash_Int") > 0 then
        arg1:SetStringIndexedNumber("BackSlash_Int", arg1:GetStringIndexedNumber("BackSlash_Int") - 1)
    end
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 90) or arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) then
        f2_local7 = 1
    else
        f2_local7 = 0
    end
    if arg1:GetStringIndexedNumber("Dash_Int") == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14550) then
        arg1:SetStringIndexedNumber("Dash_Int", 100)
    end
    if arg1:GetStringIndexedNumber("Dash_Int") == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 13941) then
        arg1:SetStringIndexedNumber("Dash_Int", 100)
    end
    if arg1:GetStringIndexedNumber("HealLimit") == 3 and arg1:HasSpecialEffectId(TARGET_SELF, 14565) then
        arg1:SetStringIndexedNumber("HealLimit", 2)
    end
    if arg1:GetStringIndexedNumber("Heal_Flg") == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 14559) == false then
        arg1:SetStringIndexedNumber("Heal_Flg", 0)
        arg1:SetStringIndexedNumber("HealLimit", arg1:GetStringIndexedNumber("HealLimit") - 1)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14572) then
            f2_local0[35] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            f2_local0[43] = 100
        else
            f2_local0[36] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14550) == false then
        if arg1:GetHpRate(TARGET_SELF) < 0.65 and arg1:GetStringIndexedNumber("Heal_Flg") == 0 and arg1:GetStringIndexedNumber("HealLimit") > 0 then
            f2_local0[9] = 100
        elseif f2_local7 == 1 and arg1:GetTimer(5) <= 0 and arg1:GetTimer(2) <= 0 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
                arg1:SetTimer(2, 5)
                if f2_local3 > 10 then
                    f2_local0[3] = 100
                else
                    f2_local0[2] = 100
                end
            else
                f2_local0[42] = 100
            end
        elseif arg1:GetStringIndexedNumber("Atk_Cnt") > 3 then
            f2_local0[44] = 100
        elseif arg1:GetStringIndexedNumber("Atk_Cnt") == 0 then
            if f2_local3 > 10 then
                f2_local0[3] = 100
            elseif f2_local3 > 4 then
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[10] = 50
            else
                f2_local0[1] = 70
                f2_local0[10] = 30
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
            if f2_local3 > 10 then
                f2_local0[3] = 100
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[44] = 0
            elseif f2_local3 > 4 then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[10] = 50
                f2_local0[11] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 999) then
                f2_local0[1] = 40
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[7] = 20
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 15
                f2_local0[43] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 999) then
                f2_local0[1] = 0
                f2_local0[4] = 50
                f2_local0[5] = 20
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[43] = 30
            end
        elseif f2_local3 < 4 then
            f2_local0[1] = 0
            f2_local0[4] = 40
            f2_local0[5] = 50
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[43] = 10
        else
            f2_local0[42] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14550) then
        if f2_local7 == 1 and arg1:GetTimer(2) <= 0 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
                arg1:SetTimer(2, 15)
                if f2_local3 > 15 then
                    f2_local0[3] = 100
                elseif f2_local3 > 3 then
                    f2_local0[8] = 95
                    f2_local0[3] = 5
                else
                    f2_local0[2] = 100
                end
            else
                f2_local0[42] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 14556) and f2_local3 > 5 and f2_local3 < 12 then
            f2_local0[8] = 95
            f2_local0[3] = 5
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
            if f2_local3 > 10 then
                f2_local0[3] = 100
                f2_local0[40] = 0
                f2_local0[41] = 0
                f2_local0[44] = 0
            elseif f2_local3 > 4 then
                f2_local0[1] = 15
                f2_local0[2] = 15
                f2_local0[8] = 40
                f2_local0[10] = 30
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 999) then
                if arg1:GetStringIndexedNumber("BackSlash_Int") == 1 then
                    f2_local0[1] = 30
                    f2_local0[7] = 15
                    f2_local0[10] = 15
                    f2_local0[12] = 20
                    f2_local0[13] = 20
                    f2_local0[43] = 0
                else
                    f2_local0[1] = 30
                    f2_local0[4] = 20
                    f2_local0[7] = 10
                    f2_local0[10] = 10
                    f2_local0[12] = 20
                    f2_local0[13] = 10
                    f2_local0[43] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 999) then
                f2_local0[1] = 0
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[12] = 50
                f2_local0[43] = 30
            else
                f2_local0[1] = 0
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 50
                f2_local0[43] = 30
            end
        elseif f2_local3 < 4 then
            f2_local0[1] = 0
            f2_local0[4] = 39
            f2_local0[5] = 40
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[42] = 1
            f2_local0[43] = 20
        else
            f2_local0[42] = 100
        end
    end
    if f2_local3 < 4.5 or f2_local3 > 8 then
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14566) then
        f2_local0[7] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3008, 12, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3009, 12, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3008, 12, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3009, 12, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[5], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3016, 20, f2_local0[7], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3017, 20, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3003, 20, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3023, 20, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3024, 20, f2_local0[13], 0)
    f2_local0[43] = SetCoolTime(arg1, arg2, 6002, 4, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 6003, 4, f2_local0[43], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act13)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_Act46)
    local f2_local8 = REGIST_FUNC(arg1, arg2, WolfHeadWarrior201000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function WolfHeadWarrior201000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5.5
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = arg0:GetStringIndexedNumber("Dash_Int")
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f3_local7 = 4
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act02(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetTimer(5, 10)
    local f4_local0 = 10
    local f4_local1 = 3005
    local f4_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 0
    local f4_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local0, f4_local1, TARGET_ENE_0, f4_local2, f4_local3, f4_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act03(arg0, arg1, arg2)
    local f5_local0 = 8
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = arg0:GetStringIndexedNumber("Dash_Int")
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetTimer(5, 15)
    local f5_local7 = 10
    local f5_local8 = 3005
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if f6_local0 > 3.5 then
        local f6_local1 = 4
        local f6_local2 = 6001
        local f6_local3 = TARGET_ENE_0
        local f6_local4 = 0
        local f6_local5 = AI_DIR_TYPE_B
        local f6_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:SetStringIndexedNumber("BackSlash_Int", 2)
        local f6_local1 = 10
        local f6_local2 = 3013
        local f6_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f6_local4 = 0
        local f6_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local1, f6_local2, TARGET_ENE_0, f6_local3, f6_local4, f6_local5, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function WolfHeadWarrior201000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:GetStringIndexedNumber("WarCry_Int") == 1 then
        if targetDist > 3 then
            local f7_local0 = 4
            local f7_local1 = 6001
            local f7_local2 = TARGET_ENE_0
            local f7_local3 = 0
            local f7_local4 = AI_DIR_TYPE_B
            local f7_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        else
            arg0:SetStringIndexedNumber("BackSlash_Int", 2)
            local f7_local0 = 10
            local f7_local1 = 3013
            local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
            local f7_local3 = 0
            local f7_local4 = 0
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg0:SetStringIndexedNumber("WarCry_Int", 2)
        local f7_local0 = 10
        local f7_local1 = 3014
        local f7_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f7_local3 = 0
        local f7_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function WolfHeadWarrior201000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f8_local0 = 10
    local f8_local1 = 3015
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local3 = 0
    local f8_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local0, f8_local1, TARGET_ENE_0, f8_local2, f8_local3, f8_local4, 0, 0)
    arg0:SetStringIndexedNumber("Dash_Int", 100)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act07(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f9_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 14550)
    local f9_local1 = false
    if f9_local0 == f9_local1 then
        f9_local0 = 5
        f9_local1 = 0
        local f9_local2 = 999
        local f9_local3 = arg0:GetStringIndexedNumber("Dash_Int")
        local f9_local4 = 0
        local f9_local5 = 2
        local f9_local6 = 2
        Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f9_local7 = 10
        local f9_local8 = 3019
        local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local10 = 0
        local f9_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        f9_local0 = 5
        f9_local1 = 0
        local f9_local2 = 999
        local f9_local3 = arg0:GetStringIndexedNumber("Dash_Int")
        local f9_local4 = 0
        local f9_local5 = 2
        local f9_local6 = 2
        Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        local f9_local7 = 10
        local f9_local8 = 3016
        local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f9_local10 = 0
        local f9_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function WolfHeadWarrior201000_Act08(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f10_local0 = 11
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f10_local7 = 10
    local f10_local8 = 3017
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local7, f10_local8, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14550) == false then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if f11_local0 < 6 then
            local f11_local1 = 4
            local f11_local2 = 6001
            local f11_local3 = TARGET_ENE_0
            local f11_local4 = 0
            local f11_local5 = AI_DIR_TYPE_B
            local f11_local6 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
        end
        local f11_local1 = 10
        local f11_local2 = 4600
        local f11_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local4 = 0
        local f11_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local1, f11_local2, TARGET_ENE_0, f11_local3, f11_local4, f11_local5, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        if f11_local0 < 6 then
            local f11_local1 = 4
            local f11_local2 = 6001
            local f11_local3 = TARGET_ENE_0
            local f11_local4 = 0
            local f11_local5 = AI_DIR_TYPE_B
            local f11_local6 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
        end
        local f11_local1 = 10
        local f11_local2 = 4600
        local f11_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f11_local4 = 0
        local f11_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local1, f11_local2, TARGET_ENE_0, f11_local3, f11_local4, f11_local5, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    
end

function WolfHeadWarrior201000_Act10(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    local f12_local0 = 7
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = arg0:GetStringIndexedNumber("Dash_Int")
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local f12_local7 = 4
    local f12_local8 = 3003
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act11(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    local f13_local0 = 7
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = arg0:GetStringIndexedNumber("Dash_Int")
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = arg0:GetDist(TARGET_ENE_0)
    if f13_local7 < 4.5 then
        local f13_local8 = 4
        local f13_local9 = 6001
        local f13_local10 = TARGET_ENE_0
        local f13_local11 = 0
        local f13_local12 = AI_DIR_TYPE_B
        local f13_local13 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local8, f13_local9, f13_local10, f13_local11, f13_local12, f13_local13)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetTimer(6, 7)
    local f13_local8 = 4
    local f13_local9 = 3020
    local f13_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 0
    local f13_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local8, f13_local9, TARGET_ENE_0, f13_local10, f13_local11, f13_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act12(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    local f14_local0 = 5
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = arg0:GetStringIndexedNumber("Dash_Int")
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act13(arg0, arg1, arg2)
    arg0:SetStringIndexedNumber("Atk_Cnt", arg0:GetStringIndexedNumber("Atk_Cnt") + 1)
    arg0:SetTimer(6, 7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f15_local0 = 4
    local f15_local1 = 3024
    local f15_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act35(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    if f16_local0 < 6 then
        local f16_local1 = 4
        local f16_local2 = 6001
        local f16_local3 = TARGET_ENE_0
        local f16_local4 = 0
        local f16_local5 = AI_DIR_TYPE_B
        local f16_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    end
    local f16_local1 = 10
    local f16_local2 = 3035
    local f16_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local1, f16_local2, TARGET_ENE_0, f16_local3, f16_local4, f16_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act36(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 0
    local f17_local2 = 999
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 2
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 999, 0, 360, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act40(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f18_local0 = 2
    local f18_local1 = 2
    local f18_local2 = true
    local f18_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f18_local0, TARGET_ENE_0, f18_local1, TARGET_SELF, f18_local2, f18_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act41(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f19_local0 = 2
    local f19_local1 = 8
    local f19_local2 = false
    local f19_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local0, TARGET_ENE_0, f19_local1, TARGET_SELF, f19_local2, f19_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 40, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act43(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f21_local0 = 4
        local f21_local1 = 6003
        local f21_local2 = TARGET_ENE_0
        local f21_local3 = 0
        local f21_local4 = AI_DIR_TYPE_R
        local f21_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f21_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f21_local0 then
            f21_local0 = 4
            local f21_local1 = 6002
            local f21_local2 = TARGET_ENE_0
            local f21_local3 = 0
            local f21_local4 = AI_DIR_TYPE_L
            local f21_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function WolfHeadWarrior201000_Act44(arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(0, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetStringIndexedNumber("Atk_Cnt", 0)
    local f22_local1 = arg0:GetRandam_Int(3, 5)
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = f22_local0
    local f22_local4 = 100
    local f22_local5 = true
    local f22_local6 = -1
    local f22_local7 = GUARD_GOAL_DESIRE_RET_Failed
    local f22_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, isLifeSuccess, f22_local6, f22_local7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act45(arg0, arg1, arg2)
    local f23_local0 = 6
    local f23_local1 = 15
    local f23_local2 = true
    local f23_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f23_local0, TARGET_ENE_0, f23_local1, TARGET_SELF, f23_local2, f23_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_Act46(arg0, arg1, arg2)
    local f24_local0 = 3
    local f24_local1 = TARGET_ENE_0
    local f24_local2 = 8
    local f24_local3 = TARGET_ENE_0
    local f24_local4 = true
    local f24_local5 = -1
    local f24_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f24_local7 = false
    local f24_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6, f24_local7, f24_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function WolfHeadWarrior201000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_WolfHeadWarrior201000_AfterAttackAct, 10)
    
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
    local f28_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = 0
    local f28_local2 = 20
    local f28_local3 = arg1:GetDist(TARGET_ENE_0)
    local f28_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_Damaged) then
        arg1:SetStringIndexedNumber("Atk_Cnt", 0)
        if arg1:HasSpecialEffectId(TARGET_SELF, 14570) then
            return false
        end
        if arg1:GetTimer(1) <= 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14555) == false and f28_local4 < 80 then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 7)
            if f28_local4 < 30 and arg1:GetTimer(5) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg1:SetTimer(5, 15)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5, 0, 0, 0, 0)
                return true
            elseif f28_local4 < 60 and arg1:GetTimer(6) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg1:SetTimer(6, 15)
                if arg1:HasSpecialEffectId(TARGET_SELF, 14550) == false then
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 3 + arg1:GetMapHitRadius(TARGET_SELF)) and f28_local4 < 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 5, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 5, 0, 0, 0, 0)
                end
                return true
            elseif f28_local4 < 80 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 5, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 5.5) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14550) and f28_local4 >= 30 then
                    f28_local4 = f28_local4 - 30
                end
                if f28_local4 > 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif f28_local4 > 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 15) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f28_local3 < 5 then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 5) then
                if f28_local4 < 30 or arg1:GetTimer(10) > 0 then
                    arg1:SetTimer(10, 0)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg1:SetTimer(10, 15)
                    arg1:SetTimer(5, 10)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 14) then
                arg1:SetTimer(10, 15)
                arg1:SetTimer(5, 10)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 200, -1, 3.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f28_local3 < 4 then
                arg1:SetTimer(10, 0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 210, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14550) and f28_local4 > 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 210, -1, 15) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f28_local3 < 5.5 then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14550) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14550) == false then
                return false
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 220, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif f28_local3 < 5 then
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) and arg1:HasSpecialEffectId(TARGET_SELF, 14550) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 999, 0, 120, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 999, 0, 120, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            if f28_local3 < 2 or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 200, -1, -1) then
                arg1:SetStringIndexedNumber("Atk_Cnt", 0)
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14557) then
            arg1:SetStringIndexedNumber("Heal_Flg", 1)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_WolfHeadWarrior201000_AfterAttackAct, "WolfHeadWarrior201000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_WolfHeadWarrior201000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


