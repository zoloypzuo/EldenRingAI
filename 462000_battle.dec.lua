RegisterTableGoal(GOAL_Astile462000_Battle, "Astile462000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("Warp_Bagworm", 0)
    arg1:SetStringIndexedNumber("Warp_HU", 0)
    arg1:SetNumber(10, 0)
    arg1:SetNumber(9, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16720)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16721)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16744)
    local f2_local6 = arg1:GetEventRequest()
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16721) or not not arg1:HasSpecialEffectId(TARGET_SELF, 16722) or arg1:HasSpecialEffectId(TARGET_SELF, 16723) then
        if arg1:GetLatestSoundBehaviorID() == 462000 or arg1:GetLatestSoundBehaviorID() == 462010 or arg1:GetLatestSoundBehaviorID() == 462010 then
            f2_local0[35] = 999
        else
            f2_local0[36] = 999
        end
    elseif f2_local3 > 40 then
        f2_local0[11] = 999
        f2_local0[12] = 40
        f2_local0[14] = 30
        f2_local0[21] = 30
        f2_local0[30] = 30
        f2_local0[49] = 30
    elseif f2_local3 > 20 then
        f2_local0[12] = 50
        f2_local0[14] = 20
        f2_local0[21] = 30
        f2_local0[30] = 30
    elseif f2_local3 > 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 50, 20) then
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[14] = 30
            f2_local0[30] = 50
        else
            f2_local0[14] = 30
            f2_local0[30] = 20
            f2_local0[41] = 10
        end
    elseif f2_local3 > 6 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 50, 20) then
            f2_local0[2] = 20
            f2_local0[3] = 20
            f2_local0[4] = 10
            f2_local0[14] = 30
            f2_local0[24] = 20
            f2_local0[30] = 20
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 50) then
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[9] = 15
            f2_local0[10] = 15
            f2_local0[15] = 30
            f2_local0[20] = 30
            f2_local0[30] = 20
        else
            f2_local0[5] = 20
            f2_local0[6] = 20
            f2_local0[15] = 30
            f2_local0[20] = 30
            f2_local0[30] = 20
        end
    elseif f2_local3 > -2 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 50, 20) then
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 5
            f2_local0[9] = 15
            f2_local0[10] = 15
            f2_local0[24] = 20
            f2_local0[30] = 30
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 50) then
            f2_local0[1] = 10
            f2_local0[4] = 10
            f2_local0[5] = 20
            f2_local0[9] = 20
            f2_local0[10] = 20
            f2_local0[15] = 30
            f2_local0[23] = 5
            f2_local0[20] = 15
            f2_local0[24] = 5
            f2_local0[30] = 20
        else
            f2_local0[2] = 10
            f2_local0[3] = 10
            f2_local0[4] = 5
            f2_local0[9] = 15
            f2_local0[10] = 15
            f2_local0[20] = 15
            f2_local0[24] = 15
            f2_local0[30] = 20
        end
    else
        f2_local0[2] = 15
        f2_local0[3] = 15
        f2_local0[4] = 10
        f2_local0[9] = 20
        f2_local0[24] = 20
        f2_local0[30] = 45
    end
    local f2_local7 = 8
    arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_F", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_B", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_L", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_R", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToB", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToF", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + f2_local7, f2_local7, 0))
    arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + f2_local7, f2_local7, 0))
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5 + arg1:GetRandam_Int(0, 10), f2_local0[1], 0)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15 + arg1:GetRandam_Int(0, 10), f2_local0[2], 0)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 15 + arg1:GetRandam_Int(0, 10), f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3024, 20 + arg1:GetRandam_Int(0, 10), f2_local0[4], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3014, 10 + arg1:GetRandam_Int(0, 10), f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3019, 10 + arg1:GetRandam_Int(0, 10), f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3013, 20 + arg1:GetRandam_Int(0, 10), f2_local0[11], 0)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3012, 10 + arg1:GetRandam_Int(0, 10), f2_local0[12], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 15 + arg1:GetRandam_Int(0, 5), f2_local0[14], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3010, 15 + arg1:GetRandam_Int(0, 10), f2_local0[20], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3015, 30 + arg1:GetRandam_Int(0, 10), f2_local0[23], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3016, 60 + arg1:GetRandam_Int(0, 10), f2_local0[24], 0)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3003, 40 + arg1:GetRandam_Int(0, 10), f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 20005, 40 + arg1:GetRandam_Int(0, 10), f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 20015, 40 + arg1:GetRandam_Int(0, 10), f2_local0[30], 1)
    if f2_local3 > 50 then
        f2_local0[21] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16744) == false then
        f2_local0[11] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 16744) == false and arg1:GetHpRate(TARGET_SELF) <= 0.6 then
        f2_local0[30] = f2_local0[30] * 80
    end
    if arg1:GetHpRate(TARGET_SELF) >= 0.97 then
        f2_local0[30] = 0
        f2_local0[49] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Astile462000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Astile462000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Astile462000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Astile462000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Astile462000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Astile462000_Act06)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Astile462000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Astile462000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Astile462000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Astile462000_Act12)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Astile462000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Astile462000_Act15)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Astile462000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Astile462000_Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Astile462000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Astile462000_Act24)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Astile462000_Act30)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, Astile462000_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, Astile462000_Act36)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, Astile462000_Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Astile462000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Astile462000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Astile462000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Astile462000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, Astile462000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Astile462000_Act45)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, Astile462000_Act49)
    local f2_local8 = REGIST_FUNC(arg1, arg2, Astile462000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function Astile462000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = arg0:GetRandam_Int(1, 100)
    local f3_local2 = 2.5
    local f3_local3 = 999
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 0
    local f3_local7 = 1.5
    local f3_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8)
    local f3_local9 = 3000
    local f3_local10 = 3003
    local f3_local11 = 3002
    local f3_local12 = 3009
    local f3_local13 = 4.5
    local f3_local14 = 0
    local f3_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local9, TARGET_ENE_0, f3_local13, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = 2.5
    local f4_local3 = 999
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 0
    local f4_local7 = 1.5
    local f4_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7, f4_local8)
    local f4_local9 = 3001
    local f4_local10 = 4.5
    local f4_local11 = 0
    local f4_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = arg0:GetRandam_Int(1, 100)
    local f5_local2 = 3002
    local f5_local3 = 4.5
    local f5_local4 = 0
    local f5_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = arg0:GetRandam_Int(1, 100)
    local f6_local2 = 6
    local f6_local3 = 999
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 0
    local f6_local7 = 1.5
    local f6_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7, f6_local8)
    local f6_local9 = 3024
    local f6_local10 = 4.5
    local f6_local11 = 0
    local f6_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local9, TARGET_ENE_0, f6_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetRandam_Int(1, 100)
    local f7_local2 = 3004
    local f7_local3 = 3006
    local f7_local4 = 3002
    local f7_local5 = 3009
    local f7_local6 = 999
    local f7_local7 = 0
    local f7_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local2, TARGET_ENE_0, f7_local6, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = 3005
    local f8_local3 = 3001
    local f8_local4 = 3002
    local f8_local5 = 3009
    local f8_local6 = 4.5
    local f8_local7 = 0
    local f8_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local2, TARGET_ENE_0, f8_local6, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 3006
    local f9_local3 = 3001
    local f9_local4 = 3002
    local f9_local5 = 3009
    local f9_local6 = 4.5
    local f9_local7 = 0
    local f9_local8 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local2, TARGET_ENE_0, f9_local6, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act09(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = arg0:GetRandam_Int(1, 100)
    local f10_local2 = 3014
    local f10_local3 = 4.5
    local f10_local4 = 0
    local f10_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local2, TARGET_ENE_0, f10_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act10(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetRandam_Int(1, 100)
    local f11_local2 = 3019
    local f11_local3 = 4.5
    local f11_local4 = 0
    local f11_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local2, TARGET_ENE_0, f11_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act11(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetRandam_Int(1, 100)
    local f12_local2 = 3013
    local f12_local3 = 4.5
    local f12_local4 = 2
    local f12_local5 = 30
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f12_local2, TARGET_ENE_0, f12_local3, f12_local4, f12_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act12(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetRandam_Int(1, 100)
    local f13_local2 = 3012
    local f13_local3 = 4.5
    local f13_local4 = 2
    local f13_local5 = 30
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f13_local2, TARGET_ENE_0, f13_local3, f13_local4, f13_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act14(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetRandam_Int(1, 100)
    local f14_local2 = 30
    local f14_local3 = 999
    local f14_local4 = 0
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = 1.5
    local f14_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7, f14_local8)
    local f14_local9 = 3026
    local f14_local10 = 4.5
    local f14_local11 = 0
    local f14_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local9, TARGET_ENE_0, f14_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act15(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetRandam_Int(1, 100)
    local f15_local2 = 8
    local f15_local3 = 999
    local f15_local4 = 0
    local f15_local5 = 0
    local f15_local6 = 0
    local f15_local7 = 1.5
    local f15_local8 = 1.5
    Approach_Act_Flex(arg0, arg1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7, f15_local8)
    local f15_local9 = 3008
    local f15_local10 = 4.5
    local f15_local11 = 0
    local f15_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local9, TARGET_ENE_0, f15_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act20(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetRandam_Int(1, 100)
    local f16_local2 = 10
    local f16_local3 = 999
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = 5
    local f16_local8 = 5
    Approach_Act_Flex(arg0, arg1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6, f16_local7, f16_local8)
    local f16_local9 = 3010
    local f16_local10 = 3.5
    local f16_local11 = 0
    local f16_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local9, TARGET_ENE_0, f16_local10, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act21(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetRandam_Int(1, 100)
    local f17_local2 = 3011
    local f17_local3 = 3.5
    local f17_local4 = 0
    local f17_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local2, TARGET_ENE_0, f17_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act23(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = arg0:GetRandam_Int(1, 100)
    local f18_local2 = 2.5
    local f18_local3 = 999
    local f18_local4 = 0
    local f18_local5 = 0
    local f18_local6 = 0
    local f18_local7 = 5
    local f18_local8 = 5
    Approach_Act_Flex(arg0, arg1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7, f18_local8)
    local f18_local9 = 3015
    local f18_local10 = 3.5
    local f18_local11 = 0
    local f18_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    if f18_local1 <= 30 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f18_local9, TARGET_ENE_0, f18_local10, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f18_local9, TARGET_ENE_0, f18_local10, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local9, TARGET_ENE_0, f18_local10, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act24(arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = 3016
    local f19_local3 = 3.5
    local f19_local4 = 0
    local f19_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local2, TARGET_ENE_0, f19_local3, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act30(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = 3003
    local f20_local2 = 20005
    local f20_local3 = 20015
    local f20_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local5 = 0
    local f20_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16744)
    arg0:SetStringIndexedNumber("Warp_Bagworm", 0)
    if arg0:GetNumber(10) >= 4 then
        arg0:SetNumber(10, 0)
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.85 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 16744) == false and arg0:GetHpRate(TARGET_SELF) <= 0.6 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 0)
        elseif arg0:GetNumber(10) == 0 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 1)
            arg0:SetNumber(10, arg0:GetNumber(10) + 1)
        elseif f20_local0 > 40 and arg0:GetAttackPassedTime(3016) >= 60 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 1)
        else
            arg0:SetNumber(10, arg0:GetNumber(10) + 1)
        end
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16744) == false and arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local3, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 16720) and arg0:HasSpecialEffectId(TARGET_SELF, 16744) and arg0:GetStringIndexedNumber("Warp_Bagworm") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local2, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local1, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act35(arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetRandam_Int(1, 100)
    arg0:SetNumber(15, 0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(0, 0), TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act36(arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    local f22_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local2 = 0
    local f22_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act39(arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    local f23_local1 = 20005
    local f23_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local1, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act41(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 7, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act42(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    if arg0:HasSpecialEffectId(TARGET_SELF, 16500) and arg0:GetHpRate(TARGET_SELF) >= 0.98 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act43(arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    if f27_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1.2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act44(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, arg0:GetRandam_Int(90, 180), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act46(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Int(1, 100)
    local f30_local1 = 3003
    local f30_local2 = 20016
    local f30_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local4 = 0
    local f30_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_Act49(arg0, arg1, arg2)
    local f32_local0 = arg0:GetRandam_Int(1, 100)
    local f32_local1 = 3003
    local f32_local2 = 20005
    local f32_local3 = 20015
    local f32_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local5 = 0
    local f32_local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16710)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16711)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16712)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16713)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16744)
    arg0:SetStringIndexedNumber("Warp_Bagworm", 0)
    if arg0:GetNumber(10) >= 4 then
        arg0:SetNumber(10, 0)
    end
    if arg0:GetHpRate(TARGET_SELF) <= 0.85 then
        if arg0:HasSpecialEffectId(TARGET_SELF, 16744) == false and arg0:GetHpRate(TARGET_SELF) <= 0.6 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 0)
        elseif arg0:GetNumber(10) == 0 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 1)
            arg0:SetNumber(10, arg0:GetNumber(10) + 1)
        elseif f32_local0 > 40 and arg0:GetAttackPassedTime(3016) >= 60 then
            arg0:SetStringIndexedNumber("Warp_Bagworm", 1)
        else
            arg0:SetNumber(10, arg0:GetNumber(10) + 1)
        end
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 16744) == false and arg0:GetHpRate(TARGET_SELF) <= 0.6 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f32_local3, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 16720) and arg0:HasSpecialEffectId(TARGET_SELF, 16744) and arg0:GetStringIndexedNumber("Warp_Bagworm") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f32_local2, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f32_local1, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Astile462000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Astile462000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f36_local0 = arg1:GetRandam_Int(1, 100)
    local f36_local1 = arg1:GetRandam_Int(1, 100)
    local f36_local2 = arg1:GetDist(TARGET_ENE_0)
    local f36_local3 = arg1:GetHpRate(TARGET_SELF)
    local f36_local4 = arg1:GetNumber(0)
    local f36_local5 = arg1:GetNumber(1)
    local f36_local6 = arg1:GetRandam_Int(0, 10)
    local f36_local7 = arg1:GetRandam_Int(0, 5)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not not arg1:HasSpecialEffectId(TARGET_SELF, 16721) or not not arg1:HasSpecialEffectId(TARGET_SELF, 16722) or arg1:HasSpecialEffectId(TARGET_SELF, 16723) then
        return false
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16744)
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if f36_local2 > 10 and f36_local2 < 20 and 10 + f36_local7 <= arg1:GetAttackPassedTime(3026) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f36_local2 > 20 and 15 + f36_local7 <= arg1:GetAttackPassedTime(3025) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 5035) or arg1:HasSpecialEffectId(TARGET_SELF, 16713) then
            local f36_local8 = AI_DIR_TYPE_F
            local f36_local9 = TARGET_ENE_0
            local f36_local10 = 8
            local f36_local11 = 55
            local f36_local12 = 10
            local f36_local13 = 0
            local f36_local14 = 0
            local f36_local15 = 0
            local f36_local16 = 0
            local f36_local17 = 0
            local f36_local18 = 0
            local f36_local19 = 0
            local f36_local20 = 0
            local f36_local21 = 0
            local f36_local22 = 0
            local f36_local23 = 0
            local f36_local24 = 0
            local f36_local25 = 0
            local f36_local26 = 0
            arg1:SetStringIndexedNumber("ExistMeshOnLine_F", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_F", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_B", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_L", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_L, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_SELF_R", arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_R, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToB", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToBR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToF", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToF, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFL", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFL, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("ExistMeshOnLine_ToFR", arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToFR, 25 + f36_local10, f36_local10, 0))
            arg1:SetStringIndexedNumber("Warp_Goal_F", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_B", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_L", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_R", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToB", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToBL", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToBR", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToL", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToR", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToF", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToFL", 0)
            arg1:SetStringIndexedNumber("Warp_Goal_ToFR", 0)
            arg1:SetStringIndexedNumber("Failed", 0)
            arg1:SetStringIndexedNumber("Passed", 0)
            arg1:SetNumber(13, 0)
            if arg1:GetStringIndexedNumber("Warp_Bagworm") == 1 then
                local f36_local27 = arg1:HasSpecialEffectId(TARGET_SELF, 16713)
                if f36_local27 == false then
                    f36_local27 = 13
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_F") <= 15 then
                        f36_local14 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_B") <= 15 then
                        f36_local15 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_L") <= 15 then
                        f36_local16 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_R") <= 15 then
                        f36_local17 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToB") <= 15 then
                        f36_local18 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBL") <= 15 then
                        f36_local19 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBR") <= 15 then
                        f36_local20 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToF") <= 15 then
                        f36_local23 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFL") <= 15 then
                        f36_local24 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFR") <= 15 then
                        f36_local25 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToL") <= 15 then
                        f36_local21 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToR") <= 15 then
                        f36_local22 = 0
                    end
                    f36_local14 = 0
                    f36_local15 = 0
                    f36_local16 = 0
                    f36_local17 = 0
                    f36_local18 = 0
                    f36_local19 = 0
                    f36_local20 = 0
                    f36_local21 = 0
                    f36_local22 = 0
                    f36_local23 = 10
                    f36_local24 = 10
                    f36_local25 = 10
                    f36_local26 = 0
                    f36_local13 = arg1:GetRandam_Int(0, f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25)
                    if f36_local21 + f36_local22 + f36_local23 + f36_local25 == 0 then
                        arg1:SetStringIndexedNumber("Failed", 1)
                        arg2:ClearSubGoal()
                        return true
                    elseif f36_local21 ~= 0 and f36_local13 <= f36_local21 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToL", 1)
                        f36_local8 = AI_DIR_TYPE_ToL
                    elseif f36_local22 ~= 0 and f36_local13 <= f36_local21 + f36_local22 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToR", 1)
                        f36_local8 = AI_DIR_TYPE_ToR
                    elseif f36_local23 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToF", 1)
                        f36_local8 = AI_DIR_TYPE_ToF
                    elseif f36_local24 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToFL", 1)
                        f36_local8 = AI_DIR_TYPE_ToFL
                    elseif f36_local25 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToFR", 1)
                        f36_local8 = AI_DIR_TYPE_ToFR
                    else
                        arg1:SetStringIndexedNumber("Failed", 1)
                        f36_local9 = TARGET_EVENT
                        local f36_local28 = arg1:GetRandam_Int(0, 3)
                        if f36_local28 == 0 then
                            f36_local8 = AI_DIR_TYPE_F
                        elseif f36_local28 == 0 then
                            f36_local8 = AI_DIR_TYPE_B
                        elseif f36_local28 == 0 then
                            f36_local8 = AI_DIR_TYPE_L
                        else
                            f36_local8 = AI_DIR_TYPE_R
                        end
                        local f36_local29 = arg1:GetRandam_Int(0, 30)
                        f36_local12 = 0
                    end
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, f36_local9, f36_local8, f36_local27, TARGET_ENE_0, 0, 0, f36_local12)
                    arg2:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 0.1, 13, 1)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 999, 0, 0, 0, 0)
                else
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_F") <= 25 then
                        f36_local14 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_B") <= 25 then
                        f36_local15 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_L") <= 25 then
                        f36_local16 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_R") <= 25 then
                        f36_local17 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToB") <= 25 then
                        f36_local18 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBL") <= 25 then
                        f36_local19 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBR") <= 25 then
                        f36_local20 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToF") <= 25 then
                        f36_local23 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFL") <= 25 then
                        f36_local24 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFR") <= 25 then
                        f36_local25 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToL") <= 25 then
                        f36_local21 = 0
                    end
                    if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToR") <= 25 then
                        f36_local22 = 0
                    end
                    f36_local14 = 0
                    f36_local15 = 0
                    f36_local16 = 0
                    f36_local17 = 0
                    f36_local18 = 0
                    f36_local19 = 0
                    f36_local20 = 0
                    f36_local21 = 5
                    f36_local22 = 5
                    f36_local23 = 10
                    f36_local24 = 10
                    f36_local25 = 10
                    f36_local26 = 0
                    f36_local13 = arg1:GetRandam_Int(0, f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25)
                    if arg1:HasSpecialEffectId(TARGET_SELF, 16744) == false then
                        local f36_local27 = 55
                    end
                    if f36_local21 + f36_local22 + f36_local23 + f36_local25 == 0 then
                        arg1:SetStringIndexedNumber("Failed", 1)
                        arg2:ClearSubGoal()
                        return true
                    elseif f36_local21 ~= 0 and f36_local13 <= f36_local21 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToL", 1)
                        f36_local8 = AI_DIR_TYPE_ToL
                    elseif f36_local22 ~= 0 and f36_local13 <= f36_local21 + f36_local22 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToR", 1)
                        f36_local8 = AI_DIR_TYPE_ToR
                    elseif f36_local23 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToF", 1)
                        f36_local8 = AI_DIR_TYPE_ToF
                    elseif f36_local24 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToFL", 1)
                        f36_local8 = AI_DIR_TYPE_ToFL
                    elseif f36_local25 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25 then
                        arg1:SetStringIndexedNumber("Warp_Goal_ToFR", 1)
                        f36_local8 = AI_DIR_TYPE_ToFR
                    else
                        arg1:SetStringIndexedNumber("Failed", 1)
                        f36_local9 = TARGET_EVENT
                        local f36_local27 = arg1:GetRandam_Int(0, 3)
                        if f36_local27 == 0 then
                            f36_local8 = AI_DIR_TYPE_F
                        elseif f36_local27 == 0 then
                            f36_local8 = AI_DIR_TYPE_B
                        elseif f36_local27 == 0 then
                            f36_local8 = AI_DIR_TYPE_L
                        else
                            f36_local8 = AI_DIR_TYPE_R
                        end
                        local f36_local28 = arg1:GetRandam_Int(0, 30)
                        f36_local12 = 0
                    end
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, f36_local9, f36_local8, f36_local11, TARGET_ENE_0, 0, 0, f36_local12)
                    arg2:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 0.1, 13, 1)
                    if f36_local2 < 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    end
                end
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_F") <= 25 then
                f36_local14 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_B") <= 25 then
                f36_local15 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_L") <= 25 then
                f36_local16 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_SELF_R") <= 25 then
                f36_local17 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToB") <= 25 then
                f36_local18 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBL") <= 25 then
                f36_local19 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToBR") <= 25 then
                f36_local20 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToF") <= 25 then
                f36_local23 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFL") <= 25 then
                f36_local24 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToFR") <= 25 then
                f36_local25 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToL") <= 25 then
                f36_local21 = 0
            end
            if arg1:GetStringIndexedNumber("ExistMeshOnLine_ToR") <= 25 then
                f36_local22 = 0
            end
            f36_local14 = 0
            f36_local15 = 0
            f36_local16 = 0
            f36_local17 = 0
            f36_local18 = 0
            f36_local19 = 0
            f36_local20 = 0
            f36_local21 = 5
            f36_local22 = 5
            f36_local23 = 10
            f36_local24 = 10
            f36_local25 = 10
            f36_local26 = 0
            f36_local13 = arg1:GetRandam_Int(0, f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25)
            if arg1:HasSpecialEffectId(TARGET_SELF, 16744) == false then
                local f36_local27 = 55
            end
            if f36_local21 + f36_local22 + f36_local23 + f36_local25 == 0 then
                arg1:SetStringIndexedNumber("Failed", 1)
                arg2:ClearSubGoal()
                return true
            elseif f36_local21 ~= 0 and f36_local13 <= f36_local21 then
                arg1:SetStringIndexedNumber("Warp_Goal_ToL", 1)
                f36_local8 = AI_DIR_TYPE_ToL
            elseif f36_local22 ~= 0 and f36_local13 <= f36_local21 + f36_local22 then
                arg1:SetStringIndexedNumber("Warp_Goal_ToR", 1)
                f36_local8 = AI_DIR_TYPE_ToR
            elseif f36_local23 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 then
                arg1:SetStringIndexedNumber("Warp_Goal_ToF", 1)
                f36_local8 = AI_DIR_TYPE_ToF
            elseif f36_local24 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 then
                arg1:SetStringIndexedNumber("Warp_Goal_ToFL", 1)
                f36_local8 = AI_DIR_TYPE_ToFL
            elseif f36_local25 ~= 0 and f36_local13 <= f36_local21 + f36_local22 + f36_local23 + f36_local24 + f36_local25 then
                arg1:SetStringIndexedNumber("Warp_Goal_ToFR", 1)
                f36_local8 = AI_DIR_TYPE_ToFR
            else
                arg1:SetStringIndexedNumber("Failed", 1)
                f36_local9 = TARGET_EVENT
                local f36_local27 = arg1:GetRandam_Int(0, 3)
                if f36_local27 == 0 then
                    f36_local8 = AI_DIR_TYPE_F
                elseif f36_local27 == 0 then
                    f36_local8 = AI_DIR_TYPE_B
                elseif f36_local27 == 0 then
                    f36_local8 = AI_DIR_TYPE_L
                else
                    f36_local8 = AI_DIR_TYPE_R
                end
                local f36_local28 = arg1:GetRandam_Int(0, 30)
                f36_local12 = 0
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, f36_local9, f36_local8, f36_local11, TARGET_ENE_0, 0, 0, f36_local12)
            arg2:AddSubGoal(GOAL_COMMON_SetNumberRealtime, 0.1, 13, 1)
            if f36_local2 < 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5036) then
            local f36_local8 = arg1:GetNumber(13)
            if f36_local8 ~= 1 then
                f36_local8 = AI_DIR_TYPE_F
                local f36_local9 = TARGET_ENE_0
                local f36_local10 = 8
                local f36_local11 = arg1:GetRandam_Int(0, 30)
                local f36_local12 = 0
                local f36_local13 = TARGET_EVENT
                local f36_local14 = arg1:GetRandam_Int(0, 3)
                if f36_local14 == 0 then
                    f36_local8 = AI_DIR_TYPE_F
                elseif f36_local14 == 1 then
                    f36_local8 = AI_DIR_TYPE_B
                elseif f36_local14 == 2 then
                    f36_local8 = AI_DIR_TYPE_L
                else
                    f36_local8 = AI_DIR_TYPE_R
                end
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, f36_local13, f36_local8, f36_local11, TARGET_ENE_0, 0, 0, f36_local12)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16744) then
            if arg1:GetStringIndexedNumber("Warp_HU") == 0 then
                arg2:ClearSubGoal()
                arg1:SetStringIndexedNumber("Warp_HU", 1)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif f36_local2 < 2 then
                if f36_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local2 < 6 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 20) then
                    if f36_local0 <= 50 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    else
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                elseif f36_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local2 < 10 then
                if f36_local0 <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif f36_local0 <= 60 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local2 < 20 then
                if f36_local0 < 70 and arg1:GetAttackPassedTime(3013) >= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local2 < 30 then
                if f36_local0 < 70 and arg1:GetAttackPassedTime(3013) >= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f36_local2 < 2 then
            if f36_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f36_local2 < 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 50, 20) then
                if f36_local0 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            elseif f36_local0 <= 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3024, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f36_local2 < 10 then
            if f36_local0 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif f36_local0 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif f36_local2 < 20 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f36_local2 < 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 16710) then
        if f36_local2 > 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 3, 0, 0)
            return true
        elseif f36_local2 < 30 and f36_local0 > 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 16711) then
        if f36_local2 > -1 and f36_local2 < 1.5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 20) and arg1:GetAttackPassedTime(3015) >= 20 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 3, 0, 0)
            return true
        elseif f36_local2 > 1.5 and f36_local2 < 13 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 50, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) and f36_local2 > -1 and f36_local2 < 4 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 20) and arg1:GetAttackPassedTime(3015) >= 20 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 16712) and f36_local2 > 5 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 50, 20) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        if f36_local2 < 10 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 50, 20) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f36_local2 < 30 and f36_local0 > 60 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        if f36_local0 <= 50 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3028, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        if f36_local2 < -1 then
            if 70 + f36_local7 <= arg1:GetAttackPassedTime(3003) and f36_local3 <= 0.1 then
                if arg1:GetSA(TARGET_SELF) ~= 0 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    return true
                end
            end
        elseif f36_local2 < 2 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 50, 50) and arg1:GetAttackPassedTime(3000) >= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Astile462000_AfterAttackAct, "Astile462000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Astile462000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f37_local0 = arg1:GetDist(TARGET_ENE_0)
    local f37_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f37_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f37_local0 >= 2 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


