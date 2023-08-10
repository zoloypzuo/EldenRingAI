RegisterTableGoal(GOAL_MaricaOfDistorted_219000_Battle, "MaricaOfDistorted_219000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDistorted_219000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18557)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18563)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18567)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18569)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18584)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18588)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18589)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
        f2_local0[30] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18580) then
        f2_local0[30] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18581) then
        if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
            f2_local0[12] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 >= 5 then
                f2_local0[34] = 30
            else
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[34] = 10
            end
        elseif f2_local3 >= 8 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[8] = 0
            f2_local0[9] = 30
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 30
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 20
            f2_local0[33] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 30
            f2_local0[18] = 20
            f2_local0[33] = 20
        elseif f2_local3 >= 3 then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 10
            f2_local0[18] = 0
            f2_local0[30] = 20
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            f2_local0[30] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18582) then
        if arg1:GetHpRate(TARGET_SELF) <= 0.4 then
            f2_local0[16] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 >= 5 then
                f2_local0[34] = 30
            else
                f2_local0[1] = 30
                f2_local0[2] = 20
                f2_local0[3] = 40
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[23] = 30
                f2_local0[24] = 10
                f2_local0[34] = 10
            end
        elseif f2_local3 >= 8 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[8] = 0
            f2_local0[9] = 20
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 20
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 20
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[33] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 30
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 30
            f2_local0[18] = 20
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[33] = 20
        elseif f2_local3 >= 3 then
            f2_local0[1] = 30
            f2_local0[2] = 0
            f2_local0[3] = 20
            f2_local0[4] = 20
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 10
            f2_local0[18] = 0
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[24] = 20
            f2_local0[30] = 20
        else
            f2_local0[1] = 20
            f2_local0[2] = 20
            f2_local0[3] = 10
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 20
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[24] = 20
            f2_local0[30] = 20
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local3 >= 5 then
                f2_local0[34] = 30
            else
                f2_local0[1] = 30
                f2_local0[2] = 10
                f2_local0[3] = 30
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[23] = 30
                f2_local0[24] = 10
                f2_local0[34] = 30
            end
        elseif f2_local3 >= 8 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[8] = 0
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 20
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[15] = 0
            f2_local0[16] = 20
            f2_local0[17] = 0
            f2_local0[18] = 20
            f2_local0[19] = 0
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[33] = 0
        elseif f2_local3 >= 3 then
            f2_local0[1] = 15
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 0
            f2_local0[5] = 20
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 20
            f2_local0[13] = 20
            f2_local0[14] = 0
            f2_local0[15] = 10
            f2_local0[16] = 20
            f2_local0[17] = 0
            f2_local0[18] = 10
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 20
            f2_local0[24] = 20
            f2_local0[33] = 0
        else
            f2_local0[1] = 20
            f2_local0[2] = 10
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[5] = 0
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 10
            f2_local0[13] = 10
            f2_local0[14] = 0
            f2_local0[15] = 10
            f2_local0[16] = 0
            f2_local0[17] = 0
            f2_local0[18] = 0
            if arg1:IsFinishTimer(4) == true then
                f2_local0[19] = 10
                f2_local0[20] = 10
                f2_local0[21] = 10
                f2_local0[22] = 10
            end
            f2_local0[23] = 0
            f2_local0[24] = 20
            f2_local0[33] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3014, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3018, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3019, 10, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3037, 80, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3026, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3024, 10, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3027, 20, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3028, 20, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3029, 20, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act36)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_Act49)
    local f2_local5 = REGIST_FUNC(arg1, arg2, MaricaOfDistorted_219000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

function MaricaOfDistorted_219000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 0
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18550)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 10
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Float(1.7, 2.8)
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 0
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18553)
    local f4_local8 = 5
    local f4_local9 = 3004
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 10
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Float(3.8, 5.2)
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 0
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18554)
    local f5_local8 = 5
    local f5_local9 = 3007
    local f5_local10 = TARGET_ENE_0
    local f5_local11 = 10
    local f5_local12 = 0
    local f5_local13 = 0
    local f5_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local10, f5_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Float(3.8, 6.2)
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 0
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
    local f6_local8 = 5
    local f6_local9 = 3009
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 7.5
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 0
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18550)
    local f7_local8 = 5
    local f7_local9 = 3011
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act06(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 3027
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 10
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 110) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local0, f8_local1, f8_local2, f8_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5
    local f9_local1 = 3028
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 10
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FR, 110) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 5
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 0
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3014
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 10
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act09(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 18580) then
        local f11_local0 = arg0:GetDist(TARGET_ENE_0)
        local f11_local1 = 15
        local f11_local2 = 0
        local f11_local3 = 999
        local f11_local4 = 0
        local f11_local5 = 0
        local f11_local6 = 3
        local f11_local7 = 0
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18556)
    local f11_local0 = 5
    local f11_local1 = 3015
    local f11_local2 = TARGET_ENE_0
    local f11_local3 = 10
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local0, f11_local1, f11_local2, f11_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
    local f12_local0 = 5
    local f12_local1 = 3016
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 10
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    arg0:SetTimer(3, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5
    local f13_local1 = 3017
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 10
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    arg0:SetTimer(0, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 1858) then
        local f14_local2 = 5
        local f14_local3 = 3031
        local f14_local4 = TARGET_ENE_0
        local f14_local5 = 10
        local f14_local6 = 0
        local f14_local7 = 0
        local f14_local8 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f14_local2, f14_local3, f14_local4, f14_local5, 0, 0, 0)
    elseif f14_local0 <= 4 then
        local f14_local2 = 5
        local f14_local3 = 3031
        local f14_local4 = TARGET_ENE_0
        local f14_local5 = 10
        local f14_local6 = 0
        local f14_local7 = 0
        local f14_local8 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f14_local2, f14_local3, f14_local4, f14_local5, 0, 0, 0)
    end
    local f14_local2 = 5
    local f14_local3 = 3018
    local f14_local4 = TARGET_ENE_0
    local f14_local5 = 10
    local f14_local6 = 0
    local f14_local7 = 0
    local f14_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local2, f14_local3, f14_local4, f14_local5, 0, 0, 0)
    arg0:SetTimer(4, 20)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act13(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3019
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 10
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act14(arg0, arg1, arg2)
    local f16_local0 = 5
    local f16_local1 = 3021
    local f16_local2 = TARGET_ENE_0
    local f16_local3 = 10
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f16_local0, f16_local1, f16_local2, f16_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 2
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 3
    local f17_local7 = 0
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3022
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 10
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    if f18_local0 <= 5 then
        local f18_local2 = 5
        local f18_local3 = 20006
        local f18_local4 = 3037
        local f18_local5 = TARGET_ENE_0
        local f18_local6 = 100
        local f18_local7 = 0
        local f18_local8 = 0
        local f18_local9 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local2, f18_local3, f18_local5, f18_local6, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f18_local2, f18_local4, f18_local5, f18_local6, 0, 0, 0)
    else
        local f18_local2 = 5
        local f18_local3 = 3037
        local f18_local4 = TARGET_ENE_0
        local f18_local5 = 100
        local f18_local6 = 0
        local f18_local7 = 0
        local f18_local8 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local2, f18_local3, f18_local4, f18_local5, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 5
    local f19_local2 = 0
    local f19_local3 = 999
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 3
    local f19_local7 = 0
    Approach_Act_Flex(arg0, arg1, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6, f19_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
    local f19_local8 = 5
    local f19_local9 = 3026
    local f19_local10 = TARGET_ENE_0
    local f19_local11 = 10
    local f19_local12 = 0
    local f19_local13 = 0
    local f19_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f19_local8, f19_local9, f19_local10, f19_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act18(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
    local f20_local0 = 5
    local f20_local1 = 3020
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act19(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18564)
    local f21_local0 = 5
    local f21_local1 = 3027
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 190) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    end
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act20(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18554)
    local f22_local0 = 5
    local f22_local1 = 3028
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 10
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 190) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f22_local0, f22_local1, f22_local2, f22_local3, 0, 0, 0)
    end
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act21(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
    local f23_local0 = 5
    local f23_local1 = 3029
    local f23_local2 = TARGET_ENE_0
    local f23_local3 = 10
    local f23_local4 = 0
    local f23_local5 = 0
    local f23_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 190) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f23_local0, f23_local1, f23_local2, f23_local3, 0, 0, 0)
    end
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act22(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18565)
    local f24_local0 = 5
    local f24_local1 = 3030
    local f24_local2 = TARGET_ENE_0
    local f24_local3 = 10
    local f24_local4 = 0
    local f24_local5 = 0
    local f24_local6 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 190) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f24_local0, f24_local1, f24_local2, f24_local3, 0, 0, 0)
    end
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act23(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
    local f25_local0 = 5
    local f25_local1 = 20001
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = 100
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f25_local0, f25_local1, f25_local2, f25_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act24(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18589)
    local f26_local0 = 5
    local f26_local1 = 20006
    local f26_local2 = TARGET_ENE_0
    local f26_local3 = 100
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local0, f26_local1, f26_local2, f26_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act30(arg0, arg1, arg2)
    local f27_local0 = 1
    local f27_local1 = TARGET_ENE_0
    local f27_local2 = 0.1
    local f27_local3 = TARGET_SELF
    local f27_local4 = true
    local f27_local5 = arg0:GetDist(TARGET_ENE_0)
    local f27_local6 = 0
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    local f27_local8 = -1
    if f27_local7 <= f27_local6 then
        f27_local8 = 9910
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 18580) then
        f27_local0 = 2.5
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act31(arg0, arg1, arg2)
    local f28_local0 = 3
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = 0
    local f28_local3 = TARGET_SELF
    local f28_local4 = true
    local f28_local5 = arg0:GetDist(TARGET_ENE_0)
    local f28_local6 = 100
    local f28_local7 = arg0:GetRandam_Int(1, 100)
    local f28_local8 = -1
    if f28_local7 <= f28_local6 then
        f28_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act32(arg0, arg1, arg2)
    local f29_local0 = arg0:GetRandam_Int(1, 3)
    local f29_local1 = TARGET_ENE_0
    local f29_local2 = 10
    local f29_local3 = TARGET_ENE_0
    local f29_local4 = true
    local f29_local5 = arg0:GetDist(TARGET_ENE_0)
    local f29_local6 = 100
    local f29_local7 = arg0:GetRandam_Int(1, 100)
    local f29_local8 = -1
    if f29_local7 <= f29_local6 then
        f29_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act33(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Float(0.8, 1.5)
    local f30_local1 = TARGET_ENE_0
    local f30_local2 = 1
    local f30_local3 = 90
    local f30_local4 = 0
    local f30_local5 = TARGET_SELF
    local f30_local6 = true
    local f30_local7 = true
    local f30_local8 = arg0:GetDist(TARGET_ENE_0)
    local f30_local9 = 0
    local f30_local10 = arg0:GetRandam_Int(1, 100)
    local f30_local11 = -1
    if f30_local10 <= f30_local9 then
        f30_local11 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f30_local0, f30_local1, f30_local2, f30_local3, f30_local6, f30_local7, f30_local11)
    arg0:SetTimer(5, 20)
    MaricaOfDistorted_219000_Act48(arg0, arg1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act34(arg0, arg1, arg2)
    local f31_local0 = 2
    local f31_local1 = TARGET_ENE_0
    local f31_local2 = 90
    local f31_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f31_local4 = true
    local f31_local5 = 0
    local f31_local6 = arg0:GetRandam_Int(1, 100)
    local f31_local7 = -1
    if f31_local6 <= f31_local5 then
        f31_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f31_local0, f31_local1, f31_local2, f31_local7, f31_local3, f31_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act35(arg0, arg1, arg2)
    local f32_local0 = 5
    local f32_local1 = -1
    local f32_local2 = -1
    local f32_local3 = 1
    local f32_local4 = 1
    local f32_local5 = TARGET_ENE_0
    local f32_local6 = 3
    local f32_local7 = 0
    local f32_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f32_local0, f32_local1, 2, f32_local3, f32_local4, f32_local5, f32_local6, f32_local7, f32_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f32_local0, f32_local1, f32_local2, 1, -1, f32_local5, f32_local6, f32_local7, f32_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f32_local0, f32_local1, f32_local2, -1, 1, f32_local5, f32_local6, f32_local7, f32_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act36(arg0, arg1, arg2)
    local f33_local0 = 5
    local f33_local1 = -1
    local f33_local2 = -1
    local f33_local3 = 1
    local f33_local4 = 1
    local f33_local5 = TARGET_ENE_0
    local f33_local6 = 3
    local f33_local7 = 0
    local f33_local8 = true
    local f33_local9 = arg0:GetRandam_Int(1, 2)
    if f33_local9 == 1 then
        f33_local4 = 1
        f33_local3 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f33_local0, f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6, f33_local7, f33_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act47(arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = arg0:GetRandam_Int(1, 100)
    local f34_local2 = 20
    local f34_local3 = TARGET_ENE_0
    local f34_local4 = 100
    local f34_local5 = 0
    local f34_local6 = 0
    local f34_local7 = 20002
    local f34_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local7, f34_local3, f34_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act48(arg0, arg1, arg2)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    local f35_local1 = arg0:GetRandam_Int(1, 100)
    if f35_local0 >= 10 then
        MaricaOfDistorted_219000_Act09(arg0, arg1)
    elseif f35_local0 >= 5 then
        if f35_local1 <= 50 then
            MaricaOfDistorted_219000_Act14(arg0, arg1)
        else
            MaricaOfDistorted_219000_Act18(arg0, arg1)
        end
    elseif f35_local1 <= 50 then
        MaricaOfDistorted_219000_Act03(arg0, arg1)
    else
        MaricaOfDistorted_219000_Act15(arg0, arg1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_Act49(arg0, arg1, arg2)
    local f36_local0 = arg0:GetDist(TARGET_ENE_0)
    local f36_local1 = arg0:GetRandam_Int(1, 100)
    if f36_local0 <= 5 then
        local f36_local2 = 5
        local f36_local3 = TARGET_ENE_0
        local f36_local4 = 10
        local f36_local5 = 0
        local f36_local6 = 0
        local f36_local7 = 0
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
        local f36_local8 = nil
        local f36_local9 = arg0:GetRandam_Int(1, 100)
        if f36_local9 <= 40 then
            f36_local8 = 20003
        elseif f36_local9 <= 70 then
            f36_local8 = 20004
        else
            f36_local8 = 20005
        end
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f36_local2, f36_local8, f36_local3, successDist2, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function MaricaOfDistorted_219000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MaricaOfDistorted_219000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:HasSpecialEffectId(TARGET_SELF, 18557) then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18557)
        local f40_local0 = arg1:GetDist(TARGET_ENE_0)
        local f40_local1 = arg1:GetRandam_Int(1, 100)
        if f40_local0 <= 4 then
            arg2:ClearSubGoal()
            local f40_local2 = arg1:IsFinishTimer(1)
            if f40_local2 then
                f40_local2 = 5
                local f40_local3 = 3022
                local f40_local4 = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, f40_local5, 0, 0, 0)
                arg1:SetTimer(1, 15)
            end
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 90) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 90)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            arg2:ClearSubGoal()
            MaricaOfDistorted_219000_Act30(arg1, arg2)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18550) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18550)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            if f40_local0 <= 10 and f40_local0 >= 3 then
                local f40_local1 = 5
                local f40_local2 = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 3003
                local f40_local8 = arg1:GetRandam_Int(1, 100)
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18582) or arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local8 >= 70 then
                        f40_local7 = 20001
                    elseif f40_local8 >= 20 then
                        f40_local7 = 3003
                    else
                        f40_local7 = 20006
                    end
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local1, f40_local7, f40_local2, successDist2, 0, 0, 0)
            elseif f40_local0 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
                local f40_local1 = 5
                local f40_local2 = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = nil
                local f40_local8 = arg1:GetRandam_Int(1, 100)
                if arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local8 <= 40 then
                        f40_local7 = 3001
                    elseif f40_local8 <= 60 then
                        f40_local7 = 20006
                    elseif f40_local8 <= 85 then
                        f40_local7 = 20001
                    else
                        f40_local7 = 3003
                    end
                elseif f40_local8 <= 70 then
                    f40_local7 = 3001
                else
                    f40_local7 = 3003
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local1, f40_local7, f40_local2, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18551) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18551)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            if f40_local0 <= 10 and f40_local0 >= 3 then
                local f40_local1 = 5
                local f40_local2 = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = nil
                local f40_local8 = arg1:GetRandam_Int(1, 100)
                if f40_local8 <= 70 then
                    f40_local7 = 3002
                else
                    f40_local7 = 3026
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local1, f40_local7, f40_local2, successDist2, 0, 0, 0)
            elseif f40_local0 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
                local f40_local1 = 5
                local f40_local2 = TARGET_ENE_0
                local f40_local3 = 10
                local f40_local4 = 0
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = nil
                local f40_local8 = arg1:GetRandam_Int(1, 100)
                if f40_local8 <= 70 then
                    f40_local7 = 3002
                else
                    f40_local7 = 3016
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local1, f40_local7, f40_local2, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18552) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18552)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 7 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18552)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 50 then
                    f40_local8 = 3003
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
                end
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18553) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18553)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 10 and f40_local0 >= 4 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 40 then
                    f40_local8 = 3005
                else
                    f40_local8 = 3006
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            elseif f40_local0 <= 4 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 70 then
                    f40_local8 = 3005
                else
                    f40_local8 = 3006
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18554) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18554)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 10 and f40_local0 >= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 40 then
                    f40_local8 = 3024
                else
                    f40_local8 = 3021
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            elseif f40_local0 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18559)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 70 then
                    f40_local8 = 3008
                else
                    f40_local8 = 3024
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18555) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18555)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 7 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 70 then
                    f40_local8 = 3010
                else
                    f40_local8 = 3003
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18556) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18556)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 15 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18585)
                end
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 3035
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            elseif f40_local0 >= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                if arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18585)
                end
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18582) or arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local9 >= 70 then
                        f40_local8 = 20001
                    elseif f40_local9 >= 30 then
                        f40_local8 = 3035
                    else
                        f40_local8 = 3021
                    end
                else
                    f40_local8 = 3021
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18585) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18585)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            local f40_local2 = 5
            local f40_local3 = TARGET_ENE_0
            local f40_local4 = 10
            local f40_local5 = 0
            local f40_local6 = 0
            local f40_local7 = 0
            local f40_local8 = nil
            local f40_local9 = arg1:GetRandam_Int(1, 100)
            if f40_local9 <= 30 then
                f40_local8 = 20001
            elseif f40_local0 <= 5 then
                f40_local8 = 3036
            else
                f40_local8 = 20001
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18558) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18558)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 10 and f40_local0 >= 3 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18582) or arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local9 >= 75 then
                        f40_local8 = 20001
                    else
                        f40_local8 = 3021
                    end
                else
                    f40_local8 = 3021
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            elseif f40_local0 <= 3 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18582) or arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local9 >= 75 then
                        f40_local8 = 20001
                    elseif f40_local9 >= 35 then
                        f40_local8 = 3009
                    else
                        f40_local8 = 3026
                    end
                elseif f40_local9 <= 50 then
                    f40_local8 = 3009
                else
                    f40_local8 = 3026
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18559) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18559)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 40 then
                    f40_local8 = 3025
                else
                    f40_local8 = 3015
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 50 then
                    f40_local8 = 3014
                else
                    f40_local8 = 3026
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18561) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18561)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 5 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18582) or arg1:HasSpecialEffectId(TARGET_SELF, 18583) then
                    if f40_local9 <= 30 then
                        f40_local8 = 20001
                    elseif f40_local9 <= 40 then
                        f40_local8 = 3018
                    elseif f40_local9 <= 50 then
                        f40_local8 = 3027
                    elseif f40_local9 <= 60 then
                        f40_local8 = 3028
                    elseif f40_local9 <= 70 then
                        f40_local8 = 3029
                    elseif f40_local9 <= 80 then
                        f40_local8 = 3030
                    else
                        f40_local8 = 3021
                    end
                else
                    f40_local8 = 3021
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 50 then
                    f40_local8 = 3021
                else
                    f40_local8 = 3026
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18562) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18562)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18551)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 60 then
                    f40_local8 = 3001
                else
                    f40_local8 = 3014
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18563) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18563)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18569)
            if f40_local0 <= 8 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 70 then
                    f40_local8 = 3017
                else
                    f40_local8 = 3025
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            else
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 60 then
                    f40_local8 = 3015
                else
                    f40_local8 = 3025
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18564) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18564)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 3 then
                local f40_local2 = 5
                local f40_local3 = 20001
                local f40_local4 = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18565) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18565)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 3 then
                local f40_local2 = 5
                local f40_local3 = 3021
                local f40_local4 = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18567) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18567)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if arg1:HasSpecialEffectId(TARGET_SELF, 18583) and f40_local1 <= 80 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18568)
                local f40_local2 = 5
                local f40_local3 = 20001
                local f40_local4 = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, successDist2, 0, 0, 0)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18568) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18568)
            arg2:ClearSubGoal()
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            MaricaOfDistorted_219000_Act49(arg1, arg2)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18569) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18569)
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 5 then
                if f40_local1 <= 40 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18558)
                    local f40_local2 = 5
                    local f40_local3 = 3016
                    local f40_local4 = TARGET_ENE_0
                    local f40_local5 = 10
                    local f40_local6 = 0
                    local f40_local7 = 0
                    local f40_local8 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18584) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18584)
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            if f40_local1 >= 60 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 3033
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, f40_local4)
            elseif f40_local1 >= 20 then
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 3034
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, f40_local4)
            else

            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18588) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18588)
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 <= 8 then
                arg2:ClearSubGoal()
                local f40_local2 = 5
                local f40_local3 = 3032
                local f40_local4 = TARGET_ENE_0
                local f40_local5 = 10
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local3, f40_local4, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18589) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18589)
            local f40_local0 = arg1:GetDist(TARGET_ENE_0)
            local f40_local1 = arg1:GetRandam_Int(1, 100)
            if f40_local0 >= 5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18561)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = 3021
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 20 then
                    f40_local8 = 3025
                elseif f40_local9 <= 60 then
                    f40_local8 = 3015
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            else
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18555)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18562)
                local f40_local2 = 5
                local f40_local3 = TARGET_ENE_0
                local f40_local4 = 10
                local f40_local5 = 0
                local f40_local6 = 0
                local f40_local7 = 0
                local f40_local8 = nil
                local f40_local9 = arg1:GetRandam_Int(1, 100)
                if f40_local9 <= 50 then
                    f40_local8 = 3014
                else
                    f40_local8 = 3026
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f40_local2, f40_local8, f40_local3, successDist2, 0, 0, 0)
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        local f40_local0 = arg1:GetDist(TARGET_ENE_0)
        if arg1:GetRandam_Int(1, 100) <= 80 and f40_local0 >= 3.5 then
            arg2:ClearSubGoal()
            MaricaOfDistorted_219000_Act31(arg1, arg2)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_MaricaOfDistorted_219000_AfterAttackAct, "MaricaOfDistorted_219000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MaricaOfDistorted_219000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


