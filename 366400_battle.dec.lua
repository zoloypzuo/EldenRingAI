RegisterTableGoal(GOAL_TombShadow_366400_Battle, "TombShadow_366400_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TombShadow_366400_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(5, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 17265)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 17250)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsFinishTimer(0) then
        arg1:SetNumber(1, 1)
    end
    if arg1:GetNumber(1) >= 5 then
        arg1:SetTimer(0, 0)
    end
    arg1:SetNumber(7, 0)
    arg1:SetNumber(8, 0)
    local f2_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 17270)
    local f2_local6 = 1
    if arg1:GetNumber(5) >= 60 then
        f2_local6 = arg1:GetRandam_Int(10, 120)
    elseif arg1:GetNumber(5) >= 40 then
        f2_local6 = arg1:GetRandam_Int(10, 100)
    elseif arg1:GetNumber(5) >= 30 then
        f2_local6 = arg1:GetRandam_Int(10, 80)
    elseif arg1:GetNumber(5) >= 20 then
        f2_local6 = arg1:GetRandam_Int(10, 45)
    elseif arg1:GetNumber(5) >= 12 then
        f2_local6 = arg1:GetRandam_Int(10, 30)
    else
        f2_local6 = arg1:GetRandam_Int(1, 10)
    end
    if f2_local6 >= 20 then
        f2_local0[20] = 100
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 180, 999) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[17] = 100
        else
            f2_local0[17] = 1
            f2_local0[32] = 1000
            f2_local0[33] = 1000
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 180, 999) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[17] = 100
        else
            f2_local0[17] = 1
            f2_local0[32] = 1000
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 180, 999) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[17] = 100
        else
            f2_local0[17] = 1
            f2_local0[33] = 1000
        end
    elseif f2_local3 >= 10 then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[16] = 1
            f2_local0[30] = 1000
        else
            f2_local0[16] = 100
            if arg1:IsFinishTimer(1) then
                f2_local0[30] = 1000
            else
                f2_local0[32] = 400 / 1
                f2_local0[33] = 400 / 1
            end
        end
    elseif f2_local3 >= 6 then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[15] = 0
            f2_local0[16] = 1
            if arg1:IsFinishTimer(1) then
                f2_local0[30] = 1000
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 400
            f2_local0[5] = 0
            f2_local0[15] = 0
            f2_local0[16] = 150
            if arg1:IsFinishTimer(1) then
                f2_local0[30] = 450
            else
                f2_local0[32] = 400 / 1
                f2_local0[33] = 400 / 1
            end
        end
    elseif f2_local3 >= 3 then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[10] = 1000
            f2_local0[15] = 0
            f2_local0[16] = 1
            if arg1:IsFinishTimer(1) then
                f2_local0[30] = 5
            end
        else
            f2_local0[1] = 150
            f2_local0[2] = 250
            f2_local0[3] = 300
            f2_local0[4] = 0
            f2_local0[5] = 200
            f2_local0[10] = 0
            f2_local0[15] = 0
            f2_local0[16] = 50
            if arg1:IsFinishTimer(1) then
                f2_local0[30] = 5
            end
            if arg1:IsFinishTimer(0) then
                f2_local0[32] = 400 / 1
                f2_local0[33] = 400 / 1
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[10] = 1000
        f2_local0[15] = 0
        f2_local0[16] = 1
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
    else
        f2_local0[1] = 200
        f2_local0[2] = 100
        f2_local0[3] = 150
        f2_local0[4] = 0
        f2_local0[5] = 150
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[34] = 80
        f2_local0[35] = 40
        f2_local0[36] = 40
        if arg1:IsFinishTimer(0) then
            f2_local0[31] = 80
            f2_local0[32] = 80
            f2_local0[33] = 80
        else
            f2_local0[31] = 300 / 1
            f2_local0[32] = 400 / 1
            f2_local0[33] = 400 / 1
        end
    end
    if SpaceCheck(arg1, arg2, 180, 7) == false then
        f2_local0[31] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 5) == false then
        f2_local0[32] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 5) == false then
        f2_local0[33] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 13) == false then
        f2_local0[34] = 0
    end
    if SpaceCheck(arg1, arg2, -90, 8) == false then
        f2_local0[35] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 8) == false then
        f2_local0[36] = 0
    end
    if f2_local3 <= 1.5 then
        f2_local0[32] = 0
        f2_local0[33] = 0
        f2_local0[35] = 0
        f2_local0[36] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 9, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, 8, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3010, 11, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3020, 8, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3021, 8, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3022, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3030, 13, f2_local0[5], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 6010, 5, f2_local0[16], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 6000, 1.5, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 6010, 1.5, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 6001, 2, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 6002, 1.5, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 6003, 1.5, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6000, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6001, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6010, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6011, 10, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[34], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6000, 8, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6001, 8, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6002, 1.5, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6010, 8, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6011, 10, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[35], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[35], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6000, 8, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6001, 8, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6003, 1.5, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6010, 8, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6011, 10, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6012, 10, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 6013, 10, f2_local0[36], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act20)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, TombShadow_366400_Act36)
    local f2_local7 = REGIST_FUNC(arg1, arg2, TombShadow_366400_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

function TombShadow_366400_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f3_local3 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0.5
    local f3_local7 = 6
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 3002
    local f3_local11 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local12 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local13 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local14 = 0
    local f3_local15 = 0
    local f3_local16 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 17252) and f3_local0 <= f3_local1 then
        f3_local8 = 3004
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17265)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local11, f3_local14, f3_local15, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f4_local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0.5
    local f4_local7 = 6
    local f4_local8 = 3010
    local f4_local9 = 3011
    local f4_local10 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f4_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 17252) and f4_local0 <= f4_local1 then
        f4_local8 = 3005
    end
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17265)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local10, f4_local12, f4_local13, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f5_local3 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0.5
    local f5_local7 = 6
    local f5_local8 = 3020
    local f5_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 17252) and f5_local0 <= f5_local1 then
        f5_local8 = 3006
    end
    arg0:SetNumber(2, 0)
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17265)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, 10, f5_local11, f5_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act04(arg0, arg1, arg2)
    local f6_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f6_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 0.5
    local f6_local6 = 6
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3024
    local f6_local8 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local10 = 0
    local f6_local11 = 0
    local f6_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local7, TARGET_ENE_0, 10, f6_local10, f6_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f7_local3 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 10
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 0.5
    local f7_local7 = 6
    local f7_local8 = 3030
    local f7_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f7_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local11 = 0
    local f7_local12 = 0
    local f7_local13 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    if arg0:HasSpecialEffectId(TARGET_SELF, 17252) and f7_local0 <= f7_local1 then
        f7_local8 = 3007
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, 10, f7_local11, f7_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act06(arg0, arg1, arg2)
    local f8_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f8_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 50
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 6
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    local f8_local7 = 3000
    local f8_local8 = 3001
    local f8_local9 = 3002
    local f8_local10 = 999
    local f8_local11 = 999
    local f8_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local13 = 0
    local f8_local14 = 0
    local f8_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local10, f8_local13, f8_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f8_local8, TARGET_ENE_0, f8_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local9, TARGET_ENE_0, f8_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act07(arg0, arg1, arg2)
    local f9_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f9_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 50
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 6
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    arg0:SetNumber(5, arg0:GetNumber(5) + 4)
    local f9_local7 = 3000
    local f9_local8 = 3001
    local f9_local9 = 3003
    local f9_local10 = 999
    local f9_local11 = 999
    local f9_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 0
    local f9_local15 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 17265)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local10, f9_local13, f9_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local8, TARGET_ENE_0, f9_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f9_local9, TARGET_ENE_0, f9_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act08(arg0, arg1, arg2)
    local f10_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f10_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 50
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 6
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3023
    local f10_local8 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f10_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 0
    local f10_local11 = 0
    local f10_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, 10, f10_local10, f10_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act09(arg0, arg1, arg2)
    local f11_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 100
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 6
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3024
    local f11_local8 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local10 = 0
    local f11_local11 = 0
    local f11_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local7, TARGET_ENE_0, 10, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    if f12_local0 > 10 then
        local f12_local1 = 6000
        local f12_local2 = arg0:GetRandam_Int(1, 100)
        if arg0:GetNumber(0) == 0 then
            arg0:SetNumber(0, 1)
            f12_local1 = 6010
        else
            arg0:SetNumber(0, 0)
        end
        local f12_local3 = 3012
        local f12_local4 = 999
        local f12_local5 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
        local f12_local6 = 0
        local f12_local7 = 0
        local f12_local8 = arg0:GetRandam_Int(1, 100)
        arg0:SetTimer(0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f12_local1, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
    end
    local f12_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.9
    local f12_local3 = 999
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 5
    local f12_local7 = 6
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 3033
    local f12_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f12_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 0
    local f12_local12 = 0
    local f12_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local8, TARGET_ENE_0, 10, f12_local11, f12_local12, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act15(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Float(6, 8)
    local f13_local2 = 999
    local f13_local3 = 0
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = arg0:GetRandam_Float(1, 1.8)
    if f13_local1 <= f13_local0 then
        Approach_Act(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local5)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local5, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, IsGuard)
    
end

function TombShadow_366400_Act16(arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = arg0:GetRandam_Float(1, 1.9)
    local f14_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f14_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 30, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act18(arg0, arg1, arg2)
    local f16_local0 = 0
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = arg0:GetRandam_Float(1, 2.5)
    local f16_local3 = arg0:GetRandam_Float(3, 5)
    local f16_local4 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local2, TARGET_ENE_0, f16_local3, TARGET_SELF, true, f16_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function TombShadow_366400_Act20(arg0, arg1, arg2)
    local f17_local0 = 6001
    local f17_local1 = SpaceCheck(arg0, arg1, 180, 10)
    local f17_local2 = true
    if f17_local1 == f17_local2 then
        f17_local1 = 6011
    end
    f17_local1 = 3013
    f17_local2 = 999
    local f17_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(5, 4)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f17_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    local f17_local7 = 0
    local f17_local8 = arg0:GetRandam_Int(1, 100)
    local f17_local9 = arg0:GetRandam_Float(4, 6)
    local f17_local10 = -1
    if f17_local8 > 85 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, f17_local9, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(6, 10))
    elseif f17_local8 > 70 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, f17_local9, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(6, 10))
    elseif f17_local8 > 35 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, f17_local9, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(8, 12))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, f17_local9, TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(8, 12))
    end
    
end

function TombShadow_366400_Act30(arg0, arg1, arg2)
    local f18_local0 = 6000
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
        f18_local0 = 6010
    else
        arg0:SetNumber(0, 0)
    end
    local f18_local2 = 3012
    local f18_local3 = 999
    local f18_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f18_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
    
end

function TombShadow_366400_Act31(arg0, arg1, arg2)
    local f19_local0 = 6001
    local f19_local1 = 3013
    local f19_local2 = 999
    local f19_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) then
        arg0:SetTimer(0, 2)
    end
    arg0:SetTimer(1, 1.5)
    arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f19_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    
end

function TombShadow_366400_Act32(arg0, arg1, arg2)
    local f20_local0 = 6002
    local f20_local1 = 3014
    local f20_local2 = 999
    local f20_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) then
        arg0:SetTimer(0, 3)
    end
    arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f20_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    
end

function TombShadow_366400_Act33(arg0, arg1, arg2)
    local f21_local0 = 6003
    local f21_local1 = 3015
    local f21_local2 = 999
    local f21_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = arg0:GetRandam_Int(1, 100)
    if arg0:IsFinishTimer(0) then
        arg0:SetTimer(0, 3)
    end
    arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f21_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    
end

function TombShadow_366400_Act34(arg0, arg1, arg2)
    local f22_local0 = 6011
    local f22_local1 = 3017
    local f22_local2 = 999
    local f22_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 0)
    arg0:SetTimer(1, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f22_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
    
end

function TombShadow_366400_Act35(arg0, arg1, arg2)
    local f23_local0 = 6012
    local f23_local1 = 3018
    local f23_local2 = 999
    local f23_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 0)
    arg0:SetTimer(1, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f23_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
    
end

function TombShadow_366400_Act36(arg0, arg1, arg2)
    local f24_local0 = 6013
    local f24_local1 = 3019
    local f24_local2 = 999
    local f24_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 0)
    arg0:SetTimer(1, 1.5)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, f24_local0, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
    
end

function TombShadow_366400_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_TombShadow_366400_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetDist(TARGET_ENE_0)
    local f28_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = arg1:GetRandam_Int(1, 100)
    local f28_local3 = arg1:GetRandam_Int(1, 100)
    local f28_local4 = arg1:GetRandam_Int(1, 100)
    local f28_local5 = arg1:GetHpRate(TARGET_SELF)
    local f28_local6 = 5
    local f28_local7 = 100
    local f28_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 17270)
    if arg1:IsInterupt(INTERUPT_FindAttack) and f28_local8 == true and f28_local0 < 5 then
        arg2:ClearSubGoal()
        return true
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 5025) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5026) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5027) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5028) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5029) or arg1:HasSpecialEffectId(TARGET_SELF, 17265) and arg1:GetNumber(8) == 1 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:SetNumber(10, 1)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            arg1:SetNumber(10, 2)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:SetNumber(10, 3)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg1:SetNumber(10, 2)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:SetNumber(10, 3)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 17265) then
            arg1:SetNumber(10, 4)
        end
        if arg1:GetNumber(7) == 0 or arg1:GetNumber(7) == 1 and f28_local3 > 40 then
            if arg1:GetNumber(10) == 3 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 210, 180, 5.5 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                local f28_local9 = arg1:GetDist(TARGET_ENE_0)
                local f28_local10 = arg1:GetRandam_Int(1, 100)
                local f28_local11 = 6000
                local f28_local12 = AI_DIR_TYPE_F
                local f28_local13 = 6000
                local f28_local14 = 6001
                local f28_local15 = 6002
                local f28_local16 = 6003
                local f28_local17 = 6010
                local f28_local18 = 6012
                local f28_local19 = 6013
                local f28_local20 = 5
                local f28_local21 = 5
                local f28_local22 = 5
                local f28_local23 = 5
                local f28_local24 = 5
                local f28_local25 = 5
                local f28_local26 = 5
                local f28_local27 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
                local f28_local28 = 0
                local f28_local29 = 0
                local f28_local30 = arg1:GetMapHitRadius(TARGET_SELF)
                local f28_local31 = arg1:GetDist(TARGET_ENE_0)
                local f28_local32 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
                if SpaceCheck(arg1, arg2, 180, 7) == false then
                    f28_local21 = 0
                end
                if SpaceCheck(arg1, arg2, -90, 5) == false then
                    f28_local22 = 0
                    if SpaceCheck(arg1, arg2, -90, 8) == false then
                        f28_local25 = 0
                    end
                end
                if SpaceCheck(arg1, arg2, 90, 5) == false then
                    f28_local23 = 0
                    if SpaceCheck(arg1, arg2, 90, 8) == false then
                        f28_local26 = 0
                    end
                end
                local f28_local33 = arg1:GetRandam_Int(0, f28_local20 + f28_local21 + f28_local22 + f28_local23 + f28_local24 + f28_local25 + f28_local26)
                local f28_local34 = TARGET_ENE_0
                if f28_local20 + f28_local21 + f28_local22 + f28_local23 + f28_local24 + f28_local25 + f28_local26 == 0 then
                    arg1:SetNumber(6, 1)
                    arg2:ClearSubGoal()
                    arg1:Replaning()
                    return true
                elseif f28_local20 ~= 0 and f28_local33 <= f28_local20 then
                    f28_local11 = f28_local13
                    f28_local12 = AI_DIR_TYPE_F
                elseif f28_local21 ~= 0 and f28_local33 <= f28_local21 then
                    f28_local11 = f28_local14
                    f28_local12 = AI_DIR_TYPE_B
                elseif f28_local22 ~= 0 and f28_local33 <= f28_local22 then
                    f28_local11 = f28_local15
                    f28_local12 = AI_DIR_TYPE_L
                elseif f28_local23 ~= 0 and f28_local33 <= f28_local23 then
                    f28_local11 = f28_local16
                    f28_local12 = AI_DIR_TYPE_R
                elseif f28_local24 ~= 0 and f28_local33 <= f28_local24 then
                    f28_local11 = f28_local17
                    f28_local12 = AI_DIR_TYPE_F
                elseif f28_local25 ~= 0 and f28_local33 <= f28_local25 then
                    f28_local11 = f28_local18
                    f28_local12 = AI_DIR_TYPE_L
                elseif f28_local26 ~= 0 and f28_local33 <= f28_local26 then
                    f28_local11 = f28_local19
                    f28_local12 = AI_DIR_TYPE_R
                end
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, f28_local11, TARGET_ENE_0, 0, f28_local12, 0)
                arg1:SetNumber(8, 1)
                if arg1:GetNumber(7) == 0 then
                    arg1:SetNumber(7, 1)
                elseif arg1:GetNumber(7) == 1 then
                    arg1:SetNumber(7, 2)
                end
                return true
            end
        elseif arg1:GetNumber(10) == 4 then
            arg1:SetNumber(8, 1)
            if f28_local0 < 3.2 and f28_local2 > 70 then
                arg2:ClearSubGoal()
                TombShadow_366400_Act01(arg1, arg2)
                return true
            elseif f28_local0 < 3.8 and f28_local2 > 40 then
                arg2:ClearSubGoal()
                TombShadow_366400_Act05(arg1, arg2)
                return true
            elseif f28_local0 < 4 and f28_local2 > 10 then
                arg2:ClearSubGoal()
                TombShadow_366400_Act03(arg1, arg2)
                return true
            elseif f28_local0 < 6.5 then
                arg2:ClearSubGoal()
                TombShadow_366400_Act02(arg1, arg2)
                return true
            end
        elseif arg1:GetNumber(10) == 1 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 2.8 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3001, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetNumber(10) == 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 3.3 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6.5 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetNumber(10) == 3 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 210, 180, 5.5 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetNumber(10) == 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 4.5 - arg1:GetMapHitRadius(TARGET_SELF) - 0.5) then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:GetNumber(10) == 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 2 - arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3022, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 4.5 - arg1:GetMapHitRadius(TARGET_SELF)) and arg1:GetNumber(2) <= 3 then
                arg2:ClearSubGoal()
                arg1:SetNumber(2, arg1:GetNumber(2) + 1)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) and f28_local0 >= 4 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 17250) then
            if SpaceCheck(arg1, arg2, 180, 7) == true then
                if SpaceCheck(arg1, arg2, -90, 5) == true then
                    if SpaceCheck(arg1, arg2, 90, 5) == true then
                        if f28_local3 >= 81 then
                            arg1:SetTimer(1, 1)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                            return true
                        elseif f28_local3 >= 41 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                            return true
                        else
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                            return true
                        end
                    elseif f28_local3 >= 71 then
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                    if f28_local3 >= 71 then
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                else
                    arg1:SetTimer(1, 1)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, -90, 5) == true then
                if SpaceCheck(arg1, arg2, 90, 5) == true then
                    if f28_local3 >= 51 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                else
                    arg1:SetTimer(0, 2)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                arg1:SetTimer(0, 2)
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 180, 100) then
            if SpaceCheck(arg1, arg2, 180, 7) == true then
                if SpaceCheck(arg1, arg2, -90, 5) == true then
                    if SpaceCheck(arg1, arg2, 0, 5) == true then
                        if f28_local3 >= 61 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                            return true
                        elseif f28_local3 >= 21 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                            return true
                        elseif SpaceCheck(arg1, arg2, -90, 8) == true and f28_local4 >= 71 then
                            arg1:SetTimer(1, 1.5)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                            return true
                        else
                            arg1:SetTimer(1, 1)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                            return true
                        end
                    elseif f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    elseif SpaceCheck(arg1, arg2, -90, 8) == true and f28_local4 >= 71 then
                        arg1:SetTimer(1, 1.5)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 0, 5) == true then
                    if f28_local3 >= 51 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    end
                else
                    arg1:SetTimer(0, 2)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, -90, 5) == true then
                if SpaceCheck(arg1, arg2, 0, 5) == true then
                    if f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    elseif SpaceCheck(arg1, arg2, -90, 8) == true and f28_local4 >= 71 then
                        arg1:SetTimer(1, 1.5)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, -90, 8) == true and f28_local4 >= 71 then
                    arg1:SetTimer(1, 1.5)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6012, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                else
                    arg1:SetTimer(1, 1)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 0, 5) == true then
                arg1:SetTimer(0, 2)
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 180, 100) then
            if SpaceCheck(arg1, arg2, 180, 7) == true then
                if SpaceCheck(arg1, arg2, 90, 5) == true then
                    if SpaceCheck(arg1, arg2, 0, 5) == true then
                        if f28_local3 >= 61 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                            return true
                        elseif f28_local3 >= 21 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                            return true
                        elseif SpaceCheck(arg1, arg2, 90, 8) == true and f28_local4 >= 71 then
                            arg1:SetTimer(1, 1.5)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                            return true
                        else
                            arg1:SetTimer(1, 1)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                            return true
                        end
                    elseif f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    elseif SpaceCheck(arg1, arg2, 90, 8) == true and f28_local4 >= 71 then
                        arg1:SetTimer(1, 1.5)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 0, 5) == true then
                    if f28_local3 >= 51 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    end
                else
                    arg1:SetTimer(0, 2)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                if SpaceCheck(arg1, arg2, 0, 5) == true then
                    if f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    elseif SpaceCheck(arg1, arg2, 90, 8) == true and f28_local4 >= 71 then
                        arg1:SetTimer(1, 1.5)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 90, 8) == true and f28_local4 >= 71 then
                    arg1:SetTimer(1, 1.5)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6013, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                    return true
                else
                    arg1:SetTimer(1, 1)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 0, 5) == true then
                arg1:SetTimer(0, 2)
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 100) then
            if SpaceCheck(arg1, arg2, 0, 5) == true then
                if SpaceCheck(arg1, arg2, -90, 5) == true then
                    if SpaceCheck(arg1, arg2, 90, 5) == true then
                        if f28_local3 >= 61 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                            return true
                        elseif f28_local3 >= 21 and f28_local0 >= 2 then
                            arg1:SetTimer(0, 2)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                            return true
                        elseif f28_local4 >= 51 then
                            arg1:SetTimer(1, 1)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                            return true
                        else
                            arg1:SetTimer(1, 1)
                            arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                            arg2:ClearSubGoal()
                            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                            return true
                        end
                    elseif f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    end
                elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                    if f28_local3 >= 31 and f28_local0 >= 2 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    else
                        arg1:SetTimer(1, 1)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                        return true
                    end
                elseif f28_local4 >= 51 then
                    arg1:SetTimer(1, 1)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                    return true
                else
                    arg1:SetTimer(1, 1)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, -90, 5) == true then
                if SpaceCheck(arg1, arg2, 90, 5) == true then
                    if f28_local3 >= 51 then
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                        return true
                    else
                        arg1:SetTimer(0, 2)
                        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                        return true
                    end
                else
                    arg1:SetTimer(0, 2)
                    arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 3)
                    return true
                end
            elseif SpaceCheck(arg1, arg2, 90, 5) == true then
                arg1:SetTimer(0, 2)
                arg1:SetNumber(1, arg1:GetNumber(1) + 1)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 3)
                return true
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
                return true
            end
        else
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_TombShadow_366400_AfterAttackAct, "TombShadow_366400_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_TombShadow_366400_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


