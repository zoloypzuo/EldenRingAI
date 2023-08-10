RegisterTableGoal(GOAL_Morgott213000_Battle, "Morgott213000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    arg1:SetStringIndexedNumber("ShootInerruptFlg", 0)
    arg1:SetStringIndexedNumber("HeatUpMiss_Flg", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:DeleteObserve(0)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16201) or arg1:HasSpecialEffectId(TARGET_SELF, 16203) then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
    end
    if arg1:GetStringIndexedNumber("ShootInerruptFlg") > 0 then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", arg1:GetStringIndexedNumber("ShootInerruptFlg") - 1)
    elseif arg1:GetStringIndexedNumber("ShootInerruptFlg") < 0 then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", 0)
    end
    arg1:SetNumber(5, 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(2, 0)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetEventRequest()
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16221)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16221)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16223)
    arg1:SetNumber(7, arg1:GetNumber(7) + 1)
    arg1:SetNumber(8, 0)
    if arg1:GetStringIndexedNumber("ShootInerruptFlg") >= 1 then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
    end
    if arg1:GetHpRate(TARGET_SELF) < 0.65 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false then
        f2_local0[21] = 10000000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16202) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20) and arg1:GetTimer(0) <= 0 and f2_local3 > 6.5 then
        arg1:SetTimer(0, 12)
        if f2_local3 > 20 then
            f2_local0[1] = 5
            f2_local0[20] = 95
        else
            f2_local0[1] = 5
            f2_local0[12] = 65
            if f2_local3 > 5 then
                f2_local0[20] = 30
            end
        end
        if f2_local3 < 15 then
            f2_local0[9] = 50
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 10 then
            f2_local0[3] = 30
            f2_local0[15] = 20
            f2_local0[7] = 30
            f2_local0[41] = 0
            f2_local0[20] = 50
            if arg1:GetStringIndexedNumber("Run_Odds") ~= 100 then
                f2_local0[40] = 40
            end
            if f2_local3 < 15 then
                f2_local0[12] = 50
                if arg1:GetStringIndexedNumber("Run_Odds") ~= 100 then
                    f2_local0[44] = 30
                end
            end
            if f2_local3 < 15 then
                f2_local0[9] = 50
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[1] = 10
                f2_local0[2] = 10
                f2_local0[3] = 30
                f2_local0[7] = 20
                f2_local0[12] = 30
                f2_local0[15] = 100
                f2_local0[20] = 40
            else
                f2_local0[2] = 20
                f2_local0[16] = 0
                f2_local0[15] = 100
                f2_local0[47] = 30
            end
            if f2_local3 < 15 then
                f2_local0[9] = 50
            end
            if f2_local3 > 7.5 and arg1:GetStringIndexedNumber("Run_Odds") ~= 100 then
                f2_local0[44] = 30
            end
            if f2_local3 < 7.3 then
                f2_local0[7] = 0
            end
        elseif f2_local3 > 1.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[1] = 20
                f2_local0[2] = 30
                f2_local0[3] = 10
                f2_local0[4] = 30
                f2_local0[5] = 0
                f2_local0[12] = 40
                f2_local0[14] = 100
                f2_local0[16] = 10
            else
                f2_local0[2] = 30
                f2_local0[4] = 30
                f2_local0[5] = 20
                f2_local0[12] = 40
                f2_local0[13] = 50
                f2_local0[16] = 10
                f2_local0[47] = 20
            end
            if arg1:GetNumber(7) > 4 * 2 and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
                f2_local0[5] = 1000000
            end
        else
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[1] = 25
                f2_local0[2] = 20
                f2_local0[4] = 20
                f2_local0[5] = 10
                f2_local0[47] = 10
                f2_local0[12] = 40
                f2_local0[14] = 100
                f2_local0[16] = 40
            else
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                    f2_local0[2] = 40
                    f2_local0[47] = 10
                    f2_local0[16] = 50
                else
                    f2_local0[43] = 0
                    f2_local0[47] = 30
                    f2_local0[16] = 50
                end
                f2_local0[13] = 50
            end
            if arg1:GetNumber(7) > 4 * 2 and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
                f2_local0[5] = 1000000
            end
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, -1, 3) then
        f2_local0[8] = 30
        f2_local0[47] = 10
        f2_local0[13] = 40
    elseif f2_local3 < 4 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
            f2_local0[2] = 60
            f2_local0[47] = 10
        else
            f2_local0[47] = 60
        end
        f2_local0[13] = 70
    else
        f2_local0[42] = 100
    end
    if f2_local3 <= 7.5 then
        f2_local0[20] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false and arg1:GetNumber(0) == 0 then
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) >= 0.65 then
        f2_local0[9] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
        f2_local0[7] = 0
    end
    if arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) == false and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) == false then
        f2_local0[44] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9999) and arg1:GetStringIndexedNumber("Run_Odds") == 0 and arg1:GetNumber(7) > 4 then
        f2_local0[44] = 9000
        if f2_local3 > 7 and f2_local4 < 30 then
            f2_local0[44] = 0
            arg1:SetNumber(7, 0)
        elseif f2_local3 <= 7 and arg1:HasSpecialEffectId(TARGET_SELF, 16202) == false then
            f2_local0[44] = 0
        end
    end
    if arg1:GetNumber(6) == 0 then
        f2_local0[20] = 0
        f2_local0[7] = 0
        arg1:SetNumber(6, 1)
    end
    f2_local0[10] = 0
    f2_local0[11] = 0
    f2_local0[6] = 0
    f2_local0[16] = 0
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 30, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3006, 30, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3014, 30, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3025, 30, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3028, 30, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3029, 30, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3027, 40, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3018, 40, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3020, 40, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3021, 40, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3010, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3030, 30, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3033, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3032, 30, f2_local0[15], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3033, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3035, 40, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3036, 40, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3023, 30, f2_local0[18], 0)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3034, 30, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[20], 0)
    f2_local0[43] = SetCoolTime(arg1, arg2, 6001, 20, f2_local0[43], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Morgott213000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Morgott213000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Morgott213000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Morgott213000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Morgott213000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Morgott213000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Morgott213000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Morgott213000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Morgott213000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Morgott213000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Morgott213000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Morgott213000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Morgott213000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Morgott213000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Morgott213000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Morgott213000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Morgott213000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Morgott213000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Morgott213000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Morgott213000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Morgott213000_Act21)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Morgott213000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Morgott213000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Morgott213000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Morgott213000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, Morgott213000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Morgott213000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, Morgott213000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, Morgott213000_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, Morgott213000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function Morgott213000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5.6
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 10
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act02(arg0, arg1, arg2)
    local f4_local0 = 6.3
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 10
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 10
    local f4_local8 = 3006
    local f4_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act03(arg0, arg1, arg2)
    local f5_local0 = 5.2
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 10
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 10
    local f5_local8 = 3011
    local f5_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act04(arg0, arg1, arg2)
    local f6_local0 = 4.2
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 10
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 10
    local f6_local8 = 3014
    local f6_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act05(arg0, arg1, arg2)
    local f7_local0 = 10
    local f7_local1 = 3025
    local f7_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 0
    local f7_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local0, f7_local1, TARGET_ENE_0, f7_local2, f7_local3, f7_local4, 0, 0)
    arg0:SetNumber(7, arg0:GetNumber(7) + 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act06(arg0, arg1, arg2)
    local f8_local0 = 25
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 10
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 10
    local f8_local8 = 3028
    local f8_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 2
    local f8_local11 = 120
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act07(arg0, arg1, arg2)
    local f9_local0 = 10
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 10
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 10
    local f9_local8 = 3029
    local f9_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act08(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = 3024
    local f10_local2 = 6
    local f10_local3 = 0
    local f10_local4 = 140
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local0, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16200) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f11_local0 > 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f11_local1 = 4
        local f11_local2 = 6003
        local f11_local3 = TARGET_ENE_0
        local f11_local4 = 0
        local f11_local5 = AI_DIR_TYPE_R
        local f11_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f11_local1 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f11_local1 then
            f11_local1 = 4
            local f11_local2 = 6002
            local f11_local3 = TARGET_ENE_0
            local f11_local4 = 0
            local f11_local5 = AI_DIR_TYPE_L
            local f11_local6 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Morgott213000_Act10(arg0, arg1, arg2)
    local f12_local0 = 12
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 10
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 10
    local f12_local8 = 3017
    local f12_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act11(arg0, arg1, arg2)
    local f13_local0 = 12
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 10
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 10
    local f13_local8 = 3019
    local f13_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act12(arg0, arg1, arg2)
    local f14_local0 = 12
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 10
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 10
    local f14_local8 = 3021
    local f14_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act13(arg0, arg1, arg2)
    local f15_local0 = 10
    local f15_local1 = 3010
    local f15_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 0
    local f15_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local0, f15_local1, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act14(arg0, arg1, arg2)
    local f16_local0 = 4
    local f16_local1 = 0
    local f16_local2 = 999
    local f16_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f16_local4 = 0
    local f16_local5 = 2
    local f16_local6 = 10
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 10
    local f16_local8 = 3030
    local f16_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local10 = 0
    local f16_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local7, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act15(arg0, arg1, arg2)
    local f17_local0 = 6
    local f17_local1 = 0
    local f17_local2 = 999
    local f17_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 10
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16210)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16211)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16212)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local f17_local7 = 10
    local f17_local8 = 3032
    local f17_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local7, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act16(arg0, arg1, arg2)
    local f18_local0 = 13
    local f18_local1 = 0
    local f18_local2 = 999
    local f18_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f18_local4 = 0
    local f18_local5 = 2
    local f18_local6 = 10
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 10
    local f18_local8 = 3035
    local f18_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f18_local7, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act17(arg0, arg1, arg2)
    local f19_local0 = 10
    local f19_local1 = 3036
    local f19_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local3 = 2
    local f19_local4 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local0, f19_local1, TARGET_ENE_0, f19_local2, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act18(arg0, arg1, arg2)
    local f20_local0 = 5.6
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 10
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local f20_local7 = 10
    local f20_local8 = 3023
    local f20_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local7, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act19(arg0, arg1, arg2)
    local f21_local0 = 4.5
    local f21_local1 = 0
    local f21_local2 = 999
    local f21_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 10
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16213)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16214)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16215)
    local f21_local7 = 10
    local f21_local8 = 3034
    local f21_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local7, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act20(arg0, arg1, arg2)
    local f22_local0 = 30
    local f22_local1 = 0
    local f22_local2 = 999
    local f22_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 10
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 10
    local f22_local8 = 3017
    local f22_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local7, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act21(arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:GetStringIndexedNumber("HeatUpMiss_Flg") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f23_local0 > 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3025, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f23_local1 = 4
        local f23_local2 = 6003
        local f23_local3 = TARGET_ENE_0
        local f23_local4 = 0
        local f23_local5 = AI_DIR_TYPE_R
        local f23_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        local f23_local1 = 4
        local f23_local2 = 6002
        local f23_local3 = TARGET_ENE_0
        local f23_local4 = 0
        local f23_local5 = AI_DIR_TYPE_L
        local f23_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    end
    arg0:SetStringIndexedNumber("HeatUpMiss_Flg", 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act40(arg0, arg1, arg2)
    local f24_local0 = 2
    local f24_local1 = 10
    local f24_local2 = true
    local f24_local3 = -1
    if arg0:GetStringIndexedNumber("Run_Odds") == 100 then
        walk = false
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local0, TARGET_ENE_0, f24_local1, TARGET_SELF, f24_local2, f24_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act41(arg0, arg1, arg2)
    local f25_local0 = 2
    local f25_local1 = 8
    local f25_local2 = false
    local f25_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, f25_local1, TARGET_SELF, f25_local2, f25_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(30, 60), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act43(arg0, arg1, arg2)
    local f27_local0 = 10
    local f27_local1 = -1
    local f27_local2 = 100
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 1
    local f27_local7 = 0
    local f27_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    local f27_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act44(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetNumber(7, 0)
    local f28_local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2)
    local f28_local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2)
    local f28_local3 = arg0:GetRandam_Int(0, 1)
    if f28_local2 == true and f28_local1 == true then

    elseif f28_local2 == true and f28_local1 == false then
        f28_local3 = 0
    elseif f28_local2 == false and f28_local1 == true then
        f28_local3 = 1
    elseif f28_local2 == false and f28_local1 == false then
        f28_local3 = 2
    end
    if f28_local0 > 7.5 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7 + arg0:GetMapHitRadius(TARGET_SELF))
    else
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2 + arg0:GetMapHitRadius(TARGET_SELF))
    end
    local f28_local4 = 3
    local f28_local5 = TARGET_ENE_0
    local f28_local6 = f28_local3
    local f28_local7 = 100
    local f28_local8 = true
    local f28_local9 = -1
    local f28_local10 = GUARD_GOAL_DESIRE_RET_Failed
    local f28_local11 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f28_local4, f28_local5, f28_local6, f28_local7, f28_local8, isLifeSuccess, f28_local9, f28_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act45(arg0, arg1, arg2)
    local f29_local0 = 6
    local f29_local1 = 15
    local f29_local2 = true
    local f29_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local0, TARGET_ENE_0, f29_local1, TARGET_SELF, f29_local2, f29_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213000_Act46(arg0, arg1, arg2)
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

function Morgott213000_Act47(arg0, arg1, arg2)
    arg0:SetNumber(7, arg0:GetNumber(7) + 2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f31_local0 = 4
        local f31_local1 = 6003
        local f31_local2 = TARGET_ENE_0
        local f31_local3 = 0
        local f31_local4 = AI_DIR_TYPE_R
        local f31_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f31_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f31_local0 then
            f31_local0 = 4
            local f31_local1 = 6002
            local f31_local2 = TARGET_ENE_0
            local f31_local3 = 0
            local f31_local4 = AI_DIR_TYPE_L
            local f31_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f31_local0, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Morgott213000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Morgott213000_AfterAttackAct, 10)
    
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
    if arg1:GetHpRate(TARGET_ENE_0) <= 0 then
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
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16210)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16211)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16212)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16213)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16214)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16215)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16216)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16217)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16218)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16219)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16220)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16221)
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16222)
        arg1:SetNumber(7, arg1:GetNumber(7) + 20)
        return false
    end
    local f35_local0 = 20 - arg1:GetMapHitRadius(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = 20
    local f35_local3 = arg1:GetDist(TARGET_ENE_0)
    local f35_local4 = arg1:GetRandam_Int(1, 100)
    local f35_local5 = 0
    local f35_local6 = 0
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) or arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        f35_local5 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        f35_local6 = 1
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 16233) then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", 2)
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:GetNumber(2) > 0 then
        arg1:SetNumber(2, 0)
    end
    if arg1:IsInterupt(INTERUPT_UseItem) and arg1:HasSpecialEffectId(TARGET_SELF, 16233) and arg1:GetTimer(3) <= 0 and f35_local3 > 8 then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", 2)
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg1:SetNumber(5, 1)
        arg1:SetNumber(8, arg1:GetNumber(8) + 1)
        if arg1:GetNumber(8) >= 4 then
            arg1:SetNumber(8, 0)
            arg1:SetNumber(7, arg1:GetNumber(7) + 1)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f35_local4 < 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and arg1:GetNumber(1) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10.5) and f35_local3 > 5.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and arg1:GetNumber(1) < 1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and f35_local3 >= 7.5 and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8) and f35_local4 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and f35_local3 >= 7.5 and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5) and f35_local4 < 65 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and arg1:GetNumber(1) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) and arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and arg1:GetNumber(1) < 1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16210) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3030, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16211) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) and arg1:GetTimer(4) <= 0 and f35_local6 == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 16222) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 18 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg1:SetTimer(4, 15)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16212) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f35_local5 == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16213) then
            if arg1:GetTimer(2) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 280, -1, 3.5) then
                arg1:SetTimer(2, 15)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetNumber(7, arg1:GetNumber(7) + 3)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16214) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and f35_local6 == 0 then
                arg1:SetTimer(2, 15)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) and f35_local3 >= 7.5 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) and f35_local4 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16215) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 110, -1, 3.8 + arg1:GetMapHitRadius(TARGET_SELF)) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, -1, 2.7 + arg1:GetMapHitRadius(TARGET_SELF)) and f35_local6 == 0 then
                arg1:SetTimer(2, 15)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3039, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) and f35_local3 >= 7.5 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) and f35_local4 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            else
                return false
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            if f35_local3 <= 5.4 then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16216) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false and f35_local4 < 40 then
                    return false
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) and f35_local4 < 60 then
                    return false
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16217) then
            if f35_local3 < 6 then
                return false
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 11 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16218) then
            if arg1:GetAttackPassedTime(3034) > 25 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3034, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7) and f35_local5 == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7) and arg1:GetNumber(1) > 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetNumber(7, arg1:GetNumber(7) + 3)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6) and f35_local3 > 3.5 and f35_local4 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 2.5) and f35_local4 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 6) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 3 + arg1:GetMapHitRadius(TARGET_SELF)) then

            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40) and f35_local3 >= 7.5 and arg1:GetNumber(2) < 1 then
                arg1:SetNumber(2, 2 + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16219) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 8) and arg1:GetNumber(1) < 1 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16220) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f35_local5 == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16221) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 10) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 7) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16223) then
            arg2:ClearSubGoal()
            if f35_local4 < 50 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
            end
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Morgott213000_AfterAttackAct, "Morgott213000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213000_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


