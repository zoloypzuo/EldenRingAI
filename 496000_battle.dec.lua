RegisterTableGoal(GOAL_Nightking_Kennzoku_Skeleton496000_Battle, "GOAL_Nightking_Kennzoku_Skeleton496000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Nightking_Kennzoku_Skeleton496000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDist(TARGET_EVENT)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15345)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 5020)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 15346)
    if f2_local7 == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5400) then
            if f2_local3 < 30 then
                f2_local0[26] = 30
                f2_local0[27] = 30
                f2_local0[28] = 30
            else
                f2_local0[49] = 30
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) == true then
            f2_local0[17] = 100
        elseif f2_local3 > 45 then
            f2_local0[29] = 30
        elseif f2_local3 > 23 then
            f2_local0[22] = 100
        elseif f2_local3 > 5 then
            f2_local0[21] = 100
            f2_local0[23] = 100
            f2_local0[24] = 100
            f2_local0[25] = 100
        else
            f2_local0[25] = 100
        end
    elseif f2_local8 == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            if InsideRange(arg1, arg2, 180, 180, -999, 10) then
                f2_local0[17] = 100
            elseif f2_local3 < 25 then
                f2_local0[45] = 15
                f2_local0[46] = 25
                f2_local0[47] = 25
                f2_local0[48] = 25
            elseif f2_local3 < 65 then
                f2_local0[45] = 20
            end
        elseif InsideRange(arg1, arg2, 180, 180, -999, 10) then
            f2_local0[17] = 100
        elseif f2_local3 < 25 then
            f2_local0[46] = 25
            f2_local0[47] = 25
            f2_local0[48] = 25
        end
    elseif f2_local9 == true and arg1:GetNumber(1) ~= 1 then
        if arg1:GetLatestSoundBehaviorID() == 495000 then
            f2_local0[9] = 20
        end
    elseif InsideRange(arg1, arg2, 180, 180, -999, 10) then
        f2_local0[17] = 100
    elseif arg1:GetLatestSoundBehaviorID() == 495000 then
        f2_local0[5] = 20
        f2_local0[6] = 25
        f2_local0[7] = 25
        f2_local0[8] = 30
    elseif f2_local4 >= 30 and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == true then
        f2_local0[10] = 10
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 100, f2_local0[1], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 100, f2_local0[3], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 120, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 100, f2_local0[6], 0)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3004, 20, f2_local0[45], 1)
    if arg1:GetTimer(0) > 0 then
        f2_local0[15] = 0
    end
    if f2_local3 > 10 then
        f2_local0[25] = 0
    end
    if f2_local3 < 10 then
        f2_local0[21] = 0
        f2_local0[23] = 0
    end
    if f2_local3 < 15 then
        f2_local0[45] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act10)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act15)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act17)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act31)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act42)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_Act49)
    local f2_local10 = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku_Skeleton496000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

function Nightking_Kennzoku_Skeleton496000_Act01(arg0, arg1, arg2)
    local f3_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    local f3_local7 = AI_DIR_TYPE_FL
    local f3_local8 = arg0:GetRandam_Int(0, 1)
    if f3_local8 == 1 then
        f3_local7 = AI_DIR_TYPE_FR
    end
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, f3_local7, f3_local0 + 5, TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local9 = 3000
    local f3_local10 = 20
    local f3_local11 = 0
    local f3_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f3_local9, TARGET_ENE_0, f3_local10, f3_local11, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act02(arg0, arg1, arg2)
    local f4_local0 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 20
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act03(arg0, arg1, arg2)
    local f5_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 20
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act04(arg0, arg1, arg2)
    local f6_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 20
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f7_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    local f7_local7 = AI_DIR_TYPE_FL
    local f7_local8 = arg0:GetRandam_Int(0, 1)
    local f7_local9 = 3004
    local f7_local10 = 20.5
    local f7_local11 = 0
    local f7_local12 = 0
    local f7_local13 = 0
    if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FL, f7_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f7_local0) >= 12 then
            if f7_local8 == 1 then
                f7_local7 = AI_DIR_TYPE_FR
            else
                f7_local7 = AI_DIR_TYPE_FL
            end
        else
            f7_local7 = AI_DIR_TYPE_FL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f7_local0) >= 12 then
        f7_local7 = AI_DIR_TYPE_FR
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_F, f7_local0) >= 12 then
        f7_local7 = AI_DIR_TYPE_F
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_L, f7_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f7_local0) >= 12 then
            if f7_local8 == 1 then
                f7_local7 = AI_DIR_TYPE_R
            else
                f7_local7 = AI_DIR_TYPE_L
            end
        else
            f7_local7 = AI_DIR_TYPE_L
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f7_local0) >= 12 then
        f7_local7 = AI_DIR_TYPE_R
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BL, f7_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BR, f7_local0) >= 12 then
            if f7_local8 == 1 then
                f7_local7 = AI_DIR_TYPE_BR
            else
                f7_local7 = AI_DIR_TYPE_BL
            end
        else
            f7_local7 = AI_DIR_TYPE_BL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_B, f7_local0) >= 12 then
        f7_local7 = AI_DIR_TYPE_B
    else
        f7_local13 = 1
    end
    if f7_local13 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, f7_local11, f7_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 20, TARGET_ENE_0, f7_local7, 25, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3021, TARGET_ENE_0, 999, f7_local11, f7_local12, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f7_local9, TARGET_ENE_0, f7_local10, f7_local11, f7_local12, 0, 0)
    arg0:Replaning()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act06(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = f8_local1 + 0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 4
    local f8_local7 = 8
    local f8_local8 = AI_DIR_TYPE_FL
    local f8_local9 = arg0:GetRandam_Int(0, 1)
    local f8_local10 = 0
    local f8_local11 = 0
    local f8_local12 = 0
    if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FL, f8_local1) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f8_local1) >= 12 then
            if f8_local9 == 1 then
                f8_local8 = AI_DIR_TYPE_FR
            else
                f8_local8 = AI_DIR_TYPE_FL
            end
        else
            f8_local8 = AI_DIR_TYPE_FL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f8_local1) >= 12 then
        f8_local8 = AI_DIR_TYPE_FR
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_F, f8_local1) >= 12 then
        f8_local8 = AI_DIR_TYPE_F
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_L, f8_local1) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f8_local1) >= 12 then
            if f8_local9 == 1 then
                f8_local8 = AI_DIR_TYPE_R
            else
                f8_local8 = AI_DIR_TYPE_L
            end
        else
            f8_local8 = AI_DIR_TYPE_L
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f8_local1) >= 12 then
        f8_local8 = AI_DIR_TYPE_R
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BL, f8_local1) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BR, f8_local1) >= 12 then
            if f8_local9 == 1 then
                f8_local8 = AI_DIR_TYPE_BR
            else
                f8_local8 = AI_DIR_TYPE_BL
            end
        else
            f8_local8 = AI_DIR_TYPE_BL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_B, f8_local1) >= 12 then
        f8_local8 = AI_DIR_TYPE_B
    else
        f8_local10 = 1
    end
    if f8_local10 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, f8_local11, f8_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 20, TARGET_ENE_0, f8_local8, f8_local1 + 5, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3021, TARGET_ENE_0, 999, f8_local11, f8_local12, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local13 = 3005
    local f8_local14 = 2.5
    local f8_local15 = 0
    local f8_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f8_local13, TARGET_ENE_0, f8_local14, f8_local15, f8_local16, 0, 0)
    arg0:Replaning()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act07(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f9_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 10
    local f9_local6 = 10
    local f9_local7 = AI_DIR_TYPE_FL
    local f9_local8 = arg0:GetRandam_Int(0, 1)
    local f9_local9 = 0
    local f9_local10 = 0
    local f9_local11 = 0
    if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FL, f9_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f9_local0) >= 12 then
            if f9_local8 == 1 then
                f9_local7 = AI_DIR_TYPE_FR
            else
                f9_local7 = AI_DIR_TYPE_FL
            end
        else
            f9_local7 = AI_DIR_TYPE_FL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f9_local0) >= 12 then
        f9_local7 = AI_DIR_TYPE_FR
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_F, f9_local0) >= 12 then
        f9_local7 = AI_DIR_TYPE_F
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_L, f9_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f9_local0) >= 12 then
            if f9_local8 == 1 then
                f9_local7 = AI_DIR_TYPE_R
            else
                f9_local7 = AI_DIR_TYPE_L
            end
        else
            f9_local7 = AI_DIR_TYPE_L
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f9_local0) >= 12 then
        f9_local7 = AI_DIR_TYPE_R
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BL, f9_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BR, f9_local0) >= 12 then
            if f9_local8 == 1 then
                f9_local7 = AI_DIR_TYPE_BR
            else
                f9_local7 = AI_DIR_TYPE_BL
            end
        else
            f9_local7 = AI_DIR_TYPE_BL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_B, f9_local0) >= 12 then
        f9_local7 = AI_DIR_TYPE_B
    else
        f9_local9 = 1
    end
    if f9_local9 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, f9_local10, f9_local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 20, TARGET_ENE_0, f9_local7, f9_local0 + 5, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3021, TARGET_ENE_0, 999, f9_local10, f9_local11, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local12 = 3000
    local f9_local13 = 3001
    local f9_local14 = 10
    local f9_local15 = 10
    local f9_local16 = 0
    local f9_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f9_local12, TARGET_ENE_0, f9_local0, f9_local16, f9_local17, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, f9_local13, TARGET_ENE_0, f9_local14, 90)
    arg0:Replaning()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act08(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f10_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 10
    local f10_local6 = 10
    local f10_local7 = AI_DIR_TYPE_FL
    local f10_local8 = arg0:GetRandam_Int(0, 1)
    local f10_local9 = 0
    local f10_local10 = 0
    local f10_local11 = 0
    if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FL, f10_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f10_local0) >= 12 then
            if f10_local8 == 1 then
                f10_local7 = AI_DIR_TYPE_FR
            else
                f10_local7 = AI_DIR_TYPE_FL
            end
        else
            f10_local7 = AI_DIR_TYPE_FL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_FR, f10_local0) >= 12 then
        f10_local7 = AI_DIR_TYPE_FR
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_F, f10_local0) >= 12 then
        f10_local7 = AI_DIR_TYPE_F
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_L, f10_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f10_local0) >= 12 then
            if f10_local8 == 1 then
                f10_local7 = AI_DIR_TYPE_R
            else
                f10_local7 = AI_DIR_TYPE_L
            end
        else
            f10_local7 = AI_DIR_TYPE_L
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_R, f10_local0) >= 12 then
        f10_local7 = AI_DIR_TYPE_R
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BL, f10_local0) >= 12 then
        if arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_BR, f10_local0) >= 12 then
            if f10_local8 == 1 then
                f10_local7 = AI_DIR_TYPE_BR
            else
                f10_local7 = AI_DIR_TYPE_BL
            end
        else
            f10_local7 = AI_DIR_TYPE_BL
        end
    elseif arg0:GetExistMeshOnLineDist(TARGET_ENE_0, AI_DIR_TYPE_B, f10_local0) >= 12 then
        f10_local7 = AI_DIR_TYPE_B
    else
        f10_local9 = 1
    end
    if f10_local9 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 999, f10_local10, f10_local11, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 20, TARGET_ENE_0, f10_local7, f10_local0 + 5, TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3021, TARGET_ENE_0, 999, f10_local10, f10_local11, 0, 0)
    end
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local12 = 3002
    local f10_local13 = 3003
    local f10_local14 = 10
    local f10_local15 = 10
    local f10_local16 = 0
    local f10_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f10_local12, TARGET_ENE_0, f10_local0, f10_local16, f10_local17, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, f10_local13, TARGET_ENE_0, f10_local14, 90)
    arg0:Replaning()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:SetNumber(1, 1)
    local f11_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    local f11_local7 = AI_DIR_TYPE_FL
    local f11_local8 = arg0:GetRandam_Int(0, 1)
    local f11_local9 = 3004
    local f11_local10 = 20.5
    local f11_local11 = 2.5
    local f11_local12 = 90
    local f11_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f11_local9, TARGET_ENE_0, f11_local10, f11_local11, f11_local12, 0, 0)
    arg0:Replaning()
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    local f12_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 50
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 10
    local f12_local6 = 10
    local f12_local7 = AI_DIR_TYPE_FL
    local f12_local8 = 3022
    local f12_local9 = 20.5
    local f12_local10 = 2.5
    local f12_local11 = 90
    local f12_local12 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act15(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 10
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = arg0:GetRandam_Int(1, 100)
    local f13_local5 = -1
    if f13_local4 <= f13_local3 then
        f13_local5 = 9910
    end
    arg0:SetTimer(0, 20)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, f13_local5)
    
end

function Nightking_Kennzoku_Skeleton496000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 60, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act21(arg0, arg1, arg2)
    local f15_local0 = 3000
    local f15_local1 = 10
    local f15_local2 = 10
    local f15_local3 = 2
    local f15_local4 = 150
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, AppDist, f15_local3, f15_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act22(arg0, arg1, arg2)
    local f16_local0 = 3001
    local f16_local1 = 10
    local f16_local2 = 10
    local f16_local3 = 2
    local f16_local4 = 100
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, AppDist, f16_local3, f16_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act23(arg0, arg1, arg2)
    local f17_local0 = 3002
    local f17_local1 = 10
    local f17_local2 = 10
    local f17_local3 = 2
    local f17_local4 = 200
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, AppDist, f17_local3, f17_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act24(arg0, arg1, arg2)
    local f18_local0 = 3003
    local f18_local1 = 10
    local f18_local2 = 10
    local f18_local3 = 2
    local f18_local4 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f18_local0, TARGET_ENE_0, AppDist, f18_local3, f18_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act25(arg0, arg1, arg2)
    local f19_local0 = 3004
    local f19_local1 = 10
    local f19_local2 = 10
    local f19_local3 = 0
    local f19_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local0, TARGET_ENE_0, AppDist, f19_local3, f19_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act26(arg0, arg1, arg2)
    local f20_local0 = 20010
    local f20_local1 = 10
    local f20_local2 = 10
    local f20_local3 = 0
    local f20_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local0, TARGET_ENE_0, AppDist, f20_local3, f20_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act27(arg0, arg1, arg2)
    local f21_local0 = 20011
    local f21_local1 = 10
    local f21_local2 = 10
    local f21_local3 = 0
    local f21_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local0, TARGET_ENE_0, AppDist, f21_local3, f21_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act28(arg0, arg1, arg2)
    local f22_local0 = 20012
    local f22_local1 = 10
    local f22_local2 = 10
    local f22_local3 = 0
    local f22_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local0, TARGET_ENE_0, AppDist, f22_local3, f22_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act29(arg0, arg1, arg2)
    local f23_local0 = 3005
    local f23_local1 = 10
    local f23_local2 = 10
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local0, TARGET_ENE_0, AppDist, f23_local3, f23_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act30(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Float(5, 10)
    local f24_local2 = arg0:GetRandam_Float(9, 10)
    local f24_local3 = 100
    local f24_local4 = -1
    if arg0:GetRandam_Int(1, 100) <= f24_local3 then
        f24_local4 = -1
    end
    if f24_local0 >= 99 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local1, TARGET_ENE_0, f24_local2, TARGET_SELF, false, f24_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local1, TARGET_ENE_0, f24_local2, TARGET_SELF, true, f24_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act31(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    local f25_local0 = 10
    local f25_local1 = TARGET_ENE_0
    local f25_local2 = 10
    local f25_local3 = TARGET_ENE_0
    local f25_local4 = true
    local f25_local5 = arg0:GetDist(TARGET_ENE_0)
    local f25_local6 = 0
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    local f25_local8 = -1
    if f25_local7 <= f25_local6 then
        f25_local8 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act41(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f26_local0 = 3002
    local f26_local1 = 20
    local f26_local2 = 0
    local f26_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f26_local0, TARGET_ENE_0, f26_local1, f26_local2, f26_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act42(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f27_local0 = 3002
    local f27_local1 = 20
    local f27_local2 = 0
    local f27_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_ToB, 30, TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local0, TARGET_ENE_0, f27_local1, f27_local2, f27_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act43(arg0, arg1, arg2)
    local f28_local0 = 3002
    local f28_local1 = 20
    local f28_local2 = 0
    local f28_local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f28_local0, TARGET_ENE_0, f28_local1, f28_local2, f28_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act44(arg0, arg1, arg2)
    local f29_local0 = 3003
    local f29_local1 = 20
    local f29_local2 = 0
    local f29_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act45(arg0, arg1, arg2)
    local f30_local0 = 3004
    local f30_local1 = 100
    local f30_local2 = 0
    local f30_local3 = 0
    local f30_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 4), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act46(arg0, arg1, arg2)
    local f31_local0 = 3005
    local f31_local1 = 100
    local f31_local2 = 0
    local f31_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, f31_local0, TARGET_ENE_0, 999, f31_local2, f31_local3, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 4), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act47(arg0, arg1, arg2)
    local f32_local0 = 3000
    local f32_local1 = 3001
    local f32_local2 = 100
    local f32_local3 = 100
    local f32_local4 = 0
    local f32_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f32_local0, TARGET_ENE_0, AppDist, f32_local4, f32_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, f32_local1, TARGET_ENE_0, f32_local2, 90)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 4), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act48(arg0, arg1, arg2)
    local f33_local0 = 3002
    local f33_local1 = 3003
    local f33_local2 = 100
    local f33_local3 = 100
    local f33_local4 = 0
    local f33_local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, f33_local0, TARGET_ENE_0, AppDist, f33_local4, f33_local5, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, f33_local1, TARGET_ENE_0, f33_local2, 90)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(3, 4), TARGET_NONE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_Act49(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0.5, 0.6), TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku_Skeleton496000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetDist(TARGET_ENE_0)
    local f38_local1 = arg1:GetDist(TARGET_FRI_0)
    local f38_local2 = arg1:GetRandam_Int(1, 100)
    local f38_local3 = arg1:GetPrevTargetState()
    local f38_local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5038) then
        local f38_local5 = arg1:GetDist(TARGET_ENE_0)
        local f38_local6 = arg1:GetRandam_Int(1, 100)
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 20, TARGET_EVENT, AI_DIR_TYPE_F, 0, TARGET_EVENT)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Nightking_Kennzoku_Skeleton496000_AfterAttackAct, "GOAL_Nightking_Kennzoku_Skeleton496000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Nightking_Kennzoku_Skeleton496000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


