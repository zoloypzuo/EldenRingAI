RegisterTableGoal(GOAL_ElderDragon452000_Battle, "ElderDragon452000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElderDragon452000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(10, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16890)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 16891)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 16892)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 5030) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5031) or not not arg1:HasSpecialEffectId(TARGET_SELF, 5032) or arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:SetNumber(10, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3033, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:GetNumber(10) == 0 then
                arg1:SetNumber(10, 1)
                if f2_local4 > 65 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                elseif f2_local4 > 15 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:GetNumber(10) == 1 then
                arg1:SetNumber(10, 2)
                if f2_local4 > 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 999, 0, 0)
                elseif f2_local4 > 35 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:GetNumber(10) == 2 then
                arg1:SetNumber(10, 0)
                if f2_local4 > 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                elseif f2_local4 > 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3035, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        return 
    end
    if f2_local6 == false and arg1:GetHpRate(TARGET_SELF) < 0.65 then
        f2_local0[30] = 10
    elseif f2_local6 == true and f2_local7 == false and arg1:GetHpRate(TARGET_SELF) < 0.45 then
        f2_local0[32] = 10
    elseif f2_local6 == true and f2_local7 == true and f2_local8 == false and arg1:GetHpRate(TARGET_SELF) < 0.3 then
        f2_local0[33] = 10
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 100, 90, 16) then
        f2_local0[3] = 5
        f2_local0[4] = 10
        f2_local0[5] = 20
        f2_local0[6] = 25
        f2_local0[7] = 25
        f2_local0[8] = 35
        f2_local0[9] = 10
        f2_local0[15] = 10
        f2_local0[17] = 20
        f2_local0[18] = 20
        f2_local0[32] = 40
        f2_local0[31] = 60
        f2_local0[33] = 60
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 100, 90, 16) then
        f2_local0[4] = 10
        f2_local0[5] = 20
        f2_local0[15] = 10
        f2_local0[7] = 25
        f2_local0[8] = 35
        f2_local0[9] = 10
        f2_local0[17] = 20
        f2_local0[18] = 20
        f2_local0[32] = 40
        f2_local0[31] = 60
        f2_local0[33] = 60
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 130, 90, 99) then
        f2_local0[8] = 25
        f2_local0[9] = 30
        f2_local0[15] = 10
        f2_local0[18] = 40
        f2_local0[32] = 40
        f2_local0[31] = 40
        f2_local0[33] = 60
    elseif f2_local3 >= 20 then
        f2_local0[13] = 20
        f2_local0[14] = 30
        f2_local0[18] = 40
        f2_local0[31] = 40
        f2_local0[32] = 40
        f2_local0[33] = 60
    elseif f2_local3 >= 5 then
        f2_local0[1] = 20
        f2_local0[2] = 20
        f2_local0[17] = 30
        f2_local0[18] = 40
        f2_local0[31] = 40
        f2_local0[32] = 40
        f2_local0[33] = 60
    else
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[5] = 20
        f2_local0[6] = 30
        f2_local0[7] = 25
        f2_local0[15] = 30
        f2_local0[17] = 30
        f2_local0[18] = 40
        f2_local0[31] = 40
        f2_local0[32] = 40
        f2_local0[33] = 60
    end
    if f2_local6 == false then
        f2_local0[31] = 0
        f2_local0[32] = 0
        f2_local0[33] = 0
        if f2_local3 > 50 then
            f2_local0[19] = 9999
        elseif f2_local3 > 30 then
            f2_local0[19] = 30
        end
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.45 then
        f2_local0[32] = 0
    end
    if arg1:GetHpRate(TARGET_SELF) > 0.3 then
        f2_local0[33] = 0
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 110, 90, 15) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 110, 90, 15) == false then
        f2_local0[7] = 0
    end
    if f2_local6 == true then
        f2_local0[16] = 0
    end
    if f2_local3 > 50 then
        f2_local0[11] = 0
    end
    if f2_local6 == true then
        f2_local0[7] = 0
        f2_local0[11] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
    end
    if f2_local8 == true then
        f2_local0[18] = 0
        f2_local0[19] = 0
    end
    if f2_local3 > 15 then
        f2_local0[17] = 0
    end
    if f2_local3 > 5 then
        f2_local0[15] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 20, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 20, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3014, 20, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3015, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[5], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3012, 30, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 20, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3020, 50, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3021, 50, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3025, 20, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3026, 20, f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3017, 30, f2_local0[11], 0)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3019, 50, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3030, 20, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3028, 50, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3027, 40, f2_local0[15], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3028, 40, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3029, 50, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3022, 60, f2_local0[17], 0)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3023, 60, f2_local0[17], 0)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3024, 50, f2_local0[18], 0)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3039, 45, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3038, 45, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3034, 60, f2_local0[32], 0)
    f2_local0[33] = SetCoolTime(arg1, arg2, 20017, 120, f2_local0[33], 0)
    if f2_local3 > 8 then
        f2_local0[1] = 0
    end
    if f2_local3 > 20 then
        f2_local0[2] = 0
    end
    local f2_local9 = 5
    arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToB", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToF", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + f2_local9, f2_local9, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + f2_local9, f2_local9, 0))
    f2_local1[1] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act34)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act50)
    f2_local1[51] = REGIST_FUNC(arg1, arg2, ElderDragon452000_Act51)
    local f2_local10 = REGIST_FUNC(arg1, arg2, ElderDragon452000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function ElderDragon452000_Act01(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16855)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 10
    local f3_local3 = 999
    local f3_local4 = 999
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 3
    local f3_local8 = 6
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 40
    local f3_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local12 = 3
    local f3_local13 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f3_local9, TARGET_ENE_0, 999, f3_local12, f3_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act02(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 18
    local f4_local3 = 999
    local f4_local4 = 999
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 3
    local f4_local8 = 6
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3002
    local f4_local10 = 40
    local f4_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local12 = 3
    local f4_local13 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f4_local9, TARGET_ENE_0, 999, f4_local12, f4_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act03(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16855)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 7
    local f5_local3 = 999
    local f5_local4 = 999
    local f5_local5 = 0
    local f5_local6 = 0
    local f5_local7 = 3
    local f5_local8 = 6
    Approach_Act_Flex(arg0, arg1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7, f5_local8)
    local f5_local9 = 3014
    local f5_local10 = 40
    local f5_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local12 = 0
    local f5_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f5_local9, TARGET_ENE_0, f5_local10, f5_local12, f5_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act04(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 3015
    local f6_local3 = 40
    local f6_local4 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local5 = 0
    local f6_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f6_local2, TARGET_ENE_0, f6_local3, f6_local5, f6_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 3011
    local f7_local3 = 3012
    local f7_local4 = 90
    local f7_local5 = 90
    local f7_local6 = 40
    local f7_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 0
    local f7_local9 = 100
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 150, 90, 40) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f7_local2, TARGET_ENE_0, f7_local4, f7_local8, f7_local9, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 150, 90, 40) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f7_local3, TARGET_ENE_0, f7_local4, f7_local8, f7_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3016
    local f8_local1 = 90
    local f8_local2 = 90
    local f8_local3 = 40
    local f8_local4 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local5 = 0
    local f8_local6 = 100
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f8_local0, TARGET_ENE_0, f8_local1, f8_local5, f8_local6, 0, 0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16854)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16873)
    local f8_local7 = arg0:GetDist(TARGET_ENE_0)
    local f8_local8 = arg0:GetRandam_Int(1, 100)
    
end

function ElderDragon452000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 3009
    local f9_local3 = 3010
    local f9_local4 = 90
    local f9_local5 = 90
    local f9_local6 = 40
    local f9_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local8 = 0
    local f9_local9 = 100
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 110, 90, 15) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f9_local2, TARGET_ENE_0, f9_local4, f9_local8, f9_local9, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 110, 90, 15) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f9_local3, TARGET_ENE_0, f9_local4, f9_local8, f9_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
    
end

function ElderDragon452000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3020
    local f10_local3 = 3021
    local f10_local4 = 90
    local f10_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local6 = 0
    local f10_local7 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16867)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local2, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local3, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
    
end

function ElderDragon452000_Act09(arg0, arg1, arg2)
    local f11_local0 = 3025
    local f11_local1 = 3026
    local f11_local2 = 90
    local f11_local3 = 90
    local f11_local4 = 40
    local f11_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local6 = 0
    local f11_local7 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16867)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 99) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f11_local0, TARGET_ENE_0, f11_local2, f11_local6, f11_local7, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 99) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f11_local1, TARGET_ENE_0, f11_local2, f11_local6, f11_local7, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act10(arg0, arg1, arg2)
    local f12_local0 = 20019
    local f12_local1 = 90
    local f12_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 0
    local f12_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f12_local0, TARGET_ENE_0, f12_local1, f12_local3, f12_local4, 0, 0)
    
end

function ElderDragon452000_Act11(arg0, arg1, arg2)
    local f13_local0 = 3017
    local f13_local1 = 90
    local f13_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 3
    local f13_local4 = 30
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f13_local0, TARGET_ENE_0, f13_local1, f13_local3, f13_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16853)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16854)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 35
    local f14_local3 = 999
    local f14_local4 = 999
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 3
    local f14_local8 = 6
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3018
    local f14_local10 = 80
    local f14_local11 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local12 = 2
    local f14_local13 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f14_local9, TARGET_ENE_0, f14_local10, f14_local12, f14_local13, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    local f15_local2 = 80
    local f15_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local4 = 2
    local f15_local5 = 20
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3019, TARGET_ENE_0, f15_local2, f15_local4, f15_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 3030
    local f16_local3 = 3030
    local f16_local4 = 90
    local f16_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local6 = 3
    local f16_local7 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f16_local2, TARGET_ENE_0, f16_local4, f16_local6, f16_local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
    
end

function ElderDragon452000_Act15(arg0, arg1, arg2)
    local f17_local0 = 3027
    local f17_local1 = 3028
    local f17_local2 = 90
    local f17_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local4 = 0
    local f17_local5 = 0
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 30) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local0, TARGET_ENE_0, 0, 0, 0, 0, 0)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 90, 30) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f17_local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
    
end

function ElderDragon452000_Act16(arg0, arg1, arg2)
    local f18_local0 = 3029
    local f18_local1 = 90
    local f18_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local3 = 0
    local f18_local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f18_local0, TARGET_ENE_0, f18_local1, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds6
    
end

function ElderDragon452000_Act17(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 3022
    local f19_local3 = 3023
    local f19_local4 = 90
    local f19_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local6 = 2
    local f19_local7 = 60
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, f19_local2, TARGET_ENE_0, f19_local4, f19_local6, f19_local7, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, f19_local2, TARGET_ENE_0, f19_local4, f19_local6, f19_local7, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act18(arg0, arg1, arg2)
    local f20_local0 = 3024
    local f20_local1 = 90
    local f20_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local3 = 0
    local f20_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f20_local0, TARGET_ENE_0, f20_local1, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act19(arg0, arg1, arg2)
    local f21_local0 = 3024
    local f21_local1 = 90
    local f21_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f21_local0, TARGET_ENE_0, f21_local1, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act20(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 6, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 10
    local f24_local2 = 30
    local f24_local3 = true
    local f24_local4 = arg0:GetRandam_Int(1, 100)
    local f24_local5 = -1
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, arg0:GetRandam_Int(25, 30))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachAround, arg0:GetRandam_Int(3, 5), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, arg0:GetRandam_Int(25, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act30(arg0, arg1, arg2)
    local f25_local0 = 300
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16868)
    local f25_local1 = 3032
    local f25_local2 = 999
    local f25_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local4 = 0
    local f25_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f25_local1, TARGET_ENE_0, f25_local2, f25_local4, f25_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act31(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    local f26_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 16890)
    local f26_local1 = arg0:GetDist(TARGET_ENE_0)
    local f26_local2 = arg0:GetRandam_Int(1, 100)
    local f26_local3 = 3038
    local f26_local4 = 90
    local f26_local5 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local6 = 0
    local f26_local7 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f26_local3, TARGET_ENE_0, f26_local4, f26_local6, f26_local7, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act32(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    local f27_local0 = 3034
    local f27_local1 = 999
    local f27_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 0
    local f27_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, f27_local0, TARGET_HOSTPLAYER, f27_local1, f27_local3, f27_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act33(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16866)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16859)
    local f28_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 16890)
    local f28_local1 = 20015
    local f28_local2 = 999
    local f28_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local4 = 0
    local f28_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f28_local1, TARGET_ENE_0, f28_local2, f28_local4, f28_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_Act52(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function ElderDragon452000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_ElderDragon452000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f33_local0 = arg1:GetDist(TARGET_ENE_0)
    local f33_local1 = arg1:GetDist(TARGET_FRI_0)
    local f33_local2 = arg1:GetRandam_Int(1, 100)
    local f33_local3 = arg1:GetPrevTargetState()
    local f33_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16868)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16869)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16870)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16860)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16858)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16873)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
    local f33_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 16890)
    local f33_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 16891)
    local f33_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 16892)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16867) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 180) and f33_local8 < 15 and arg1:GetAttackPassedTime(20019) >= 40 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20019, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20020, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16851) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_FL, 180) and f33_local8 < 8 and f33_local8 > 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 4, 0, 90)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 240) and f33_local8 < 8 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3007, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16852) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16851)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16852)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16857)
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and f33_local8 < 15 then
            if f33_local9 > 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 4, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3004, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16857) then
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3005, TARGET_ENE_0, 4, 0, 90)
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16853) then
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f33_local8 > 1 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16855) then
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and f33_local8 > 1 and f33_local8 < 15 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3008, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3009, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16860) then
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 90, 40) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3017, TARGET_ENE_0, 20, 0, 90)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16858) then
        local f33_local8 = arg1:GetDist(TARGET_ENE_0)
        if f33_local8 > 16 then
            if f33_local2 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 20, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 20, 0, 90)
                return true
            end
        elseif f33_local8 > 9 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 20, 0, 90)
            return true
        elseif f33_local8 > 2 then
            if f33_local2 > 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 20, 0, 90)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 20, 0, 90)
                return true
            end
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3016, TARGET_ENE_0, 20, 0, 90)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16859) then
        local f33_local8 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 20017, TARGET_HOSTPLAYER, 9999, 360, 360)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg1:GetSpecialEffectActivateInterruptId(5030) or not not arg1:GetSpecialEffectActivateInterruptId(5031) or not not arg1:GetSpecialEffectActivateInterruptId(5032) or arg1:GetSpecialEffectActivateInterruptId(5033)) then
        arg2:ClearSubGoal()
        local f33_local8 = arg1:GetRandam_Int(1, 100)
        local f33_local9 = arg1:GetRandam_Int(1, 100)
        local f33_local10 = arg1:GetRandam_Int(1, 100)
        local f33_local11 = AI_DIR_TYPE_F
        local f33_local12 = 5
        arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToB", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToF", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + f33_local12, f33_local12, 0))
        arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + f33_local12, f33_local12, 0))
        if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBL") >= 25 or arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBR") >= 25 then
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBL") < 25 then
                f33_local11 = AI_DIR_TYPE_ToBR
            elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBR") < 25 then
                f33_local11 = AI_DIR_TYPE_ToBL
            elseif f33_local10 > 50 then
                f33_local11 = AI_DIR_TYPE_ToBR
            else
                f33_local11 = AI_DIR_TYPE_ToBL
            end
        elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToL") >= 25 or arg1:GetStringIndexedNumber("ExistMeshOnLine_ToR") >= 25 then
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToL") < 25 then
                f33_local11 = AI_DIR_TYPE_ToR
            elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToR") < 25 then
                f33_local11 = AI_DIR_TYPE_ToL
            elseif f33_local10 > 50 then
                f33_local11 = AI_DIR_TYPE_ToR
            else
                f33_local11 = AI_DIR_TYPE_ToL
            end
        elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFL") >= 25 or arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFR") >= 25 then
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFL") < 25 then
                f33_local11 = AI_DIR_TYPE_ToFR
            elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFR") < 25 then
                f33_local11 = AI_DIR_TYPE_ToFL
            elseif f33_local10 > 50 then
                f33_local11 = AI_DIR_TYPE_ToFR
            else
                f33_local11 = AI_DIR_TYPE_ToFL
            end
        elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToB") >= 25 or arg1:GetStringIndexedNumber("ExistMeshOnLine_ToF") >= 25 then
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToB") < 25 then
                f33_local11 = AI_DIR_TYPE_ToF
            elseif arg1:GetStringIndexedNumber("ExistMeshOnLine_ToF") < 25 then
                f33_local11 = AI_DIR_TYPE_ToB
            elseif f33_local10 > 50 then
                f33_local11 = AI_DIR_TYPE_ToF
            else
                f33_local11 = AI_DIR_TYPE_ToB
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:SetNumber(10, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_HOSTPLAYER, f33_local11, 5, TARGET_HOSTPLAYER, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3033, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            if arg1:GetNumber(10) == 0 then
                arg1:SetNumber(10, 1)
                if f33_local8 > 65 then
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 20, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3000, TARGET_ENE_0, 999, 0, 0)
                elseif f33_local8 > 15 then
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 20, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3002, TARGET_ENE_0, 999, 0, 0)
                else
                    arg1:SetNumber(10, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 15, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:GetNumber(10) == 1 then
                arg1:SetNumber(10, 2)
                if f33_local8 > 75 then
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 20, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3001, TARGET_ENE_0, 999, 0, 0)
                elseif f33_local8 > 35 then
                    arg1:SetNumber(10, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 20, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    arg1:SetNumber(10, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 15, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                end
            elseif arg1:GetNumber(10) == 2 then
                arg1:SetNumber(10, 0)
                if f33_local8 > 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 15, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3006, TARGET_ENE_0, 999, 0, 0)
                elseif f33_local8 > 40 then
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 20, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3003, TARGET_ENE_0, 999, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 40, TARGET_ENE_0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 3018, TARGET_ENE_0, 999, 0, 0)
                end
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_HOSTPLAYER, f33_local11, 0, TARGET_EVENT, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3035, TARGET_HOSTPLAYER, 999, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 15, TARGET_ENE_0, f33_local11, 5, TARGET_ENE_0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, 20016, TARGET_ENE_0, 999, 0, 0)
            return true
        end
        return 
    end
    return false
    
end

RegisterTableGoal(GOAL_ElderDragon452000_AfterAttackAct, "ElderDragon452000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ElderDragon452000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


