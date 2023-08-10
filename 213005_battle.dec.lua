RegisterTableGoal(GOAL_Morgott213005_Battle, "Morgott213005_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213005_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("ShootInerruptFlg", 0)
    arg1:SetStringIndexedNumber("ComboRoopCnt", 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:SetStringIndexedNumber("Run_Odds", 0)
    arg1:SetStringIndexedNumber("EnemyDown_Flg", 0)
    arg1:SetStringIndexedNumber("Test_Flg", 0)
    arg1:SetStringIndexedNumber("ComboRoopCnt", 0)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16201) or arg1:HasSpecialEffectId(TARGET_SELF, 16203) then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
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
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16232)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16216)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16217)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16218)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16219)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16220)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16222)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16223)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16226)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16227)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16232)
    arg1:SetNumber(5, arg1:GetNumber(5) + 1)
    arg1:SetNumber(6, 0)
    if arg1:GetStringIndexedNumber("ShootInerruptFlg") > 0 then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", arg1:GetStringIndexedNumber("ShootInerruptFlg") - 1)
    elseif arg1:GetStringIndexedNumber("ShootInerruptFlg") < 0 then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", 0)
    end
    if arg1:GetStringIndexedNumber("ShootInerruptFlg") >= 1 then
        arg1:SetStringIndexedNumber("Run_Odds", 100)
    end
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 90) or not not arg1:HasSpecialEffectId(TARGET_ENE_0, 30) or arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) then
        arg1:SetStringIndexedNumber("EnemyDown_Flg", 1)
    else
        arg1:SetStringIndexedNumber("EnemyDown_Flg", 0)
    end
    arg1:SetStringIndexedNumber("Test_Flg", arg1:GetRemainingAttackCoolTime(3008))
    if arg1:GetNumber(7) == 0 then
        f2_local0[40] = 90000
    elseif arg1:GetHpRate(TARGET_SELF) <= 0.8 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[15] = 10000000
    elseif arg1:GetStringIndexedNumber("EnemyDown_Flg") == 1 and arg1:GetRemainingAttackCoolTime(3008) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 15) then
        f2_local0[14] = 90000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 16203) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 14 then
            f2_local0[1] = 1
            f2_local0[10] = 80
            f2_local0[13] = 5
            f2_local0[18] = 5
            f2_local0[20] = 80
            f2_local0[21] = 5
        elseif f2_local3 > 8 then
            f2_local0[1] = 1
            f2_local0[10] = 60
            f2_local0[13] = 5
            f2_local0[18] = 5
            f2_local0[20] = 60
        else
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[10] = 60
            end
            f2_local0[1] = 1
            f2_local0[2] = 1
            f2_local0[3] = 1
            f2_local0[13] = 5
            f2_local0[20] = 60
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 999) then
        if f2_local3 > 14 then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 30
            f2_local0[10] = 60
            f2_local0[13] = 50
            f2_local0[18] = 50
            f2_local0[20] = 50
            f2_local0[40] = 0
            f2_local0[41] = 0
            f2_local0[21] = 125
            if arg1:GetStringIndexedNumber("Run_Odds") == 0 then
                f2_local0[44] = 40
            end
        elseif f2_local3 > 5 then
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[14] = 100
            f2_local0[20] = 50
            f2_local0[24] = 50
            if f2_local3 > 8 then
                f2_local0[3] = 50
                f2_local0[10] = 100
                f2_local0[13] = 100
                f2_local0[18] = 100
                f2_local0[20] = 80
                f2_local0[21] = 150
                f2_local0[24] = 80
            end
            if f2_local3 > 7.5 and arg1:GetStringIndexedNumber("Run_Odds") == 0 then
                f2_local0[44] = 40
            end
            if arg1:GetNumber(5) > 4 and arg1:HasSpecialEffectId(TARGET_SELF, 16202) then
                f2_local0[44] = 9000
            end
        else
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[1] = 40
                f2_local0[2] = 25
                f2_local0[4] = 20
                f2_local0[5] = 20
                f2_local0[6] = 50
                f2_local0[14] = 100
                f2_local0[15] = 60
                f2_local0[23] = 30
                f2_local0[24] = 50
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 120) then
                f2_local0[2] = 40
                f2_local0[4] = 20
                f2_local0[5] = 15
                f2_local0[14] = 100
                f2_local0[15] = 60
                f2_local0[23] = 20
                f2_local0[43] = 10
                f2_local0[47] = 20
            else
                f2_local0[4] = 30
                f2_local0[5] = 40
                f2_local0[15] = 60
                f2_local0[14] = 100
                f2_local0[20] = 20
                f2_local0[43] = 15
                f2_local0[47] = 30
            end
            if arg1:GetNumber(5) > 4 and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 4) then
                f2_local0[43] = 100
            end
            if arg1:GetNumber(5) > 4 * 2 and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
                f2_local0[5] = 1000000
            end
            if arg1:GetNumber(5) > 4 and arg1:HasSpecialEffectId(TARGET_SELF, 16202) then
                f2_local0[44] = 9000
            end
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, -1, 3 + arg1:GetMapHitRadius(TARGET_SELF)) then
        f2_local0[8] = 55
        f2_local0[15] = 80
        f2_local0[47] = 30
    elseif f2_local3 < 7 then
        f2_local0[47] = 50
        if f2_local3 <= 5 then
            f2_local0[4] = 50
            f2_local0[15] = 50
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            f2_local0[23] = 50
        else
            f2_local0[20] = 50
        end
    else
        f2_local0[42] = 20
        f2_local0[47] = 80
    end
    if f2_local3 <= 7.5 then
        f2_local0[13] = 0
    end
    if f2_local3 < 5 then
        f2_local0[3] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16202) then
        f2_local0[5] = 0
    end
    if arg1:GetTimer(1) > 0 then
        f2_local0[4] = 0
    end
    if arg1:GetTimer(2) > 0 then
        f2_local0[23] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.8 then
        f2_local0[15] = 0
        f2_local0[21] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) < 0.3 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 8) then
        f2_local0[19] = 60
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false then
        f2_local0[14] = 0
        f2_local0[24] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9999) and arg1:GetStringIndexedNumber("Run_Odds") == 0 and arg1:GetNumber(5) > 4 then
        f2_local0[44] = 9000
        if f2_local3 > 7 and f2_local4 < 30 then
            f2_local0[44] = 0
            arg1:SetNumber(5, 0)
        elseif f2_local3 <= 7 and arg1:HasSpecialEffectId(TARGET_SELF, 16202) == false then
            f2_local0[44] = 0
        end
    end
    if arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 3) == false and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 3) == false then
        f2_local0[44] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) <= 0.8 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[44] = 0
    end
    if arg1:GetNumber(7) == 0 then
        f2_local0[13] = 0
        f2_local0[18] = 0
        arg1:SetNumber(7, 1)
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3039, 30, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3029, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3038, 20, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3018, 50, f2_local0[10], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3037, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3008, 40, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3023, 50, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3026, 40, f2_local0[16], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3022, 30, f2_local0[17], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3008, 30, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3026, 40, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3028, 20, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3029, 15, f2_local0[21], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3032, 20, f2_local0[22], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3033, 20, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3034, 30, f2_local0[24], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3036, 30, f2_local0[24], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Morgott213005_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Morgott213005_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Morgott213005_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Morgott213005_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Morgott213005_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Morgott213005_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Morgott213005_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Morgott213005_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Morgott213005_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Morgott213005_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Morgott213005_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Morgott213005_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Morgott213005_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Morgott213005_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Morgott213005_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Morgott213005_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Morgott213005_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Morgott213005_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Morgott213005_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Morgott213005_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Morgott213005_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Morgott213005_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Morgott213005_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Morgott213005_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Morgott213005_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Morgott213005_Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Morgott213005_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Morgott213005_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Morgott213005_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Morgott213005_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, Morgott213005_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, Morgott213005_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, Morgott213005_Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, Morgott213005_Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, Morgott213005_Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, Morgott213005_Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Morgott213005_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Morgott213005_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Morgott213005_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Morgott213005_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, Morgott213005_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Morgott213005_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, Morgott213005_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, Morgott213005_Act47)
    local f2_local7 = REGIST_FUNC(arg1, arg2, Morgott213005_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function Morgott213005_Act01(arg0, arg1, arg2)
    local f3_local0 = 6
    local f3_local1 = 0
    local f3_local2 = 999
    local f3_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f3_local7, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act02(arg0, arg1, arg2)
    local f4_local0 = 7
    local f4_local1 = 0
    local f4_local2 = 999
    local f4_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f4_local7 = 10
    local f4_local8 = 3010
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f4_local7, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act03(arg0, arg1, arg2)
    local f5_local0 = 9
    local f5_local1 = 0
    local f5_local2 = 999
    local f5_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f5_local7 = 10
    local f5_local8 = 3015
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f5_local7, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act04(arg0, arg1, arg2)
    local f6_local0 = 7.5
    local f6_local1 = 0
    local f6_local2 = 999
    local f6_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:SetTimer(1, 10)
    local f6_local7 = 10
    local f6_local8 = 3004
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local7, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act05(arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 0
    local f7_local2 = 999
    local f7_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 10
    local f7_local8 = 3039
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    arg0:SetNumber(5, arg0:GetNumber(5) + 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local7, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act06(arg0, arg1, arg2)
    local f8_local0 = 4
    local f8_local1 = 0
    local f8_local2 = 999
    local f8_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 10
    local f8_local8 = 3014
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local7, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act07(arg0, arg1, arg2)
    local f9_local0 = 20
    local f9_local1 = 0
    local f9_local2 = 999
    local f9_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f9_local7 = 10
    local f9_local8 = 3029
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f9_local7, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act08(arg0, arg1, arg2)
    local f10_local0 = 10
    local f10_local1 = 3038
    local f10_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 0
    local f10_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local0, f10_local1, TARGET_ENE_0, f10_local2, f10_local3, f10_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act09(arg0, arg1, arg2)
    local f11_local0 = 10
    local f11_local1 = 3024
    local f11_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f11_local0, f11_local1, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act10(arg0, arg1, arg2)
    local f12_local0 = 16
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 2
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f12_local7 = 10
    local f12_local8 = 3018
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local7, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act11(arg0, arg1, arg2)
    local f13_local0 = 10
    local f13_local1 = 0
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 2
    local f13_local6 = 2
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f13_local7 = 10
    local f13_local8 = 3019
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f13_local7, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act12(arg0, arg1, arg2)
    local f14_local0 = 10
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 2
    local f14_local6 = 2
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f14_local7 = 10
    local f14_local8 = 3021
    local f14_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local10 = 0
    local f14_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local7, f14_local8, TARGET_ENE_0, f14_local9, f14_local10, f14_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act13(arg0, arg1, arg2)
    local f15_local0 = 30
    local f15_local1 = 0
    local f15_local2 = 999
    local f15_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f15_local4 = 0
    local f15_local5 = 2
    local f15_local6 = 10
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 10
    local f15_local8 = 3037
    local f15_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local7, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act14(arg0, arg1, arg2)
    if arg0:GetStringIndexedNumber("EnemyDown_Flg") == 1 then
        local f16_local0 = 10
        local f16_local1 = 3008
        local f16_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local3 = 0
        local f16_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, f16_local0, f16_local1, TARGET_ENE_0, f16_local2, f16_local3, f16_local4, 0, 0)
    else
        local f16_local0 = 12
        local f16_local1 = 0
        local f16_local2 = 999
        local f16_local3 = 100
        local f16_local4 = 0
        local f16_local5 = 2
        local f16_local6 = 10
        Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
        local f16_local7 = 10
        local f16_local8 = 3008
        local f16_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f16_local10 = 0
        local f16_local11 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f16_local7, f16_local8, TARGET_ENE_0, f16_local9, f16_local10, f16_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act15(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f17_local0 = 10
    local f17_local1 = 3023
    local f17_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local3 = 0
    local f17_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f17_local0, f17_local1, TARGET_ENE_0, f17_local2, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f18_local0 > 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
        local f18_local1 = 4
        local f18_local2 = 6001
        local f18_local3 = TARGET_ENE_0
        local f18_local4 = 0
        local f18_local5 = AI_DIR_TYPE_B
        local f18_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local1, f18_local2, turnTarget, f18_local4, f18_local5, f18_local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f18_local1 = 4
        local f18_local2 = 6003
        local f18_local3 = TARGET_ENE_0
        local f18_local4 = 0
        local f18_local5 = AI_DIR_TYPE_R
        local f18_local6 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f18_local1 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f18_local1 then
            f18_local1 = 4
            local f18_local2 = 6002
            local f18_local3 = TARGET_ENE_0
            local f18_local4 = 0
            local f18_local5 = AI_DIR_TYPE_L
            local f18_local6 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3027, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Morgott213005_Act17(arg0, arg1, arg2)
    local f19_local0 = 20
    local f19_local1 = 0
    local f19_local2 = 999
    local f19_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 2
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f19_local7 = 10
    local f19_local8 = 3022
    local f19_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local10 = 0
    local f19_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f19_local7, f19_local8, TARGET_ENE_0, f19_local9, f19_local10, f19_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act18(arg0, arg1, arg2)
    local f20_local0 = 20
    local f20_local1 = 0
    local f20_local2 = 999
    local f20_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f20_local4 = 0
    local f20_local5 = 2
    local f20_local6 = 2
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f20_local7 = 10
    local f20_local8 = 3006
    local f20_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local7, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act19(arg0, arg1, arg2)
    local f21_local0 = 7
    local f21_local1 = 0
    local f21_local2 = 999
    local f21_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 2
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f21_local7 = 10
    local f21_local8 = 3026
    local f21_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f21_local7, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act20(arg0, arg1, arg2)
    local f22_local0 = 14
    local f22_local1 = 0
    local f22_local2 = 999
    local f22_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 2
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16232)
    local f22_local7 = 10
    local f22_local8 = 3028
    local f22_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f22_local7, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act21(arg0, arg1, arg2)
    local f23_local0 = 20
    local f23_local1 = 0
    local f23_local2 = 999
    local f23_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f23_local4 = 0
    local f23_local5 = 2
    local f23_local6 = 2
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    local f23_local7 = 10
    local f23_local8 = 3029
    local f23_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local10 = 0
    local f23_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f23_local7, f23_local8, TARGET_ENE_0, f23_local9, f23_local10, f23_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act22(arg0, arg1, arg2)
    local f24_local0 = 4
    local f24_local1 = 0
    local f24_local2 = 999
    local f24_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f24_local4 = 0
    local f24_local5 = 2
    local f24_local6 = 2
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 10
    local f24_local8 = 3032
    local f24_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local10 = 0
    local f24_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f24_local7, f24_local8, TARGET_ENE_0, f24_local9, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act23(arg0, arg1, arg2)
    local f25_local0 = 6.5
    local f25_local1 = 0
    local f25_local2 = 999
    local f25_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f25_local4 = 0
    local f25_local5 = 2
    local f25_local6 = 2
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16231)
    arg0:SetTimer(2, 12)
    local f25_local7 = 10
    local f25_local8 = 3033
    local f25_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local10 = 0
    local f25_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f25_local7, f25_local8, TARGET_ENE_0, f25_local9, f25_local10, f25_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act24(arg0, arg1, arg2)
    local f26_local0 = 13
    local f26_local1 = 0
    local f26_local2 = 999
    local f26_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f26_local4 = 0
    local f26_local5 = 2
    local f26_local6 = 2
    Approach_Act_Flex(arg0, arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local7 = 10
    local f26_local8 = 3034
    local f26_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local10 = 0
    local f26_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f26_local7, f26_local8, TARGET_ENE_0, f26_local9, f26_local10, f26_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act25(arg0, arg1, arg2)
    arg0:SetTimer(4, 20)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20005, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20007, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20006, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    if f28_local0 < 11.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act30(arg0, arg1, arg2)
    local f29_local0 = 5
    local f29_local1 = 0
    local f29_local2 = 999
    local f29_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f29_local4 = 0
    local f29_local5 = 2
    local f29_local6 = 2
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3033, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act31(arg0, arg1, arg2)
    local f30_local0 = 5
    local f30_local1 = 0
    local f30_local2 = 999
    local f30_local3 = arg0:GetStringIndexedNumber("Run_Odds")
    local f30_local4 = 0
    local f30_local5 = 2
    local f30_local6 = 2
    Approach_Act_Flex(arg0, arg1, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, 3028, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act40(arg0, arg1, arg2)
    local f31_local0 = 10
    local f31_local1 = 10
    local f31_local2 = true
    local f31_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f31_local0, TARGET_ENE_0, f31_local1, TARGET_SELF, f31_local2, f31_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act41(arg0, arg1, arg2)
    local f32_local0 = 2
    local f32_local1 = 8
    local f32_local2 = false
    local f32_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f32_local0, TARGET_ENE_0, f32_local1, TARGET_SELF, f32_local2, f32_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act43(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 3)
    local f34_local0 = 10
    local f34_local1 = -1
    local f34_local2 = 100
    local f34_local3 = 0
    local f34_local4 = 0
    local f34_local5 = TARGET_ENE_0
    local f34_local6 = 1
    local f34_local7 = 0
    local f34_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f34_local0, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6, f34_local7, f34_local8)
    local f34_local9 = arg0:GetDist(TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act44(arg0, arg1, arg2)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetNumber(5, 0)
    local f35_local1 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 3)
    local f35_local2 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 3)
    local f35_local3 = arg0:GetRandam_Int(0, 1)
    if f35_local2 == true and f35_local1 == true then

    elseif f35_local2 == true and f35_local1 == false then
        f35_local3 = 0
    elseif f35_local2 == false and f35_local1 == true then
        f35_local3 = 1
    elseif f35_local2 == false and f35_local1 == false then
        f35_local3 = 2
    end
    if f35_local0 > 7.5 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7 + arg0:GetMapHitRadius(TARGET_SELF))
    else
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 2 + arg0:GetMapHitRadius(TARGET_SELF))
    end
    local f35_local4 = arg0:GetRandam_Int(2.5, 3.5)
    local f35_local5 = TARGET_ENE_0
    local f35_local6 = f35_local3
    local f35_local7 = 100
    local f35_local8 = true
    local f35_local9 = -1
    local f35_local10 = GUARD_GOAL_DESIRE_RET_Failed
    local f35_local11 = true
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f35_local4, f35_local5, f35_local6, f35_local7, f35_local8, isLifeSuccess, f35_local9, f35_local10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act45(arg0, arg1, arg2)
    local f36_local0 = 6
    local f36_local1 = 15
    local f36_local2 = true
    local f36_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f36_local0, TARGET_ENE_0, f36_local1, TARGET_SELF, f36_local2, f36_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act46(arg0, arg1, arg2)
    local f37_local0 = 3
    local f37_local1 = TARGET_ENE_0
    local f37_local2 = 8
    local f37_local3 = TARGET_ENE_0
    local f37_local4 = true
    local f37_local5 = -1
    local f37_local6 = GUARD_GOAL_DESIRE_RET_Failed
    local f37_local7 = false
    local f37_local8 = 1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, f37_local0, f37_local1, f37_local2, f37_local3, f37_local4, f37_local5, f37_local6, f37_local7, f37_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Morgott213005_Act47(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 3)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local f38_local0 = 4
        local f38_local1 = 6003
        local f38_local2 = TARGET_ENE_0
        local f38_local3 = 0
        local f38_local4 = AI_DIR_TYPE_R
        local f38_local5 = 0
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f38_local0, f38_local1, f38_local2, f38_local3, f38_local4, f38_local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        local f38_local0 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
        if f38_local0 then
            f38_local0 = 4
            local f38_local1 = 6002
            local f38_local2 = TARGET_ENE_0
            local f38_local3 = 0
            local f38_local4 = AI_DIR_TYPE_L
            local f38_local5 = 0
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f38_local0, f38_local1, f38_local2, f38_local3, f38_local4, f38_local5)
            GetWellSpace_Odds = 0
            return GetWellSpace_Odds
        end
    end
    
end

function Morgott213005_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Morgott213005_AfterAttackAct, 10)
    
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
    local f42_local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f42_local1 = 0
    local f42_local2 = 20
    local f42_local3 = arg1:GetDist(TARGET_ENE_0)
    local f42_local4 = arg1:GetRandam_Int(1, 100)
    local f42_local5 = arg1:GetRandam_Int(1, 100)
    local f42_local6 = arg1:GetRandam_Int(1, 100)
    local f42_local7 = arg1:GetRandam_Int(1, 100)
    local f42_local8 = 0
    if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 6992) or arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
        f42_local8 = 1
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        elseif arg1:IsInsideObserve(1) then
            arg1:DeleteObserve(1)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20009, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(16226) then
            arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 145, 3.5 + arg1:GetMapHitRadius(TARGET_SELF))
        elseif arg1:GetSpecialEffectActivateInterruptId(16227) then
            arg1:DeleteObserve(1)
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 16233) then
        arg1:SetStringIndexedNumber("ShootInerruptFlg", 2)
        if arg1:HasSpecialEffectId(TARGET_SELF, 16200) == true and f42_local3 > 8 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 4, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 0)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        arg1:SetNumber(6, arg1:GetNumber(6) + 1)
        if arg1:GetNumber(6) >= 4 then
            arg1:SetNumber(6, 0)
            arg1:SetNumber(5, arg1:GetNumber(5) + 1)
        end
        local f42_local9 = 0
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 5025) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5027) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5031) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5029) or arg1:HasSpecialEffectId(TARGET_SELF, 16232) then
            f42_local9 = 1
        end
        if f42_local9 == 1 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 5.5 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(4) <= 0 and f42_local4 < 40 then
            arg2:ClearSubGoal()
            Morgott213005_Act25(arg1, arg2)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16212) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                arg1:SetNumber(5, arg1:GetNumber(5) + 3)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if f42_local4 < 70 and arg1:GetTimer(2) <= 0 and f42_local3 < 5 then
                    arg1:SetTimer(2, 12)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif f42_local6 < 60 and f42_local3 > 2.4 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local3 > 2.4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(1) <= 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetTimer(1, 10)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 30 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if f42_local4 < 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                arg1:SetNumber(5, arg1:GetNumber(5) + 3)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local3 > 4.5 and f42_local5 > 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local6 > 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20007, TARGET_ENE_0, 6.5, 0, 120, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(1) <= 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetTimer(1, 10)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local4 < 65 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4.3 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local4 < 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetNumber(5, arg1:GetNumber(5) + 3)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 8.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3013, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(1) <= 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetTimer(1, 10)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 40 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local3 > 16 then
                if f42_local4 < 65 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16213) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local3 > 2.4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16214) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 6) and f42_local8 == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 18 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local3 > 3.5 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local4 < 60 and f42_local3 > 2.4 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(1) <= 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                if arg1:GetTimer(1) > 0 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                arg1:SetTimer(1, 10)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local5 < 50 then
                arg2:ClearSubGoal()
                Morgott213005_Act26(arg1, arg2)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local4 < 65 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16218) then
            arg1:SetStringIndexedNumber("ComboRoopCnt", arg1:GetStringIndexedNumber("ComboRoopCnt") + 1)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local4 < 70 and arg1:GetStringIndexedNumber("ComboRoopCnt") < 2 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3007, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local5 < 50 then
                arg2:ClearSubGoal()
                Morgott213005_Act26(arg1, arg2)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 20 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local4 < 65 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3037, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 16203) or arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16211) then
            if f42_local3 <= 5.4 or f42_local3 > 15 then
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 999) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16222) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:GetRemainingAttackCoolTime(3018) <= 0 and f42_local6 < 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if f42_local4 < 30 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:GetRemainingAttackCoolTime(3018) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 15.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 17 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local4 < 70 and arg1:GetHpRate(TARGET_SELF) <= 0.8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 18 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetHpRate(TARGET_SELF) <= 0.8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16231) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 140, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if f42_local3 > 2.4 and f42_local4 < 40 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 40, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) and arg1:GetTimer(3) <= 0 then
                    arg1:SetTimer(3, 35)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 19 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetTimer(3) <= 0 and arg1:HasSpecialEffectId(TARGET_SELF, 16200) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, -1, 15 + arg1:GetMapHitRadius(TARGET_SELF)) and f42_local4 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:HasSpecialEffectId(TARGET_SELF, 16212) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 0, 0, 0, 0, 0)
                arg1:SetNumber(5, arg1:GetNumber(5) + 3)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16220) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16219) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 6.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16232) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 8 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if f42_local4 < 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20008, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16216) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16200) == false and f42_local4 < 60 and f42_local3 > 4.5 then
                return false
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 16200) and f42_local4 < 30 and f42_local3 > 4.5 then
                return false
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local6 < 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if f42_local4 < 30 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 12 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16217) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if f42_local6 < 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 9.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, -1, 999) then
                    if arg1:GetRemainingAttackCoolTime(3018) <= 0 and f42_local6 < 60 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    elseif f42_local4 < 60 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                        return true
                    end
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, -1, 999) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 12 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:GetRemainingAttackCoolTime(3018) <= 0 and f42_local6 < 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            elseif arg1:GetRemainingAttackCoolTime(3018) <= 0 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 100, -1, 15.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 0, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 50 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, -1, 18 + arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetHpRate(TARGET_SELF) <= 0.8 and f42_local6 < 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3029, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0, 0)
                    return true
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16223) then
            local f42_local10 = 3000
            if f42_local4 < 25 then
                f42_local10 = 3000
            elseif f42_local4 < 50 then
                f42_local10 = 3003
            elseif f42_local4 < 75 then
                f42_local10 = 3035
            else
                f42_local10 = 3005
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f42_local10, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Morgott213005_AfterAttackAct, "Morgott213005_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Morgott213005_AfterAttackAct, true)
Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


