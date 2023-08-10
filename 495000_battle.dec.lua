RegisterTableGoal(GOAL_Nightking_Kennzoku495000_Battle, "GOAL_Nightking_Kennzoku495000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Nightking_Kennzoku495000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("firstBark")
    arg1:SetTimer(3, 5)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetDist(TARGET_FRI_0)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15346)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 15347)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 15348)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 15349)
    if f2_local7 == true then
        if arg1:GetNumber(1) ~= 1 then
            f2_local0[10] = 200
        elseif arg1:GetRemainingAttackCoolTime(3021) == 0 then
            f2_local0[12] = 100
        elseif f2_local3 >= 10 then
            f2_local0[40] = 50
            f2_local0[34] = 1000
        elseif f2_local3 >= 5 then
            if f2_local6 <= 8 and f2_local6 >= 0 then
                f2_local0[11] = 800
            end
            f2_local0[9] = 0
            f2_local0[1] = 200
            f2_local0[4] = 150
            f2_local0[10] = 150
            f2_local0[14] = 500
        else
            if f2_local6 <= 8 and f2_local6 >= 0 then
                f2_local0[11] = 800
            end
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
                f2_local0[1] = 300
                f2_local0[4] = 200
                f2_local0[9] = 100
                f2_local0[10] = 200
                f2_local0[15] = 200
                f2_local0[19] = 100
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
                f2_local0[1] = 300
                f2_local0[4] = 200
                f2_local0[9] = 100
                f2_local0[10] = 200
                f2_local0[15] = 200
                f2_local0[18] = 100
            else
                f2_local0[1] = 350
                f2_local0[4] = 250
                f2_local0[9] = 100
                f2_local0[10] = 200
                f2_local0[15] = 200
            end
        end
    elseif f2_local8 == true or f2_local9 == true then
        if arg1:GetRemainingAttackCoolTime(3021) == 0 and arg1:GetHpRate(TARGET_SELF) > 0.15 then
            f2_local0[12] = 100
        elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
                f2_local0[9] = 100
            elseif f2_local3 >= 10 then
                f2_local0[40] = 300
            elseif f2_local3 <= 10 then
                f2_local0[30] = 200
                f2_local0[1] = 20
                f2_local0[4] = 10
                f2_local0[14] = 50
                if f2_local6 <= 8 and f2_local6 >= 0 then
                    f2_local0[11] = 800
                end
            end
        elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
                f2_local0[9] = 100
            elseif f2_local3 >= 10 then
                f2_local0[40] = 300
            elseif f2_local3 <= 10 then
                f2_local0[30] = 200
                f2_local0[1] = 20
                f2_local0[4] = 10
                f2_local0[14] = 50
                if f2_local6 <= 8 and f2_local6 >= 0 then
                    f2_local0[11] = 800
                end
            end
        elseif f2_local3 >= 10 then
            if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
                f2_local0[9] = 100
            else
                f2_local0[40] = 300
            end
        elseif f2_local3 >= 5 then
            f2_local0[9] = 0
            f2_local0[1] = 200
            f2_local0[4] = 150
            f2_local0[14] = 500
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
            f2_local0[1] = 300
            f2_local0[4] = 200
            f2_local0[9] = 100
            f2_local0[15] = 200
            f2_local0[19] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
            f2_local0[1] = 300
            f2_local0[4] = 200
            f2_local0[9] = 100
            f2_local0[15] = 200
            f2_local0[18] = 100
        else
            f2_local0[1] = 350
            f2_local0[4] = 250
            f2_local0[9] = 100
            f2_local0[10] = 200
            f2_local0[15] = 200
        end
    elseif f2_local10 == true then
        if f2_local3 >= 15 then
            f2_local0[31] = 150
            f2_local0[40] = 300
        elseif f2_local3 >= 5 then
            f2_local0[1] = 200
            f2_local0[4] = 150
            f2_local0[14] = 500
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
            f2_local0[1] = 300
            f2_local0[4] = 200
            f2_local0[15] = 200
            f2_local0[19] = 100
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
            f2_local0[1] = 300
            f2_local0[4] = 200
            f2_local0[25] = 200
            f2_local0[18] = 100
        else
            f2_local0[1] = 350
            f2_local0[4] = 250
            f2_local0[25] = 200
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
            f2_local0[9] = 100
        elseif f2_local3 >= 10 then
            f2_local0[40] = 300
            f2_local0[33] = 700
        elseif f2_local3 <= 10 then
            f2_local0[30] = 200
            if f2_local6 <= 8 and f2_local6 >= 0 then
                f2_local0[11] = 800
            end
        end
    elseif f2_local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
            f2_local0[9] = 100
        elseif f2_local3 >= 10 then
            f2_local0[40] = 300
            f2_local0[33] = 700
        elseif f2_local3 <= 10 then
            f2_local0[30] = 200
            if f2_local6 <= 8 and f2_local6 >= 0 then
                f2_local0[11] = 800
            end
        end
    elseif arg1:GetRemainingAttackCoolTime(3021) == 0 and arg1:GetHpRate(TARGET_SELF) > 0.15 then
        f2_local0[12] = 100
    elseif f2_local3 >= 10 then
        if arg1:GetRemainingAttackCoolTime(3010) == 0 and arg1:GetRemainingAttackCoolTime(3021) > 0 and f2_local3 >= 25 then
            f2_local0[9] = 100
        elseif arg1:GetRemainingAttackCoolTime(3021) > 0 then
            f2_local0[40] = 300
            f2_local0[33] = 700
        else
            f2_local0[40] = 300
            f2_local0[33] = 700
        end
    elseif f2_local3 >= 5 then
        f2_local0[9] = 0
        f2_local0[1] = 200
        f2_local0[4] = 150
        f2_local0[10] = 150
        f2_local0[14] = 500
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 160) then
        f2_local0[1] = 300
        f2_local0[4] = 200
        f2_local0[9] = 100
        f2_local0[10] = 200
        f2_local0[15] = 200
        f2_local0[19] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 160) then
        f2_local0[1] = 300
        f2_local0[4] = 200
        f2_local0[9] = 100
        f2_local0[10] = 200
        f2_local0[15] = 200
        f2_local0[18] = 100
    else
        f2_local0[1] = 350
        f2_local0[4] = 250
        f2_local0[9] = 100
        f2_local0[10] = 200
        f2_local0[15] = 200
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 2, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 2, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 1, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 50, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 40, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3012, arg1:GetRandam_Int(40, 60), f2_local0[11], 1)
    if f2_local7 == true then
        f2_local0[12] = SetCoolTime(arg1, arg2, 3021, 120, f2_local0[12], 0)
    elseif f2_local8 == true or f2_local9 == true then
        f2_local0[12] = SetCoolTime(arg1, arg2, 3021, arg1:GetRandam_Int(45, 65), f2_local0[12], 0)
    end
    f2_local0[13] = SetCoolTime(arg1, arg2, 3022, 0, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3008, 25, f2_local0[15], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3008, arg1:GetRandam_Int(15, 20), f2_local0[25], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3006, 15, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[19], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3011, 25, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[34], 1)
    if arg1:GetTimer(0) > 0 then
        f2_local0[18] = 1
        f2_local0[19] = 1
    end
    if arg1:GetHpRate(TARGET_EVENT) <= 0 then
        f2_local0[10] = 0
        f2_local0[34] = 0
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act21)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act34)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_Act40)
    local f2_local11 = REGIST_FUNC(arg1, arg2, Nightking_Kennzoku495000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function Nightking_Kennzoku495000_Act01(arg0, arg1, arg2)
    local f3_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 0
    local f3_local2 = 0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 4
    local f3_local6 = 8
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 5
    local f3_local9 = 0
    local f3_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15318)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act02(arg0, arg1, arg2)
    local f4_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 4
    local f4_local6 = 8
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 5
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15318)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act03(arg0, arg1, arg2)
    local f5_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 4
    local f5_local6 = 8
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3002
    local f5_local8 = 2.5
    local f5_local9 = 0
    local f5_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15318)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act04(arg0, arg1, arg2)
    local f6_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 4
    local f6_local6 = 8
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3003
    local f6_local8 = 5
    local f6_local9 = 0
    local f6_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15318)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act05(arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 4
    local f7_local6 = 8
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3004
    local f7_local8 = 5
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act06(arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 0
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 4
    local f8_local6 = 8
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3005
    local f8_local8 = 6
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act07(arg0, arg1, arg2)
    local f9_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 4
    local f9_local6 = 8
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3006
    local f9_local8 = 3
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act08(arg0, arg1, arg2)
    local f10_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 8
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 3
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act09(arg0, arg1, arg2)
    local f11_local0 = 500 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 8
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3010
    local f11_local8 = 200
    local f11_local9 = 0
    local f11_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local f12_local0 = 10
    local f12_local1 = 3011
    local f12_local2 = 10
    local f12_local3 = 0
    local f12_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local0, f12_local1, TARGET_ENE_0, f12_local2, f12_local3, f12_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act11(arg0, arg1, arg2)
    local f13_local0 = 500 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 0
    local f13_local2 = 0
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 4
    local f13_local6 = 8
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 3012
    local f13_local8 = 100
    local f13_local9 = 0
    local f13_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, f13_local8, f13_local9, f13_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act12(arg0, arg1, arg2)
    local f14_local0 = 3021
    local f14_local1 = 20
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_SELF, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act13(arg0, arg1, arg2)
    local f15_local0 = 100 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 0
    local f15_local2 = 0
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3021
    local f15_local8 = 20
    local f15_local9 = 0
    local f15_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act14(arg0, arg1, arg2)
    local f16_local0 = 14 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 10
    local f16_local6 = 10
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 3001
    local f16_local8 = 3002
    local f16_local9 = 10
    local f16_local10 = 10
    local f16_local11 = 0
    local f16_local12 = 0
    local f16_local13 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local7, TARGET_ENE_0, f16_local0, f16_local11, f16_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local8, TARGET_ENE_0, f16_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act15(arg0, arg1, arg2)
    local f17_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 0
    local f17_local2 = 0
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 8
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3008
    local f17_local8 = 20
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 10
    local f18_local2 = 0
    local f18_local3 = 0
    local f18_local4 = arg0:GetRandam_Int(1, 100)
    local f18_local5 = -1
    if f18_local4 <= f18_local3 then
        f18_local5 = 9910
    end
    arg0:SetTimer(0, 20)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f18_local1, TARGET_ENE_0, true, f18_local5)
    
end

function Nightking_Kennzoku495000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 1, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act18(arg0, arg1, arg2)
    local f20_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = 0
    local f20_local2 = 0
    local f20_local3 = 100
    local f20_local4 = 0
    local f20_local5 = 4
    local f20_local6 = 8
    Approach_Act_Flex(arg0, arg1, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, f20_local5, f20_local6)
    local f20_local7 = 3006
    local f20_local8 = 3001
    local f20_local9 = 3002
    local f20_local10 = 8
    local f20_local11 = 8
    local f20_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local13 = 0
    local f20_local14 = 0
    arg0:SetTimer(0, 22)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f20_local7, TARGET_ENE_0, f20_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f20_local8, TARGET_ENE_0, f20_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local9, TARGET_ENE_0, f20_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act19(arg0, arg1, arg2)
    local f21_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = 0
    local f21_local2 = 0
    local f21_local3 = 100
    local f21_local4 = 0
    local f21_local5 = 4
    local f21_local6 = 8
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = 3007
    local f21_local8 = 3001
    local f21_local9 = 3002
    local f21_local10 = 8
    local f21_local11 = 8
    local f21_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local13 = 0
    local f21_local14 = 0
    arg0:SetTimer(0, 22)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f21_local7, TARGET_ENE_0, f21_local10, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f21_local8, TARGET_ENE_0, f21_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f21_local9, TARGET_ENE_0, f21_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act20(arg0, arg1, arg2)
    local f22_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = 0
    local f22_local2 = 0
    local f22_local3 = 100
    local f22_local4 = 0
    local f22_local5 = 10
    local f22_local6 = 10
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 3004
    local f22_local8 = 3007
    local f22_local9 = 10
    local f22_local10 = 10
    local f22_local11 = 0
    local f22_local12 = 0
    local f22_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local7, TARGET_ENE_0, f22_local0, f22_local11, f22_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f22_local8, TARGET_ENE_0, f22_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act21(arg0, arg1, arg2)
    local f23_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = 0
    local f23_local2 = 0
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 10
    local f23_local6 = 10
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = 3005
    local f23_local8 = 3006
    local f23_local9 = 10
    local f23_local10 = 10
    local f23_local11 = 0
    local f23_local12 = 0
    local f23_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local7, TARGET_ENE_0, f23_local0, f23_local11, f23_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f23_local8, TARGET_ENE_0, f23_local9, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act25(arg0, arg1, arg2)
    local f24_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = 0
    local f24_local2 = 0
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 4
    local f24_local6 = 8
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3008
    local f24_local8 = 20
    local f24_local9 = 0
    local f24_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act30(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(4, 8)
    local f25_local2 = 999
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = 0
    local f25_local6 = arg0:GetRandam_Int(2, 10)
    local f25_local7 = 0
    Approach_Act_Flex(arg0, arg1, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6, f25_local7)
    local f25_local8 = arg0:GetRandam_Int(5, 20)
    local f25_local9 = TARGET_ENE_0
    local f25_local10 = arg0:GetRandam_Int(0, 1)
    local f25_local11 = arg0:GetRandam_Int(90, 360)
    local f25_local12 = 2
    local f25_local13 = TARGET_SELF
    local f25_local14 = true
    local f25_local15 = true
    local f25_local16 = arg0:GetDist(TARGET_ENE_0)
    local f25_local17 = 0
    local f25_local18 = arg0:GetRandam_Int(1, 100)
    local f25_local19 = -1
    if f25_local18 <= f25_local17 then
        f25_local19 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local8, f25_local9, f25_local10, f25_local11, f25_local14, -1, f25_local15, f25_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act31(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = arg0:GetRandam_Float(2, 5)
    local f26_local2 = arg0:GetRandam_Float(3, 7)
    local f26_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f26_local1, TARGET_ENE_0, f26_local2, TARGET_SELF, true, f26_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act32(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = arg0:GetRandam_Int(4, 8)
    local f27_local2 = 999
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = 0
    local f27_local6 = arg0:GetRandam_Int(2, 10)
    local f27_local7 = 0
    local f27_local8 = arg0:GetRandam_Int(3, 5)
    local f27_local9 = TARGET_ENE_0
    local f27_local10 = arg0:GetRandam_Int(0, 1)
    local f27_local11 = arg0:GetRandam_Int(90, 360)
    local f27_local12 = 2
    local f27_local13 = TARGET_SELF
    local f27_local14 = true
    local f27_local15 = true
    local f27_local16 = arg0:GetDist(TARGET_ENE_0)
    local f27_local17 = 0
    local f27_local18 = arg0:GetRandam_Int(1, 100)
    local f27_local19 = -1
    if f27_local18 <= f27_local17 then
        f27_local19 = -1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f27_local8, f27_local9, f27_local10, f27_local11, f27_local14, -1, f27_local15, f27_local19)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act33(arg0, arg1, arg2)
    if arg0:CheckDoesExistPath(TARGET_SELF, AI_DIR_TYPE_F, 4) then
        local f28_local0 = 5
        local f28_local1 = 3011
        local f28_local2 = 10
        local f28_local3 = 0
        local f28_local4 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f28_local0, f28_local1, TARGET_ENE_0, f28_local2, f28_local3, f28_local4, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    else
        arg0:SetTimer(0, 5)
        arg0:Replaning()
    end
    
end

function Nightking_Kennzoku495000_Act34(arg0, arg1, arg2)
    local f29_local0 = 10
    local f29_local1 = 3011
    local f29_local2 = 10
    local f29_local3 = 0
    local f29_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f29_local0, f29_local1, TARGET_ENE_0, f29_local2, f29_local3, f29_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, 7, 0.5, 6, true, -1, 0, 1, false, true, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Nightking_Kennzoku495000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(15318) then
        local f34_local0 = arg1:GetDist(TARGET_ENE_0)
        local f34_local1 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 160, 3) then
            if f34_local1 <= 100 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3004, TARGET_ENE_0, 3, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 160, 3) and f34_local1 <= 100 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3005, TARGET_ENE_0, 3, 0, 0)
            return true
        else

        end
    end
    return false
    
end

RegisterTableGoal(GOAL_Nightking_Kennzoku495000_AfterAttackAct, "GOAL_Nightking_Kennzoku495000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Nightking_Kennzoku495000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


