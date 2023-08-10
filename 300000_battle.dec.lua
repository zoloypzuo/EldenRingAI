RegisterTableGoal(GOAL_LossRaceSoldierEngineer300000_Battle, "LossRaceSoldierEngineer300000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierEngineer300000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5401)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 10173)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_FRI_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:GetStringIndexedNumber("Escape_a")
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 19003)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 19004)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 19005)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 19006)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_ENE_0, 420)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    local f2_local13 = 1
    if arg1:GetNumber(5) == 1 then
        f2_local13 = 1.5
        arg1:SetNumber(5, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10177) and arg1:HasSpecialEffectId(TARGET_SELF, 5401) and arg1:HasSpecialEffectId(TARGET_SELF, 5021) == false then
        if f2_local3 <= 2 then
            f2_local0[16] = 50
            f2_local0[19] = 200
        else
            f2_local0[29] = 99
            f2_local0[49] = 1
        end
    elseif arg1:IsRiding(TARGET_SELF) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10161) == true then
                f2_local0[30] = 100
            else
                f2_local0[49] = 40
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 50, 230, 999) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 10173) and arg1:HasSpecialEffectId(TARGET_SELF, 10174) == false then
                if f2_local3 <= 10 then
                    f2_local0[30] = 100
                else
                    f2_local0[49] = 100
                end
            else
                f2_local0[30] = 100
            end
        else
            f2_local0[49] = 100
        end
    elseif arg1:GetLatestSoundBehaviorID() == 603000 then
        if f2_local3 >= 13 and arg1:HasSpecialEffectId(TARGET_SELF, 5400) then
            f2_local0[17] = 10
        elseif f2_local3 >= 7 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
                if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                    f2_local0[10] = 50
                    f2_local0[23] = 0
                elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                    f2_local0[10] = 50
                    f2_local0[23] = 0
                else
                    f2_local0[10] = 60
                    f2_local0[23] = 0
                end
            else
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[17] = 0
                f2_local0[18] = 40 * f2_local13
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
                if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                    f2_local0[10] = 35
                elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                    f2_local0[10] = 35
                else
                    f2_local0[10] = 60
                end
            else
                f2_local0[1] = 40
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[17] = 0
                f2_local0[18] = 40 * f2_local13
                f2_local0[23] = 0
            end
        elseif f2_local3 >= 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
                f2_local0[10] = 60
                f2_local0[16] = 15
                f2_local0[19] = 200
            else
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[6] = 20
                f2_local0[7] = 10
                f2_local0[11] = 15
                f2_local0[12] = 5
                f2_local0[17] = 0
                f2_local0[18] = 30 * f2_local13
                f2_local0[23] = 0
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            f2_local0[16] = 40
            f2_local0[23] = 10
            f2_local0[19] = 200
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[11] = 20
            f2_local0[12] = 0
            f2_local0[23] = 0
        end
    elseif f2_local9 == true and arg1:HasSpecialEffectId(TARGET_SELF, 5400) then
        if f2_local3 >= 30 then
            f2_local0[27] = 10
        elseif f2_local3 >= 5 then
            f2_local0[2] = 100
        elseif f2_local3 >= 3 then
            f2_local0[2] = 80
            f2_local0[27] = 10
            f2_local0[23] = 10
        else
            f2_local0[1] = 10
            f2_local0[6] = 20
            f2_local0[2] = 65
            f2_local0[27] = 10
            f2_local0[23] = 10
        end
    elseif f2_local11 == true and arg1:HasSpecialEffectId(TARGET_SELF, 5400) and f2_local12 == false then
        if f2_local3 >= 20 then
            f2_local0[27] = 10
        elseif f2_local3 >= 5 then
            f2_local0[3] = 100
        elseif f2_local3 >= 3 then
            f2_local0[3] = 80
            f2_local0[27] = 10
            f2_local0[23] = 10
        else
            f2_local0[1] = 10
            f2_local0[6] = 20
            f2_local0[3] = 65
            f2_local0[27] = 10
            f2_local0[23] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 19001) and arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
        if f2_local3 > 5 then
            f2_local0[10] = 20
        else
            f2_local0[10] = 20
            f2_local0[23] = 10
            f2_local0[19] = 200
            f2_local0[16] = 30
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[10] = 10
                f2_local0[21] = 80
                f2_local0[23] = 10
                f2_local0[19] = 200
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[10] = 10
                f2_local0[22] = 80
                f2_local0[23] = 10
                f2_local0[19] = 200
            else
                f2_local0[10] = 20
                f2_local0[27] = 70
                f2_local0[23] = 10
                f2_local0[19] = 200
            end
        elseif f2_local3 > 13 then
            f2_local0[17] = 10
        else
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[17] = 0
            f2_local0[27] = 80
            f2_local0[23] = 10
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[10] = 45
                f2_local0[21] = 50
                f2_local0[23] = 5
                f2_local0[19] = 200
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[10] = 45
                f2_local0[22] = 50
                f2_local0[23] = 5
                f2_local0[19] = 200
            else
                f2_local0[10] = 45
                f2_local0[27] = 50
                f2_local0[23] = 5
                f2_local0[19] = 200
            end
        elseif f2_local3 > 13 then
            f2_local0[17] = 10
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[17] = 0
            f2_local0[27] = 70
            f2_local0[23] = 10
        end
    elseif f2_local3 >= 13 and arg1:HasSpecialEffectId(TARGET_SELF, 5400) then
        f2_local0[17] = 10
    elseif f2_local3 >= 7 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[10] = 50
                f2_local0[21] = 50
                f2_local0[23] = 0
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[10] = 50
                f2_local0[22] = 50
                f2_local0[23] = 0
            else
                f2_local0[10] = 60
                f2_local0[27] = 40
                f2_local0[23] = 0
            end
        else
            f2_local0[1] = 40
            f2_local0[2] = 50
            f2_local0[3] = 50
            f2_local0[17] = 0
            f2_local0[18] = 40 * f2_local13
            f2_local0[27] = 40
            f2_local0[23] = 0
            f2_local0[40] = 40
            f2_local0[41] = 15
        end
    elseif f2_local3 >= 5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            if arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 180) then
                f2_local0[10] = 35
                f2_local0[21] = 60
                f2_local0[23] = 5
            elseif arg1:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 180) then
                f2_local0[10] = 35
                f2_local0[22] = 60
                f2_local0[23] = 5
            else
                f2_local0[10] = 60
                f2_local0[27] = 35
                f2_local0[23] = 5
            end
        else
            f2_local0[1] = 40
            f2_local0[2] = 30
            f2_local0[3] = 30
            f2_local0[17] = 0
            f2_local0[18] = 40 * f2_local13
            f2_local0[27] = 30
            f2_local0[23] = 0
            f2_local0[40] = 40
            f2_local0[41] = 15
        end
    elseif f2_local3 >= 3.5 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
            f2_local0[10] = 60
            f2_local0[16] = 15
            f2_local0[27] = 20
            f2_local0[23] = 5
            f2_local0[19] = 200
        else
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[11] = 15
            f2_local0[12] = 5
            f2_local0[17] = 0
            f2_local0[18] = 30 * f2_local13
            f2_local0[27] = 50
            f2_local0[23] = 0
            f2_local0[41] = 15
            f2_local0[42] = 15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5401) then
        f2_local0[16] = 40
        f2_local0[23] = 10
        f2_local0[19] = 200
        f2_local0[42] = 10
    else
        f2_local0[1] = 0
        f2_local0[2] = 10
        f2_local0[3] = 10
        f2_local0[6] = 20
        f2_local0[7] = 10
        f2_local0[11] = 20
        f2_local0[12] = 0
        f2_local0[27] = 10
        f2_local0[23] = 0
        f2_local0[42] = 10
    end
    arg1:SetNumber(8, 1)
    arg1:SetNumber(2, 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[9], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3039, 10, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 20004, 10, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[18], 0)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3010, 6, f2_local0[29], 0)
    if f2_local3 < 3 then
        f2_local0[18] = 0
    end
    if f2_local3 > 3 then
        f2_local0[19] = 0
    end
    if f2_local3 > 40 then
        f2_local0[2] = 0
        f2_local0[3] = 0
    end
    if f2_local8 == false and f2_local9 == false then
        f2_local0[2] = 0
    end
    if f2_local10 == false and f2_local11 == false and f2_local12 == false then
        f2_local0[3] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        f2_local0[40] = 0
        f2_local0[41] = 0
        f2_local0[42] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act12)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act19)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_Act49)
    local f2_local14 = REGIST_FUNC(arg1, arg2, LossRaceSoldierEngineer300000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local14, f2_local2)
    
end

function LossRaceSoldierEngineer300000_Act01(arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3001
    local f3_local9 = 3002
    local f3_local10 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local10, f3_local14, f3_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act02(arg0, arg1, arg2)
    local f4_local0 = 3010
    local f4_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 2
    local f4_local3 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local0, TARGET_ENE_0, f4_local1, f4_local2, f4_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act03(arg0, arg1, arg2)
    local f5_local0 = 3011
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 0
    local f5_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local0, TARGET_ENE_0, f5_local1, f5_local2, f5_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act04(arg0, arg1, arg2)
    local f6_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3012
    local f6_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act05(arg0, arg1, arg2)
    local f7_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f7_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3013
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 3001
    local f8_local9 = 3002
    local f8_local10 = ATT3005_DIST_MAX
    local f8_local11 = ATT3005_DIST_MAX
    local f8_local12 = ATT3005_DIST_MAX
    local f8_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local14 = 0
    local f8_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local14, f8_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f8_local8, TARGET_ENE_0, f8_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act07(arg0, arg1, arg2)
    local f9_local0 = 4
    local f9_local1 = 999
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3005
    local f9_local8 = 3001
    local f9_local9 = 3002
    local f9_local10 = ATT3005_DIST_MAX
    local f9_local11 = ATT3005_DIST_MAX
    local f9_local12 = ATT3005_DIST_MAX
    local f9_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local14 = 0
    local f9_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, f9_local14, f9_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act08(arg0, arg1, arg2)
    local f10_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3008
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act09(arg0, arg1, arg2)
    local f11_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f11_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3014
    local f11_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetRandam_Int(1, 100)
    local f12_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 4
    local f12_local7 = 8
    local f12_local8 = 3010
    local f12_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 0
    local f12_local12 = 0
    local f12_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, TARGET_ENE_0, f12_local10, f12_local11, f12_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act11(arg0, arg1, arg2)
    local f13_local0 = 2.5
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3002
    local f13_local8 = 3005
    local f13_local9 = 3001
    local f13_local10 = ATT3005_DIST_MAX
    local f13_local11 = ATT3005_DIST_MAX
    local f13_local12 = ATT3005_DIST_MAX
    local f13_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local14 = 0
    local f13_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local10, f13_local14, f13_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f13_local8, TARGET_ENE_0, f13_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act12(arg0, arg1, arg2)
    local f14_local0 = 2.5
    local f14_local1 = 999
    local f14_local2 = 0
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 1.5
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3002
    local f14_local8 = 3005
    local f14_local9 = 3001
    local f14_local10 = ATT3005_DIST_MAX
    local f14_local11 = ATT3005_DIST_MAX
    local f14_local12 = ATT3005_DIST_MAX
    local f14_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local14 = 0
    local f14_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local10, f14_local14, f14_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f14_local8, TARGET_ENE_0, f14_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local9, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act16(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act18(arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10186)
    local f17_local1 = 7.5
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 1.5
    local f17_local7 = 1.5
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 3017
    local f17_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local11 = 0
    local f17_local12 = 0
    local f17_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local8, TARGET_ENE_0, f17_local9, f17_local11, f17_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act19(arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10187)
    local f18_local1 = 3011
    local f18_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local4 = 1.5
    local f18_local5 = 120
    local f18_local6 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local1, TARGET_ENE_0, f18_local2, f18_local4, f18_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act21(arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    local f19_local1 = 0
    local f19_local2 = -1
    if f19_local0 <= f19_local1 then
        f19_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 45), true, true, f19_local2)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act22(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 0
    local f20_local2 = -1
    if f20_local0 <= f20_local1 then
        f20_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 45), true, true, f20_local2)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act23(arg0, arg1, arg2)
    local f21_local0 = 10
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2.5, TARGET_ENE_0, f21_local0, TARGET_ENE_0, true, -1)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act25(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    local f23_local1 = 0
    local f23_local2 = -1
    if f23_local0 <= f23_local1 then
        f23_local2 = 9910
    end
    if f23_local0 < 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_L, 4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_R, 4)
    end
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act26(arg0, arg1, arg2)
    local f24_local0 = 10
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, f24_local0, TARGET_SELF, false, -1)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act27(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = 100
    local f25_local3 = -1
    arg0:SetNumber(5, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f25_local3)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act28(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act29(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    local f27_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local4 = 0
    local f27_local5 = 0
    local f27_local6 = 4
    local f27_local7 = 8
    local f27_local8 = 3010
    local f27_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local11 = 0
    local f27_local12 = 0
    local f27_local13 = arg0:GetRandam_Int(1, 100)
    if f27_local13 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local8, TARGET_ENE_0, f27_local9, f27_local11, f27_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f27_local8, TARGET_ENE_0, f27_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local8, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    elseif f27_local13 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local8, TARGET_ENE_0, f27_local9, f27_local11, f27_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local8, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local8, TARGET_ENE_0, f27_local10, f27_local11, f27_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act30(arg0, arg1, arg2)
    local f28_local0 = 3000
    local f28_local1 = 3001
    local f28_local2 = 3005
    local f28_local3 = 3006
    local f28_local4 = 3007
    local f28_local5 = 3010
    local f28_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local7 = 0
    local f28_local8 = 0
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 10173) or arg0:HasSpecialEffectId(TARGET_SELF, 5232) then
        if arg0:IsFinishTimer(0) == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local5, TARGET_ENE_0, f28_local6, f28_local7, f28_local8, 0, 0)
            arg0:SetTimer(0, 5)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5231) then
        if arg0:IsRiding(TARGET_ENE_0) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local4, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 150) then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local3, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local2, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 10169) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local1, TARGET_ENE_0, f28_local6, f28_local7, f28_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local6, f28_local7, f28_local8, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Dismount, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act40(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act41(arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    if f31_local0 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act42(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f32_local0 = arg0:GetRandam_Int(1, 100)
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6011, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act44(arg0, arg1, arg2)
    local f33_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = 0
    local f33_local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5026) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, f33_local0, f33_local1, f33_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, f33_local0, f33_local1, f33_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act45(arg0, arg1, arg2)
    local f34_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, f34_local0, f34_local1, f34_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act46(arg0, arg1, arg2)
    local f35_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5026) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, f35_local0, f35_local1, f35_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, f35_local0, f35_local1, f35_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act47(arg0, arg1, arg2)
    local f36_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f36_local1 = 0
    local f36_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, f36_local0, f36_local1, f36_local2, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 1700, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_Act49(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10160) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10161)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10161)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_NONE)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10173)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function LossRaceSoldierEngineer300000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LossRaceSoldierEngineer300001_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f42_local0 = arg1:GetDist(TARGET_ENE_0)
    local f42_local1 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ReboundByOpponentGuard) then
        arg2:ClearSubGoal()
        arg1:SetNumber(0, 1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:GetNumber(10) == 0 then
        arg1:SetNumber(10, 1)
        arg2:ClearTopGoal()
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 83 and f42_local0 <= 8 and arg1:GetNumber(2) == 0 then
            arg2:ClearSubGoal()
            arg1:SetNumber(2, 1)
            if f42_local1 <= 35 then
                LossRaceSoldierEngineer300000_Act01(arg1, arg2)
            elseif f42_local1 <= 70 then
                LossRaceSoldierEngineer300000_Act02(arg1, arg2)
            elseif f42_local1 <= 85 then
                LossRaceSoldierEngineer300000_Act03(arg1, arg2)
            else
                LossRaceSoldierEngineer300000_Act04(arg1, arg2)
            end
            return true
        elseif arg1:GetSpecialEffectActivateInterruptId(10161) then
            arg2:ClearSubGoal()
        elseif arg1:GetSpecialEffectActivateInterruptId(10173) then
            arg2:ClearSubGoal()
        elseif arg1:GetSpecialEffectActivateInterruptId(10186) then
            local f42_local2 = arg1:GetDist(TARGET_ENE_0)
            local f42_local3 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f42_local2 <= 8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(10187) then
            local f42_local2 = arg1:GetDist(TARGET_ENE_0)
            local f42_local3 = arg1:GetRandam_Int(1, 100)
            if f42_local2 <= 5 then
                if f42_local3 > 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    local f42_local4 = 6
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.5, TARGET_ENE_0, f42_local4, TARGET_ENE_0, true, -1)
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
            local f42_local2 = arg1:GetDist(TARGET_ENE_0)
            local f42_local3 = arg1:GetRandam_Int(1, 100)
            selectFate_ToB = 1
            selectFate_ToBL = 1
            selectFate_ToBR = 1
            selectFate_ToL = 1
            selectFate_ToR = 1
            warpDist_x = arg1:GetRandam_Int(3, 5)
            if arg1:GetNumber(15) == 1 then
                selectFate_ToBL = 0
                selectFate_ToBR = 0
                selectFate_ToL = 0
                selectFate_ToR = 0
            elseif arg1:GetNumber(15) == 2 then
                selectFate_ToB = 0
                warpDist_x = arg1:GetRandam_Int(7, 10)
            elseif arg1:GetNumber(15) == 3 then
                selectFate_ToB = 0
                selectFate_ToBR = 0
                selectFate_ToR = 0
            elseif arg1:GetNumber(15) == 4 then
                selectFate_ToB = 0
                selectFate_ToBL = 0
                selectFate_ToL = 0
            end
            local f42_local4 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
            local f42_local5 = 0
            local f42_local6 = 0
            local f42_local7 = arg1:GetMapHitRadius(TARGET_SELF)
            local f42_local8 = arg1:GetDist(TARGET_ENE_0)
            local f42_local9 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + f42_local7, f42_local7, 0) <= warpDist_x then
                selectFate_ToB = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + f42_local7, f42_local7, 0) <= warpDist_x then
                selectFate_ToBL = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + f42_local7, f42_local7, 0) <= warpDist_x then
                selectFate_ToBR = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + f42_local7, f42_local7, 0) <= warpDist_x then
                selectFate_ToL = 0
            end
            if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + f42_local7, f42_local7, 0) <= warpDist_x then
                selectFate_ToR = 0
            end
            local f42_local10 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
            local f42_local11 = AI_DIR_TYPE_ToB
            local f42_local12 = 0
            local f42_local13 = TARGET_ENE_0
            if 0 == selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
                arg1:SetNumber(15, 5)
            elseif 0 ~= AI_DIR_TYPE_ToB and f42_local10 <= selectFate_ToB then
                f42_local11 = AI_DIR_TYPE_ToB
                f42_local12 = warpDist_x
                f42_local13 = TARGET_ENE_0
            elseif 0 ~= selectFate_2 and f42_local10 <= selectFate_ToB + selectFate_ToBL then
                f42_local11 = AI_DIR_TYPE_ToBL
                f42_local12 = warpDist_x
                f42_local13 = TARGET_ENE_0
            elseif 0 ~= selectFate_3 and f42_local10 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
                f42_local11 = AI_DIR_TYPE_ToBR
                f42_local12 = warpDist_x
                f42_local13 = TARGET_ENE_0
            elseif 0 ~= selectFate_4 and f42_local10 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
                f42_local11 = AI_DIR_TYPE_ToL
                f42_local12 = warpDist_x
                f42_local13 = TARGET_ENE_0
            elseif 0 ~= selectFate_4 and f42_local10 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
                f42_local11 = AI_DIR_TYPE_ToR
                f42_local12 = warpDist_x
                f42_local13 = TARGET_ENE_0
            end
            if arg1:GetNumber(15) == 5 then
                arg1:SetNumber(15, 0)
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f42_local11, f42_local12, f42_local13, 5, -2)
                arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
            else
                arg1:SetNumber(15, 0)
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f42_local11, f42_local12, f42_local13, 5, -2)
                arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_LossRaceSoldierEngineer300001_AfterAttackAct, "LossRaceSoldierEngineer300001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LossRaceSoldierEngineer300001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


