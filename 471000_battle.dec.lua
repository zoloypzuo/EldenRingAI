RegisterTableGoal(GOAL_KingGhoul_471000_Battle, "KingGhoul_471000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingGhoul_471000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11900)
    local f2_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11901)
    local f2_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11902)
    local f2_local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11941)
    local f2_local10 = arg1:HasSpecialEffectId(TARGET_SELF, 11945)
    local f2_local11 = arg1:HasSpecialEffectId(TARGET_SELF, 11947)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 5030)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11938)
    if f2_local6 == true then
        local f2_local13 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local14 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local15 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local16 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local17 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local18 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        if f2_local16 == true then
            if f2_local3 < 10 then
                f2_local0[4] = 10
                f2_local0[10] = 50
                f2_local0[21] = 40
            else
                f2_local0[10] = 50
                f2_local0[21] = 50
            end
        elseif f2_local13 == true then
            if f2_local3 < 10 then
                f2_local0[4] = 30
                f2_local0[25] = 70
            elseif f2_local3 <= 15 then
                f2_local0[1] = 10
                f2_local0[2] = 30
                f2_local0[3] = 20
                f2_local0[6] = 10
                f2_local0[29] = 30
            elseif f2_local3 <= 25 then
                f2_local0[1] = 5
                f2_local0[2] = 15
                f2_local0[3] = 20
                f2_local0[6] = 10
                f2_local0[20] = 50
            elseif f2_local3 <= 30 then
                f2_local0[5] = 20
                f2_local0[6] = 30
                f2_local0[20] = 20
                f2_local0[28] = 30
            else
                f2_local0[5] = 20
                f2_local0[7] = 10
                f2_local0[22] = 30
                f2_local0[28] = 40
            end
        elseif f2_local14 == true then
            if f2_local3 < 15 then
                f2_local0[4] = 30
                f2_local0[16] = 50
                f2_local0[25] = 20
            elseif f2_local3 <= 25 then
                f2_local0[1] = 5
                f2_local0[2] = 15
                f2_local0[3] = 20
                f2_local0[6] = 10
                f2_local0[9] = 25
                f2_local0[29] = 20
            elseif f2_local3 <= 35 then
                f2_local0[5] = 20
                f2_local0[6] = 30
                f2_local0[7] = 10
                f2_local0[20] = 20
                f2_local0[28] = 10
                f2_local0[22] = 10
            else
                f2_local0[6] = 10
                f2_local0[20] = 20
                f2_local0[22] = 40
                f2_local0[28] = 30
            end
        elseif f2_local15 == true then
            if f2_local3 < 15 then
                f2_local0[4] = 30
                f2_local0[15] = 50
                f2_local0[25] = 20
            elseif f2_local3 <= 25 then
                f2_local0[8] = 25
                f2_local0[1] = 5
                f2_local0[2] = 15
                f2_local0[3] = 20
                f2_local0[6] = 10
                f2_local0[29] = 20
            elseif f2_local3 <= 35 then
                f2_local0[5] = 20
                f2_local0[6] = 30
                f2_local0[7] = 10
                f2_local0[20] = 20
                f2_local0[28] = 10
                f2_local0[22] = 10
            else
                f2_local0[6] = 10
                f2_local0[20] = 20
                f2_local0[22] = 40
                f2_local0[28] = 30
            end
        elseif f2_local17 == true then
            if f2_local3 < 10 then
                f2_local0[4] = 30
                f2_local0[25] = 70
            elseif f2_local3 <= 20 then
                f2_local0[6] = 10
                f2_local0[8] = 20
                f2_local0[15] = 60
                f2_local0[29] = 10
            else
                f2_local0[6] = 10
                f2_local0[21] = 40
                f2_local0[22] = 50
            end
        elseif f2_local18 == true then
            if f2_local3 < 10 then
                f2_local0[4] = 30
                f2_local0[25] = 70
            elseif f2_local3 <= 20 then
                f2_local0[6] = 10
                f2_local0[9] = 20
                f2_local0[16] = 60
                f2_local0[29] = 10
            else
                f2_local0[6] = 10
                f2_local0[21] = 40
                f2_local0[22] = 50
            end
        end
    elseif f2_local7 == true then
        local f2_local13 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local14 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local15 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local16 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local17 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local18 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        if arg1:GetNumber(1) == 0 then
            f2_local0[31] = 100
        elseif f2_local9 == true then
            f2_local0[19] = 100
        elseif f2_local10 == true then
            f2_local0[30] = 100
        elseif f2_local11 == true then
            local f2_local19 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 100, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
            local f2_local20 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 260, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
            if f2_local20 == true then
                if f2_local3 <= 15 then
                    f2_local0[14] = 50
                    f2_local0[21] = 50
                else
                    f2_local0[21] = 100
                end
            elseif f2_local19 == true then
                if f2_local3 < 15 then
                    f2_local0[11] = 70
                    f2_local0[13] = 30
                elseif f2_local3 <= 30 then
                    f2_local0[12] = 30
                    f2_local0[17] = 20
                    f2_local0[27] = 50
                else
                    f2_local0[12] = 15
                    f2_local0[17] = 70
                    f2_local0[27] = 15
                end
            end
        elseif f2_local16 == true then
            f2_local0[21] = 100
        elseif f2_local13 == true then
            if f2_local3 < 15 then
                f2_local0[11] = 50
                f2_local0[13] = 30
                f2_local0[18] = 20
            elseif f2_local3 <= 30 then
                f2_local0[11] = 20
                f2_local0[14] = 10
                f2_local0[17] = 20
                f2_local0[18] = 40
                f2_local0[12] = 10
                f2_local0[27] = 10
            elseif f2_local3 <= 40 then
                f2_local0[12] = 20
                f2_local0[17] = 20
                f2_local0[18] = 30
                f2_local0[27] = 30
            else
                f2_local0[17] = 40
                f2_local0[18] = 60
            end
        elseif f2_local14 == true or f2_local15 == true then
            if f2_local3 < 15 then
                f2_local0[11] = 20
                f2_local0[13] = 20
                f2_local0[14] = 30
                f2_local0[18] = 30
            elseif f2_local3 <= 30 then
                f2_local0[11] = 20
                f2_local0[13] = 20
                f2_local0[14] = 10
                f2_local0[18] = 30
                f2_local0[12] = 10
                f2_local0[17] = 20
            elseif f2_local3 <= 40 then
                f2_local0[12] = 30
                f2_local0[17] = 40
                f2_local0[18] = 30
            else
                f2_local0[17] = 40
                f2_local0[18] = 60
            end
        elseif not not f2_local18 or f2_local17 == true then
            if f2_local3 < 15 then
                f2_local0[13] = 50
                f2_local0[14] = 10
                f2_local0[18] = 10
                f2_local0[21] = 30
            elseif f2_local3 <= 30 then
                f2_local0[11] = 15
                f2_local0[12] = 15
                f2_local0[14] = 20
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[21] = 10
            elseif f2_local3 <= 40 then
                f2_local0[12] = 20
                f2_local0[17] = 20
                f2_local0[18] = 40
                f2_local0[21] = 20
            else
                f2_local0[17] = 20
                f2_local0[18] = 50
                f2_local0[21] = 30
            end
        end
    elseif f2_local8 == true then
        local f2_local13 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local14 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FR, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local15 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_FL, 30, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local16 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local17 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        local f2_local18 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 60, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
        if f2_local9 == true then
            f2_local0[19] = 100
        elseif f2_local10 == true then
            f2_local0[30] = 100
        elseif f2_local11 == true then
            local f2_local19 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
            local f2_local20 = arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 240, 90, 200 + arg1:GetMapHitRadius(TARGET_SELF))
            if f2_local20 == true then
                if f2_local3 < 20 then
                    f2_local0[10] = 60
                    f2_local0[21] = 40
                else
                    f2_local0[21] = 100
                end
            elseif f2_local19 == true then
                if f2_local3 < 15 then
                    f2_local0[3] = 50
                    f2_local0[11] = 50
                elseif f2_local3 <= 30 then
                    f2_local0[12] = 30
                    f2_local0[20] = 40
                    f2_local0[27] = 30
                else
                    f2_local0[12] = 15
                    f2_local0[17] = 40
                    f2_local0[20] = 30
                    f2_local0[27] = 15
                end
            end
        elseif f2_local16 == true then
            if f2_local3 < 20 then
                f2_local0[10] = 80
                f2_local0[21] = 20
            else
                f2_local0[21] = 100
            end
        elseif f2_local13 == true then
            if f2_local3 < 17 then
                f2_local0[3] = 50
                f2_local0[11] = 30
                f2_local0[14] = 20
            elseif f2_local3 <= 30 then
                f2_local0[11] = 20
                f2_local0[12] = 10
                f2_local0[14] = 20
                f2_local0[17] = 10
                f2_local0[20] = 30
                f2_local0[27] = 10
            elseif f2_local3 <= 40 then
                f2_local0[12] = 10
                f2_local0[17] = 20
                f2_local0[18] = 20
                f2_local0[20] = 40
                f2_local0[27] = 10
            else
                f2_local0[17] = 30
                f2_local0[18] = 40
                f2_local0[20] = 30
            end
        elseif f2_local14 and f2_local3 <= 17 == true then
            f2_local0[3] = 30
            f2_local0[11] = 35
            f2_local0[16] = 35
        elseif f2_local15 and f2_local3 <= 17 == true then
            f2_local0[3] = 30
            f2_local0[11] = 35
            f2_local0[15] = 35
        elseif not not f2_local14 or f2_local15 == true then
            if f2_local3 <= 25 then
                f2_local0[11] = 35
                f2_local0[18] = 10
                f2_local0[12] = 25
                f2_local0[20] = 30
            elseif f2_local3 <= 40 then
                f2_local0[12] = 20
                f2_local0[17] = 40
                f2_local0[18] = 20
                f2_local0[20] = 30
            else
                f2_local0[17] = 30
                f2_local0[18] = 40
                f2_local0[20] = 30
            end
        elseif f2_local18 == true then
            if f2_local3 < 15 then
                f2_local0[11] = 30
                f2_local0[13] = 20
                f2_local0[16] = 50
            elseif f2_local3 <= 25 then
                f2_local0[12] = 25
                f2_local0[16] = 30
                f2_local0[21] = 45
            elseif f2_local3 <= 40 then
                f2_local0[12] = 20
                f2_local0[17] = 30
                f2_local0[18] = 30
                f2_local0[21] = 20
            else
                f2_local0[17] = 40
                f2_local0[21] = 30
                f2_local0[22] = 30
            end
        elseif f2_local17 == true then
            if f2_local3 < 15 then
                f2_local0[11] = 30
                f2_local0[13] = 20
                f2_local0[15] = 50
            elseif f2_local3 <= 25 then
                f2_local0[11] = 35
                f2_local0[12] = 15
                f2_local0[15] = 30
                f2_local0[21] = 20
            elseif f2_local3 <= 40 then
                f2_local0[12] = 20
                f2_local0[17] = 30
                f2_local0[18] = 30
                f2_local0[21] = 20
            else
                f2_local0[17] = 40
                f2_local0[21] = 30
                f2_local0[22] = 30
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 25, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3024, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3025, 10, f2_local0[13], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3025, 15, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3026, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3031, 35, f2_local0[18], 0)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3013, 13, f2_local0[20], 0)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3037, 15, f2_local0[27], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[28], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[29], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[29], 1)
    if f2_local8 == true then
        f2_local0[3] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[3], 1)
        f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[3], 1)
        f2_local0[3] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[3], 1)
        f2_local0[3] = SetCoolTime(arg1, arg2, 3035, 10, f2_local0[3], 1)
        f2_local0[15] = SetCoolTime(arg1, arg2, 3028, 15, f2_local0[15], 0)
        f2_local0[16] = SetCoolTime(arg1, arg2, 3029, 15, f2_local0[16], 0)
        f2_local0[20] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[20], 0)
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act31)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, KingGhoul_471000_Act47)
    local f2_local13 = REGIST_FUNC(arg1, arg2, KingGhoul_471000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

function KingGhoul_471000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f3_local1 = arg0:GetDist(TARGET_ENE_0)
    local f3_local2 = arg0:GetRandam_Int(1, 100)
    local f3_local3 = arg0:GetRandam_Int(1, 100)
    local f3_local4 = arg0:HasSpecialEffectId(TARGET_SELF, 11900)
    local f3_local5 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f3_local6 = 17
    local f3_local7 = 0
    local f3_local8 = 999
    local f3_local9 = 100
    local f3_local10 = 0
    local f3_local11 = 2
    local f3_local12 = 2
    local f3_local13 = 3000
    local f3_local14 = 20
    local f3_local15 = 0
    local f3_local16 = 180
    Approach_Act_Flex(arg0, arg1, f3_local6, f3_local7, f3_local8, f3_local9, f3_local10, f3_local11, f3_local12)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local13, TARGET_ENE_0, f3_local14, f3_local15, f3_local16, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f4_local1 = 17
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 2
    local f4_local7 = 2
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3000
    local f4_local9 = 3001
    local f4_local10 = 18
    local f4_local11 = 0
    local f4_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local10, f4_local11, f4_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f4_local9, TARGET_ENE_0, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f5_local1 = 17
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 2
    local f5_local7 = 2
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3000
    local f5_local9 = 3001
    local f5_local10 = 3002
    local f5_local11 = 3035
    local f5_local12 = 18
    local f5_local13 = 0
    local f5_local14 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local12, f5_local13, f5_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local9, TARGET_ENE_0, f5_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f5_local10, TARGET_ENE_0, f5_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetRandam_Int(1, 100)
    local f6_local1 = 10
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    local f6_local8 = 3004
    local f6_local9 = 20
    local f6_local10 = 0
    local f6_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetRandam_Int(1, 100)
    local f7_local1 = 28
    local f7_local2 = 0
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    local f7_local8 = 3015
    local f7_local9 = 10
    local f7_local10 = 0
    local f7_local11 = 180
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetRandam_Int(1, 100)
    local f8_local1 = 30
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    local f8_local8 = 3014
    local f8_local9 = 40
    local f8_local10 = 0
    local f8_local11 = 60
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, f8_local8, TARGET_ENE_0, f8_local9, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act07(arg0, arg1, arg2)
    local f9_local0 = 30
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3010
    local f9_local8 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act08(arg0, arg1, arg2)
    local f10_local0 = 14
    local f10_local1 = 0
    local f10_local2 = 999
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 4
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 15
    local f10_local9 = 0
    local f10_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act09(arg0, arg1, arg2)
    local f11_local0 = 14
    local f11_local1 = 0
    local f11_local2 = 999
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 4
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 3009
    local f11_local8 = 15
    local f11_local9 = 0
    local f11_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, f11_local8, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act10(arg0, arg1, arg2)
    local f12_local0 = 20
    local f12_local1 = 0
    local f12_local2 = 999
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 4
    local f12_local6 = 4
    local f12_local7 = 3003
    local f12_local8 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Int(1, 100)
    local f13_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f13_local2 = arg0:GetDist(TARGET_ENE_0)
    local f13_local3 = 19
    local f13_local4 = 0
    local f13_local5 = 999
    local f13_local6 = 100
    local f13_local7 = 0
    local f13_local8 = 4
    local f13_local9 = 8
    Approach_Act_Flex(arg0, arg1, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7, f13_local8, f13_local9)
    local f13_local10 = 3021
    local f13_local11 = 20
    local f13_local12 = 20
    local f13_local13 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local14 = 0
    local f13_local15 = 120
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local10, TARGET_ENE_0, f13_local11, 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act12(arg0, arg1, arg2)
    local f14_local0 = 20
    local f14_local1 = 0
    local f14_local2 = 999
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 4
    local f14_local6 = 4
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 3024
    local f14_local8 = 30
    local f14_local9 = 0
    local f14_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local7, TARGET_ENE_0, f14_local8, f14_local9, f14_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act13(arg0, arg1, arg2)
    local f15_local0 = 9 + arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f15_local1 = 9 + arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 9 + arg0:GetMapHitRadius(TARGET_SELF) - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 4
    local f15_local6 = 8
    local f15_local7 = 3025
    local f15_local8 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0
    local f15_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local7, TARGET_ENE_0, f15_local8, f15_local9, f15_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Int(1, 100)
    local f16_local1 = 3026
    local f16_local2 = 3027
    local f16_local3 = 20
    local f16_local4 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local5 = 0
    local f16_local6 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local1, TARGET_ENE_0, f16_local3, f16_local5, f16_local6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act15(arg0, arg1, arg2)
    local f17_local0 = 15
    local f17_local1 = 0
    local f17_local2 = 999
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 4
    local f17_local6 = 4
    local f17_local7 = 3011
    local f17_local8 = 20
    local f17_local9 = 0
    local f17_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act16(arg0, arg1, arg2)
    local f18_local0 = 15
    local f18_local1 = 0
    local f18_local2 = 999
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 4
    local f18_local6 = 4
    local f18_local7 = 3012
    local f18_local8 = 20
    local f18_local9 = 0
    local f18_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f18_local7, TARGET_ENE_0, f18_local8, f18_local9, f18_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act17(arg0, arg1, arg2)
    local f19_local0 = 31
    local f19_local1 = 0
    local f19_local2 = 999
    local f19_local3 = 100
    local f19_local4 = 0
    local f19_local5 = 4
    local f19_local6 = 8
    local f19_local7 = 3030
    local f19_local8 = 30 + arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f19_local7, TARGET_ENE_0, DistToAtt2, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act18(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    local f20_local1 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    local f20_local2 = 60
    local f20_local3 = 0
    local f20_local4 = 999
    local f20_local5 = 100
    local f20_local6 = 0
    local f20_local7 = 4
    local f20_local8 = 8
    local f20_local9 = 3031
    local f20_local10 = 3032
    local f20_local11 = 60
    local f20_local12 = 0
    local f20_local13 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f20_local9, TARGET_ENE_0, f20_local11, f20_local12, 0, 0)
    if f20_local1 == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f20_local10, TARGET_ENE_0, f20_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3033, TARGET_ENE_0, 99, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act20(arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 20
    local f22_local2 = 0
    local f22_local3 = 999
    local f22_local4 = 100
    local f22_local5 = 0
    local f22_local6 = 4
    local f22_local7 = 4
    local f22_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 11902)
    if f22_local8 == true then
        f22_local1 = 30
    end
    Approach_Act_Flex(arg0, arg1, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7)
    local f22_local9 = 3013
    local f22_local10 = TARGET_ENE_0
    local f22_local11 = 30
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f22_local9, f22_local10, f22_local11, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act22(arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 20
    local f24_local2 = 999
    local f24_local3 = 0
    local f24_local4 = arg0:GetRandam_Int(1, 100)
    local f24_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f24_local1, TARGET_ENE_0, false, f24_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act23(arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 15
    local f25_local2 = 999
    local f25_local3 = 0
    local f25_local4 = arg0:GetRandam_Int(1, 100)
    local f25_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f25_local1, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act24(arg0, arg1, arg2)
    local f26_local0 = 80
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    local f26_local2 = -1
    if f26_local1 <= f26_local0 then
        f26_local2 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, f26_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act25(arg0, arg1, arg2)
    local f27_local0 = 3
    local f27_local1 = -1
    local f27_local2 = 100
    local f27_local3 = -1
    local f27_local4 = -1
    local f27_local5 = TARGET_ENE_0
    local f27_local6 = 3
    local f27_local7 = 0
    local f27_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7, f27_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act26(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 20 + arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local2 = 999
    local f28_local3 = 0
    local f28_local4 = arg0:GetRandam_Int(1, 100)
    local f28_local5 = -1
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, f28_local1, TARGET_ENE_0, true, f28_local5)
    for f28_local6 = 3000, 3012, 1 do
        arg0:RegistAttackTimeInterval(f28_local6, 0)
    end
    local f28_local6 = 0
    GetWellSpace_Odds = f28_local6
    f28_local6 = GetWellSpace_Odds
    return f28_local6
    
end

function KingGhoul_471000_Act27(arg0, arg1, arg2)
    local f29_local0 = arg0:GetRandam_Int(1, 100)
    local f29_local1 = 23
    local f29_local2 = 0
    local f29_local3 = 999
    local f29_local4 = 100
    local f29_local5 = 0
    local f29_local6 = 4
    local f29_local7 = 4
    Approach_Act_Flex(arg0, arg1, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6, f29_local7)
    local f29_local8 = 3037
    local f29_local9 = 3038
    local f29_local10 = 30
    local f29_local11 = 0
    local f29_local12 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f29_local8, TARGET_ENE_0, f29_local10, f29_local11, f29_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f29_local9, TARGET_ENE_0, f29_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act28(arg0, arg1, arg2)
    local f30_local0 = arg0:GetRandam_Int(1, 100)
    local f30_local1 = 40
    local f30_local2 = 0
    local f30_local3 = 999
    local f30_local4 = 100
    local f30_local5 = 0
    local f30_local6 = 4
    local f30_local7 = 4
    Approach_Act_Flex(arg0, arg1, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7)
    local f30_local8 = 3016
    local f30_local9 = 40
    local f30_local10 = 0
    local f30_local11 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f30_local8, TARGET_ENE_0, f30_local9, f30_local10, f30_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act29(arg0, arg1, arg2)
    local f31_local0 = arg0:GetRandam_Int(1, 100)
    local f31_local1 = 14
    local f31_local2 = 0
    local f31_local3 = 999
    local f31_local4 = 100
    local f31_local5 = 0
    local f31_local6 = 4
    local f31_local7 = 4
    Approach_Act_Flex(arg0, arg1, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7)
    local f31_local8 = 3017
    local f31_local9 = 40
    local f31_local10 = 0
    local f31_local11 = 180
    local f31_local12 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 200 + arg0:GetMapHitRadius(TARGET_SELF))
    if f31_local12 == true then
        f31_local8 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local8, TARGET_ENE_0, f31_local9, f31_local10, f31_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act30(arg0, arg1, arg2)
    local f32_local0 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BL, 120, 90, 200 + arg0:GetMapHitRadius(TARGET_SELF))
    local f32_local1 = arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_BR, 120, 90, 200 + arg0:GetMapHitRadius(TARGET_SELF))
    if not not f32_local0 or f32_local1 == true then
        arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, GUARD_GOAL_DESIRE_RET_Continue, true)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3039, TARGET_ENE_0, 99, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act31(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    arg0:SetNumber(1, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function KingGhoul_471000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_KingGhoul_471000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f40_local0 = arg1:GetDist(TARGET_ENE_0)
    local f40_local1 = arg1:GetDist(TARGET_FRI_0)
    local f40_local2 = arg1:GetRandam_Int(1, 100)
    local f40_local3 = arg1:HasSpecialEffectId(TARGET_SELF, 11900)
    local f40_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 11901)
    local f40_local5 = arg1:HasSpecialEffectId(TARGET_SELF, 11902)
    local f40_local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11941)
    local f40_local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11945)
    local f40_local8 = arg1:HasSpecialEffectId(TARGET_SELF, 5030)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f40_local6 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3033, TARGET_ENE_0, 99, 0, 0)
            return true
        end
        if f40_local7 == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3039, TARGET_ENE_0, 99, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if f40_local5 == true then
                if f40_local2 <= 50 and f40_local0 <= 16 and arg1:GetAttackPassedTime(3035) >= 15 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3035, TARGET_ENE_0, 20, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 20, 0, 0)
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 20, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f40_local0 <= 30 then
            if f40_local5 == true then
                if f40_local0 <= 15 and f40_local2 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3036, TARGET_ENE_0, 20, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3023) >= 10 and f40_local0 >= 15 and f40_local0 <= 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 30, 0, 0)
                    return true
                elseif f40_local2 <= 50 and arg1:GetAttackPassedTime(3037) >= 10 and f40_local0 >= 20 and f40_local0 <= 30 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3037, TARGET_ENE_0, 30, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 30, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3034) >= 10 and f40_local0 >= 20 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 35, 0, 0)
                    return true
                elseif arg1:GetAttackPassedTime(3024) >= 10 and f40_local0 >= 15 and f40_local0 <= 22 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 30, 0, 0)
                    return true
                end
            elseif arg1:GetAttackPassedTime(3023) >= 10 and f40_local0 >= 15 and f40_local0 <= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 30, 0, 0)
                return true
            elseif f40_local2 <= 50 and arg1:GetAttackPassedTime(3037) >= 10 and f40_local0 >= 20 and f40_local0 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3037, TARGET_ENE_0, 30, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 30, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3034) >= 10 and f40_local0 >= 20 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 35, 0, 0)
                return true
            elseif arg1:GetAttackPassedTime(3024) >= 10 and f40_local0 >= 15 and f40_local0 <= 22 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3024, TARGET_ENE_0, 30, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 30, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 30, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 30, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5035) and arg1:GetAttackPassedTime(3013) >= 15 and f40_local0 >= 13 and f40_local0 <= 25 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3013, TARGET_ENE_0, 30, 0, 0)
            return true
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_KingGhoul_471000_AfterAttackAct, "KingGhoul_471000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_KingGhoul_471000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


