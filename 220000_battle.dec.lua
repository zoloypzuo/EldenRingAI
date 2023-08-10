RegisterTableGoal(GOAL_NebulaDragon_220000_Battle, "NebulaDragon_220000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NebulaDragon_220000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18601) then
        f2_local0[34] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18602) and arg1:GetHpRate(TARGET_SELF) <= 0.8 then
        f2_local0[32] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18603) and arg1:GetHpRate(TARGET_SELF) <= 0.5 then
        f2_local0[22] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) and arg1:GetHpRate(TARGET_SELF) <= 0.3 then
        f2_local0[33] = 100
    else
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            if f2_local3 >= 8 then
                f2_local0[24] = 100
            else
                f2_local0[24] = 0
                f2_local0[10] = 0
                f2_local0[11] = 20
                f2_local0[12] = 20
                f2_local0[14] = 10
                f2_local0[15] = 0
                f2_local0[18] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                    f2_local0[30] = 5
                    f2_local0[31] = 5
                    f2_local0[32] = 1000
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                    f2_local0[30] = 5
                    f2_local0[31] = 5
                    f2_local0[22] = 1000
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                    f2_local0[30] = 5
                    f2_local0[31] = 5
                    f2_local0[22] = 1000
                    f2_local0[33] = 1000
                end
            end
        elseif f2_local3 >= 100 then
            f2_local0[5] = 10
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[35] = 70
        elseif f2_local3 >= 24 then
            f2_local0[1] = 10
            f2_local0[4] = 20
            f2_local0[5] = 10
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 20
            f2_local0[15] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        elseif f2_local3 >= 18 then
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 20
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 20
            f2_local0[14] = 20
            f2_local0[15] = 0
            f2_local0[18] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 0
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        elseif f2_local3 >= 10 then
            f2_local0[4] = 20
            f2_local0[5] = 10
            f2_local0[7] = 20
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 10
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 10
            f2_local0[15] = 0
            f2_local0[18] = 0
            f2_local0[20] = 20
            f2_local0[21] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 20
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 20
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 20
                f2_local0[30] = 10
                f2_local0[31] = 10
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        elseif f2_local3 >= 4 then
            f2_local0[4] = 0
            f2_local0[5] = 10
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 10
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[15] = 0
            f2_local0[18] = 10
            f2_local0[20] = 10
            f2_local0[21] = 20
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 20
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 20
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 20
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        elseif f2_local3 >= -1 then
            f2_local0[1] = 20
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 10
            f2_local0[10] = 0
            f2_local0[11] = 20
            f2_local0[12] = 20
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[15] = 20
            f2_local0[18] = 10
            f2_local0[20] = 0
            f2_local0[21] = 20
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 10
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 10
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 10
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        else
            f2_local0[1] = 20
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 10
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[10] = 20
            f2_local0[11] = 10
            f2_local0[12] = 10
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[15] = 20
            f2_local0[18] = 10
            f2_local0[20] = 0
            f2_local0[21] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, 18603) then
                f2_local0[19] = 0
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[32] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18604) then
                f2_local0[19] = 0
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
                f2_local0[19] = 0
                f2_local0[30] = 5
                f2_local0[31] = 5
                f2_local0[22] = 1000
                f2_local0[33] = 1000
            end
        end
        if arg1:IsFinishTimer(0) == false then
            f2_local0[14] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
        end
        if arg1:IsFinishTimer(1) == false then
            f2_local0[32] = 0
        end
        if arg1:IsFinishTimer(2) == false then
            f2_local0[22] = 0
        end
        if arg1:IsFinishTimer(3) == false then
            f2_local0[33] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 7, f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 7, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3012, 30, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3013, 40, f2_local0[8], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3015, 30, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[12], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3019, 25, f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3020, 30, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[15], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3023, 30, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6000, 20, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6001, 20, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6002, 20, f2_local0[18], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 6003, 20, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3033, 30, f2_local0[19], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[20], 0)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3026, 30, f2_local0[21], 0)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3032, 200, f2_local0[22], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3027, 20, f2_local0[30], 0)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3028, 20, f2_local0[31], 0)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3035, 340, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3036, 340, f2_local0[33], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act01)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act08)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act22)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act35)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_Act24)
    local f2_local6 = REGIST_FUNC(arg1, arg2, NebulaDragon_220000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

function NebulaDragon_220000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 13
    local f3_local2 = 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = arg0:GetRandam_Int(1, 100)
    local f3_local9 = 5
    local f3_local10 = 3000
    local f3_local11 = TARGET_ENE_0
    local f3_local12 = 10
    local f3_local13 = 0
    local f3_local14 = 0
    local f3_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local9, f3_local10, f3_local11, f3_local12, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act03(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 10
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18614)
    local f4_local8 = 5
    local f4_local9 = 3006
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 20
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18618)
    local f5_local0 = 5
    local f5_local1 = 3008
    local f5_local2 = TARGET_ENE_0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 0
    local f5_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local0, f5_local1, f5_local2, f5_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act05(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 20
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3010
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 10
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    if arg0:GetNumber(0) == 0 then
        arg0:SetNumber(0, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act06(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 20
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3011
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 10
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act07(arg0, arg1, arg2)
    local f8_local0 = 5
    local f8_local1 = 3012
    local f8_local2 = TARGET_ENE_0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f8_local0, f8_local1, f8_local2, f8_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18619)
    local f9_local0 = 5
    local f9_local1 = 3013
    local f9_local2 = TARGET_ENE_0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 0
    local f9_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local0, f9_local1, f9_local2, f9_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act09(arg0, arg1, arg2)
    local f10_local0 = 5
    local f10_local1 = 3023
    local f10_local2 = TARGET_ENE_0
    local f10_local3 = 10
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local0, f10_local1, f10_local2, f10_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act10(arg0, arg1, arg2)
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

function NebulaDragon_220000_Act11(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18616)
    local f12_local0 = 15
    local f12_local1 = 3016
    local f12_local2 = TARGET_ENE_0
    local f12_local3 = 15
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f12_local0, f12_local1, f12_local2, f12_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18615)
    local f13_local0 = 15
    local f13_local1 = 3017
    local f13_local2 = TARGET_ENE_0
    local f13_local3 = 20
    local f13_local4 = 0
    local f13_local5 = 0
    local f13_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local0, f13_local1, f13_local2, f13_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act13(arg0, arg1, arg2)
    local f14_local0 = 5
    local f14_local1 = 3019
    local f14_local2 = TARGET_ENE_0
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f14_local0, f14_local1, f14_local2, f14_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act14(arg0, arg1, arg2)
    local f15_local0 = 5
    local f15_local1 = 3020
    local f15_local2 = TARGET_ENE_0
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f15_local0, f15_local1, f15_local2, f15_local3, 0, 0, 0)
    arg0:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act15(arg0, arg1, arg2)
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

function NebulaDragon_220000_Act17(arg0, arg1, arg2)
    local f17_local0 = 5
    local f17_local1 = 3021
    local f17_local2 = TARGET_ENE_0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 0
    local f17_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local0, f17_local1, f17_local2, f17_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act18(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 5
    local f18_local2 = arg0:GetRandam_Int(6001, 6003)
    local f18_local3 = TARGET_ENE_0
    local f18_local4 = 10
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 0
    if f18_local0 > 25 then
        f18_local2 = arg0:GetRandam_Int(6002, 6003)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local1, f18_local2, f18_local3, f18_local4, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act19(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = 3033
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f19_local0, f19_local1, f19_local2, f19_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act20(arg0, arg1, arg2)
    local f20_local0 = 5
    local f20_local1 = 3025
    local f20_local2 = TARGET_ENE_0
    local f20_local3 = 10
    local f20_local4 = 0
    local f20_local5 = 0
    local f20_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f20_local0, f20_local1, f20_local2, f20_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act21(arg0, arg1, arg2)
    local f21_local0 = 30
    local f21_local1 = 3026
    local f21_local2 = TARGET_ENE_0
    local f21_local3 = 10
    local f21_local4 = 0
    local f21_local5 = 0
    local f21_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f21_local0, f21_local1, f21_local2, f21_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act22(arg0, arg1, arg2)
    local f22_local0 = 30
    local f22_local1 = 3032
    local f22_local2 = TARGET_ENE_0
    local f22_local3 = 10
    local f22_local4 = 0
    local f22_local5 = 0
    local f22_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f22_local0, f22_local1, f22_local2, f22_local3, 0, 0, 0)
    arg0:SetTimer(2, 200)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act24(arg0, arg1, arg2)
    local f23_local0 = 2
    local f23_local1 = TARGET_ENE_0
    local f23_local2 = 45
    local f23_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f23_local4 = true
    local f23_local5 = 0
    local f23_local6 = arg0:GetRandam_Int(1, 100)
    local f23_local7 = -1
    if f23_local6 <= f23_local5 then
        f23_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f23_local0, f23_local1, f23_local2, f23_local7, f23_local3, f23_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act26(arg0, arg1, arg2)
    local f24_local0 = 20
    local f24_local1 = 3024
    local f24_local2 = 3028
    local f24_local3 = TARGET_ENE_0
    local f24_local4 = TARGET_SELF
    local f24_local5 = 40
    local f24_local6 = 0
    local f24_local7 = 0
    local f24_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f24_local0, f24_local1, f24_local3, f24_local5, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f24_local0, f24_local2, f24_local4, successDist2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act30(arg0, arg1, arg2)
    local f25_local0 = 5
    local f25_local1 = 3027
    local f25_local2 = TARGET_ENE_0
    local f25_local3 = 50
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f25_local0, f25_local1, f25_local2, f25_local3, 0, 0, 0)
    arg0:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act31(arg0, arg1, arg2)
    local f26_local0 = 5
    local f26_local1 = 3028
    local f26_local2 = TARGET_ENE_0
    local f26_local3 = 50
    local f26_local4 = 0
    local f26_local5 = 0
    local f26_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local0, f26_local1, f26_local2, f26_local3, 0, 0, 0)
    arg0:SetTimer(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act32(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(1, 100)
    if f27_local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, 1, 1, 1, TARGET_ENE_0, 20, 0, false)
    end
    local f27_local2 = 5
    local f27_local3 = 3035
    local f27_local4 = TARGET_ENE_0
    local f27_local5 = 50
    local f27_local6 = 0
    local f27_local7 = 0
    local f27_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local2, f27_local3, f27_local4, f27_local5, 0, 0, 0)
    arg0:SetTimer(1, 340)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act33(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = arg0:GetRandam_Int(1, 100)
    if f28_local0 <= 10 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, 1, 1, 1, TARGET_ENE_0, 20, 0, false)
    end
    local f28_local2 = 5
    local f28_local3 = 3036
    local f28_local4 = TARGET_ENE_0
    local f28_local5 = 50
    local f28_local6 = 0
    local f28_local7 = 0
    local f28_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f28_local2, f28_local3, f28_local4, f28_local5, 0, 0, 0)
    arg0:SetTimer(3, 240)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act34(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18619)
    local f29_local0 = 5
    local f29_local1 = 3013
    local f29_local2 = TARGET_ENE_0
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 0
    local f29_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f29_local0, f29_local1, f29_local2, f29_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function NebulaDragon_220000_Act35(arg0, arg1, arg2)
    local f30_local0 = 6
    local f30_local1 = TARGET_ENE_0
    local f30_local2 = 22
    local f30_local3 = TARGET_SELF
    local f30_local4 = true
    local f30_local5 = arg0:GetDist(TARGET_ENE_0)
    local f30_local6 = 0
    local f30_local7 = arg0:GetRandam_Int(1, 100)
    local f30_local8 = -1
    if f30_local7 <= f30_local6 then
        f30_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local8)
    
end

function NebulaDragon_220000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_NebulaDragon_220000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 18605) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18605)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            local f34_local2 = 18
            local f34_local3 = TARGET_ENE_0
            local f34_local4 = 100
            local f34_local5 = 0
            local f34_local6 = 0
            local f34_local7 = 0
            local f34_local8 = 6011
            local f34_local9 = 3023
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local8, f34_local3, f34_local4, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local9, f34_local3, f34_local4, 0, 0, 0)
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18614) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18614)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18618)
            if f34_local0 <= 25 and f34_local0 >= 10.1 then
                local f34_local2 = 18
                local f34_local3 = TARGET_ENE_0
                local f34_local4 = 10
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 3010
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local8, f34_local3, successDist2, 0, 0, 0)
            elseif f34_local0 <= 10 then
                local f34_local2 = 18
                local f34_local3 = TARGET_ENE_0
                local f34_local4 = 10
                local f34_local5 = 0
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 3003
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local8, f34_local3, successDist2, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18618) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18618)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            if f34_local0 <= 15 and f34_local0 >= 2 then
                if f34_local1 <= 50 then
                    NebulaDragon_220000_Act11(arg1, arg2)
                elseif f34_local1 <= 80 then
                    NebulaDragon_220000_Act12(arg1, arg2)
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18615) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18615)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            if f34_local0 <= 18 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18617)
                local f34_local2 = 18
                local f34_local3 = 3018
                local f34_local4 = TARGET_ENE_0
                local f34_local5 = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local3, f34_local4, successDist2, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18617) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18617)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            if f34_local0 <= 11 then
                local f34_local2 = 18
                local f34_local3 = 3034
                local f34_local4 = TARGET_ENE_0
                local f34_local5 = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local3, f34_local4, f34_local5, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18616) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 18616)
            arg2:ClearSubGoal()
            local f34_local0 = arg1:GetDist(TARGET_ENE_0)
            local f34_local1 = arg1:GetRandam_Int(1, 100)
            if f34_local0 <= 18 and f34_local0 >= 3 then
                local f34_local2 = 18
                local f34_local3 = 3031
                local f34_local4 = TARGET_ENE_0
                local f34_local5 = 10
                local f34_local6 = 0
                local f34_local7 = 0
                local f34_local8 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f34_local2, f34_local3, f34_local4, successDist2, 0, 0, 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_NebulaDragon_220000_AfterAttackAct, "NebulaDragon_220000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NebulaDragon_220000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


