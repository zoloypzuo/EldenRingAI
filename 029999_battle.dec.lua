RegisterTableGoal(GOAL_CommonNPCTest29999_Battle, "CommonNPCTest29999_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_CommonNPCTest29999_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg1:DeleteObserve(0)
    arg1:DeleteObserve(1)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5635)
    if ExecWeaponChange(arg0, arg1, arg2) == 1 then
        return 
    end
    local f2_local0 = ExecFirstAction(arg0, arg1, arg2)
    if f2_local0 == 1 then
        return 
    end
    f2_local0 = {}
    local f2_local1 = {REGIST_FUNC(arg1, arg2, GeneralNPC_Act01), REGIST_FUNC(arg1, arg2, GeneralNPC_Act02), REGIST_FUNC(arg1, arg2, GeneralNPC_Act03), REGIST_FUNC(arg1, arg2, GeneralNPC_Act04), REGIST_FUNC(arg1, arg2, GeneralNPC_Act05), REGIST_FUNC(arg1, arg2, GeneralNPC_Act06), REGIST_FUNC(arg1, arg2, GeneralNPC_Act07), REGIST_FUNC(arg1, arg2, GeneralNPC_Act08), REGIST_FUNC(arg1, arg2, GeneralNPC_Act09)}
    f2_local1[11] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act12)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act31)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act36)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act48)
    f2_local1[49] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act49)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act50)
    f2_local1[51] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act51)
    f2_local1[52] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act52)
    f2_local1[61] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act61)
    f2_local1[62] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act62)
    f2_local1[63] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act63)
    f2_local1[64] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act64)
    f2_local1[65] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act65)
    f2_local1[66] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act66)
    f2_local1[67] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act67)
    f2_local1[68] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act68)
    f2_local1[69] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act69)
    f2_local1[70] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act70)
    f2_local1[71] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act71)
    f2_local1[101] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act101)
    f2_local1[102] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act102)
    f2_local1[103] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act103)
    f2_local1[104] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act104)
    f2_local1[105] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act105)
    f2_local1[106] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act106)
    f2_local1[107] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act107)
    f2_local1[108] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act108)
    f2_local1[109] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act109)
    f2_local1[110] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act110)
    f2_local1[111] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act111)
    f2_local1[112] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act112)
    f2_local1[120] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act120)
    f2_local1[121] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act121)
    f2_local1[150] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act150)
    f2_local1[151] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act151)
    f2_local1[152] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act152)
    f2_local1[153] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act153)
    f2_local1[200] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act200)
    f2_local1[210] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act210)
    f2_local1[220] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act220)
    f2_local1[230] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act230)
    f2_local1[231] = REGIST_FUNC(arg1, arg2, GeneralNPC_Act231)
    Common_NPC_AI(arg0, arg1, arg2)
    f2_local0 = MakeNPCProbArr(arg0, arg1, arg2, 1)
    local f2_local2 = REGIST_FUNC(arg1, arg2, GeneralNPC_AdjustSpace)
    Common_Battle_Activate_ForCommonNPC(arg1, arg2, f2_local0, f2_local1, f2_local2)
    if arg2:GetSubGoalNum() <= 0 then
        GeneralNPC_Act_onNoSubGoal(arg1, arg2)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg1:GetStringIndexedNumber("IsExistSpAtPlanning") == 1 and arg1:GetSp(TARGET_SELF) <= 0 then
        arg1:SetStringIndexedNumber("IsExistSpAtPlanning", 0)
        arg2:ClearSubGoal()
    end
    if arg2:IsFinishTimer(0) == true and arg1:GetBehaviorStateId(PLAN_IDX_AINOTE_STATETYPE) == PLAN_STATETYPE_CHARGEMAGIC then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0)
    end
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f5_local0 = {}
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5635) then
        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5635)
        arg2:ClearSubGoal()
        local f5_local1 = NPC_ATK_R2
        local f5_local2 = arg1:GetNPCActProb(9030)
        local f5_local3 = arg1:GetRandam_Int(1, 100)
        if arg1:GetWeaponBothHandState(TARGET_SELF) == -1 and GetDualAttackType(arg1, arg2) == 1 and f5_local2 >= fate then
            f5_local1 = NPC_ATK_L1
        end
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f5_local1, TARGET_ENE_0, 4, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 2)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1201] then
            arg2:ClearSubGoal()
            GeneralNPC_Act01(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] then
            arg2:ClearSubGoal()
            GeneralNPC_Act101(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] then
            arg2:ClearSubGoal()
            GeneralNPC_Act102(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] + f5_local0[1204] then
            arg2:ClearSubGoal()
            GeneralNPC_Act103(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] + f5_local0[1204] + f5_local0[1205] then
            arg2:ClearSubGoal()
            GeneralNPC_Act104(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] + f5_local0[1204] + f5_local0[1205] + f5_local0[1206] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 1, TARGET_SELF, false, NPC_ATK_L1)
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] + f5_local0[1204] + f5_local0[1205] + f5_local0[1206] + f5_local0[1207] then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            else
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            end
            return true
        elseif f5_local1 <= f5_local0[1201] + f5_local0[1202] + f5_local0[1203] + f5_local0[1204] + f5_local0[1205] + f5_local0[1206] + f5_local0[1207] + f5_local0[1208] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 3, TARGET_ENE_0, true, NPC_ATK_L1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 3)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1301] then
            arg2:ClearSubGoal()
            GeneralNPC_Act102(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1301] + f5_local0[1302] then
            arg2:ClearSubGoal()
            GeneralNPC_Act103(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1301] + f5_local0[1302] + f5_local0[1303] then
            arg2:ClearSubGoal()
            GeneralNPC_Act104(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1301] + f5_local0[1302] + f5_local0[1303] + f5_local0[1304] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 1, TARGET_SELF, false, NPC_ATK_L1)
            return true
        elseif f5_local1 <= f5_local0[1301] + f5_local0[1302] + f5_local0[1303] + f5_local0[1304] + f5_local0[1305] then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            else
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            end
            return true
        elseif f5_local1 <= f5_local0[1301] + f5_local0[1302] + f5_local0[1303] + f5_local0[1304] + f5_local0[1305] + f5_local0[1306] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 1, TARGET_SELF, false, NPC_ATK_L1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 4)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1401] then
            arg2:ClearSubGoal()
            GeneralNPC_Act101(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] then
            arg2:ClearSubGoal()
            GeneralNPC_Act102(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] then
            arg2:ClearSubGoal()
            GeneralNPC_Act103(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] then
            arg2:ClearSubGoal()
            GeneralNPC_Act104(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] + f5_local0[1405] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 1, TARGET_SELF, false, NPC_ATK_L1)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] + f5_local0[1405] + f5_local0[1406] then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 0, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            else
                arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 1.2, TARGET_ENE_0, 1, arg1:GetRandam_Int(75, 90), true, false, NPC_ATK_L1)
            end
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] + f5_local0[1405] + f5_local0[1406] + f5_local0[1407] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Guard, 1.2, NPC_ATK_L1, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
            return true
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] + f5_local0[1405] + f5_local0[1406] + f5_local0[1407] + f5_local0[1408] then
            arg2:ClearSubGoal()
            GeneralNPC_Act120(arg1, arg2)
        elseif f5_local1 <= f5_local0[1401] + f5_local0[1402] + f5_local0[1403] + f5_local0[1404] + f5_local0[1405] + f5_local0[1406] + f5_local0[1407] + f5_local0[1408] + f5_local0[1409] then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5635)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetOutOfRange) and arg1:IsTargetOutOfRangeInterruptSlot(0) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 5)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1501] then
            arg2:ClearSubGoal()
            GeneralNPC_Act105(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1501] + f5_local0[1502] then
            arg2:ClearSubGoal()
            GeneralNPC_Act103(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 6)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1601] then
            arg2:ClearSubGoal()
            GeneralNPC_Act101(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1601] + f5_local0[1602] then
            arg2:ClearSubGoal()
            GeneralNPC_Act121(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessParry) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 7)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1701] then
            arg2:ClearSubGoal()
            local f5_local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
            f5_local2:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 8)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1801] then
            arg2:ClearSubGoal()
            local f5_local2 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, -1, TARGET_SELF, false, 0)
            f5_local2:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, 999, 0, -1)
            return true
        elseif f5_local1 <= f5_local0[1801] + f5_local0[1802] then
            arg2:ClearSubGoal()
            GeneralNPC_Act03(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1801] + f5_local0[1802] + f5_local0[1803] then
            arg2:ClearSubGoal()
            GeneralNPC_Act21(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 9)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[1901] then
            arg2:ClearSubGoal()
            GeneralNPC_Act03(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[1901] + f5_local0[1902] then
            arg2:ClearSubGoal()
            GeneralNPC_Act153()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        Common_NPC_AI(arg0, arg1, arg2)
        f5_local0 = MakeNPCProbArr(arg0, arg1, arg2, 10)
        local f5_local1 = arg1:GetRandam_Int(1, 100)
        if f5_local1 <= f5_local0[2001] then
            if CanExecArts_Immediately(arg0, arg1, arg2, 42) == 1 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.2, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif f5_local1 <= f5_local0[2001] + f5_local0[2002] then
            arg2:ClearSubGoal()
            GeneralNPC_Act102(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[2001] + f5_local0[2002] + f5_local0[2003] then
            arg2:ClearSubGoal()
            GeneralNPC_Act103(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[2001] + f5_local0[2002] + f5_local0[2003] + f5_local0[2004] then
            arg2:ClearSubGoal()
            GeneralNPC_Act104(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[2001] + f5_local0[2002] + f5_local0[2003] + f5_local0[2004] + f5_local0[2005] then
            arg2:ClearSubGoal()
            GeneralNPC_Act07(arg1, arg2)
            return true
        elseif f5_local1 <= f5_local0[2001] + f5_local0[2002] + f5_local0[2003] + f5_local0[2004] + f5_local0[2005] + f5_local0[2006] then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Guard, 1.2, NPC_ATK_L1, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) then
        arg2:ClearSubGoal()
        arg1:DeleteObserve(0)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) then
        arg2:ClearSubGoal()
        arg1:DeleteObserve(1)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    end
    if not not arg1:IsInterupt(INTERUPT_FindUnfavorableFailedPoint) or arg1:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg1:SetStringIndexedNumber("IsUnreachMode", 1)
        return true
    end
    return false
    
end

function ExecWeaponChange(arg0, arg1, arg2)
    local f6_local0 = arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f6_local1 = arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f6_local2 = arg1:GetEquipWeaponIndex(ARM_R)
    local f6_local3 = arg1:GetEquipWeaponIndex(ARM_L)
    local f6_local4 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_R, WEP_Primary)
    local f6_local5 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_R, WEP_Secondary)
    local f6_local6 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_R, WEP_Tertiary)
    local f6_local7 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_L, WEP_Primary)
    local f6_local8 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_L, WEP_Secondary)
    local f6_local9 = arg1:GetEquipWeaponId(TARGET_SELF, ARM_L, WEP_Tertiary)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18678) then
        if f6_local2 == WEP_Primary then
            if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 1898) or arg1:GetTimer(11) > 0 then
                local f6_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
                f6_local10:SetLifeEndSuccess(true)
                arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
                return 1
            end
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 1898) == false and arg1:GetTimer(11) <= 0 then
            local f6_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
            f6_local10:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
            return 1
        end
    end
    if f6_local0 == 110000 and (f6_local4 ~= 110000 or f6_local5 ~= 110000 or f6_local6 ~= 110000) then
        local f6_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
        f6_local10:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        return 1
    end
    if f6_local1 == 110000 and (f6_local7 ~= 110000 or f6_local8 ~= 110000 or f6_local9 ~= 110000) then
        local f6_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
        f6_local10:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        return 1
    end
    local f6_local10 = -1
    if arg1:HasSpecialEffectId(TARGET_SELF, 19393) then
        f6_local10 = 0.7
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 19394) then
        f6_local10 = 0.5
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 19395) then
        f6_local10 = 0.3
    end
    if f6_local10 >= 0 and arg1:GetHpRate(TARGET_SELF) <= f6_local10 then
        if f6_local6 ~= 110000 and f6_local2 ~= WEP_Tertiary then
            local f6_local11 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyRight, TARGET_ENE_0, 999, 0, 0)
            f6_local11:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
            return 1
        end
        if f6_local9 ~= 110000 and f6_local3 ~= WEP_Tertiary then
            local f6_local11 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_ArrowKeyLeft, TARGET_ENE_0, 999, 0, 0)
            f6_local11:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
            return 1
        end
    end
    return 0
    
end

function ExecFirstAction(arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18678) and arg1:GetTimer(11) <= 0 and arg1:GetEquipWeaponIndex(ARM_R) == WEP_Primary then
        arg1:SetTimer(11, 20)
        GeneralNPC_Act231(arg1, arg2, paramTbl)
        return 1
    end
    return 0
    
end

function Common_NPC_AI(arg0, arg1, arg2)
    arg1:ResetNPCActProb()
    local f8_local0 = {}
    Common_NPC_AI_GetWeponParam(arg0, arg1, arg2, ARM_R)
    Common_NPC_AI_GetWeponParam(arg0, arg1, arg2, ARM_L)
    local f8_local1 = arg1:GetStringIndexedNumber("R_WeaponType")
    local f8_local2 = arg1:GetStringIndexedNumber("L_WeaponType")
    local f8_local3 = arg1:GetDist(TARGET_ENE_0)
    if f8_local1 == 12 and f8_local2 ~= 10 then
        f8_local1 = 11
    end
    local f8_local4 = 0
    if f8_local3 > 7 then
        f8_local4 = 4
    elseif f8_local3 > 5 then
        f8_local4 = 3
    elseif f8_local3 > 3 then
        f8_local4 = 2
    elseif f8_local3 > 1 then
        f8_local4 = 1
    else
        f8_local4 = 0
    end
    local f8_local5 = 0
    if f8_local1 == 1 then
        f8_local5 = 10
    elseif f8_local1 == 2 then
        f8_local5 = 20
    elseif f8_local1 == 11 then
        f8_local5 = 30
    elseif f8_local1 == 12 then
        f8_local5 = 40
    elseif f8_local1 == 13 then
        f8_local5 = 50
    elseif f8_local1 == 30 and CheckMagicType(arg0, arg1, arg2) == 1 then
        f8_local5 = 100
    elseif f8_local1 == 30 and CheckMagicType(arg0, arg1, arg2) == 2 then
        f8_local5 = 110
    elseif f8_local1 == 30 and CheckMagicType(arg0, arg1, arg2) == 3 then
        f8_local5 = 120
    elseif f8_local1 == 20 then
        f8_local5 = 200
    end
    f8_local5 = f8_local5 + f8_local4
    arg1:AddNPCActProb(f8_local5)
    local f8_local6 = 0
    if f8_local2 == 1 then
        f8_local6 = 500
    elseif f8_local2 == 2 then
        f8_local6 = 510
    elseif f8_local2 == 20 then
        f8_local6 = 600
    elseif f8_local2 == 30 then
        f8_local6 = 700
    elseif f8_local2 == 10 or f8_local2 == 11 then
        f8_local6 = 800
    end
    f8_local6 = f8_local6 + f8_local4
    arg1:AddNPCActProb(f8_local6)
    local f8_local7 = arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f8_local8 = arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f8_local9 = arg1:GetWeaponBehaviorVarID(f8_local7)
    local f8_local10 = arg1:GetWeaponBehaviorVarID(f8_local8)
    if f8_local9 >= 1600 and f8_local9 <= 1899 and f8_local9 >= 3000 and f8_local9 <= 3299 then
        arg1:AddNPCActProb(1000 + f8_local4)
    end
    if f8_local9 >= 1200 and f8_local9 <= 1299 then
        arg1:AddNPCActProb(1010 + f8_local4)
    end
    local f8_local11 = GetCondNum_ForArts(arg1, ARM_R)
    local f8_local12 = GetCondNum_ForArts(arg1, ARM_L)
    if f8_local11 > 0 then
        f8_local11 = f8_local11 + f8_local4
        arg1:AddNPCActProb(f8_local11)
    end
    if f8_local12 > 0 and f8_local12 ~= f8_local11 then
        f8_local12 = f8_local12 + f8_local4
        arg1:AddNPCActProb(f8_local12)
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        arg1:AddNPCActProb(3000)
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, PLAN_SP_EFFECT_ANIME_SLEEPING) == true then
        arg1:AddNPCActProb(3100)
    end
    local f8_local13 = arg1:GetWeightType(TARGET_SELF)
    if f8_local13 == AI_TARGET_WEIGHT_TYPE_WeightOver then
        arg1:AddNPCActProb(4000)
    elseif f8_local13 == AI_TARGET_WEIGHT_TYPE_Heavy then
        arg1:AddNPCActProb(4010)
    elseif f8_local13 == AI_TARGET_WEIGHT_TYPE_Normal then
        arg1:AddNPCActProb(4020)
    elseif f8_local13 == AI_TARGET_WEIGHT_TYPE_Light then
        arg1:AddNPCActProb(4030)
    end
    if arg1:GetHpRate(TARGET_SELF) >= 0.5 then
        arg1:AddNPCActProb(4100)
    end
    if arg1:GetSp(TARGET_SELF) <= 1 then
        arg1:AddNPCActProb(4200)
        arg1:SetStringIndexedNumber("IsExistSpAtPlanning", 0)
    else
        arg1:SetStringIndexedNumber("IsExistSpAtPlanning", 1)
    end
    if HasSpelltypeX(arg0, arg1, arg2, 12) == false then
        arg1:AddNPCActProb(6000)
    end
    if HasSpelltypeX(arg0, arg1, arg2, 11) == false then
        arg1:AddNPCActProb(6010)
    end
    if HasSpelltypeX(arg0, arg1, arg2, 10) == false then
        arg1:AddNPCActProb(6020)
    end
    if HasSpelltypeX(arg0, arg1, arg2, 20) == false then
        arg1:AddNPCActProb(6030)
    end
    if HasSpelltypeX(arg0, arg1, arg2, 30) == false then
        arg1:AddNPCActProb(6040)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 12, f8_local7) == false then
        arg1:AddNPCActProb(6400)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 11, f8_local7) == false then
        arg1:AddNPCActProb(6410)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 10, f8_local7) == false then
        arg1:AddNPCActProb(6420)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 20, f8_local7) == false then
        arg1:AddNPCActProb(6430)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 30, f8_local7) == false then
        arg1:AddNPCActProb(6440)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 12, f8_local8) == false then
        arg1:AddNPCActProb(6600)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 11, f8_local8) == false then
        arg1:AddNPCActProb(6610)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 10, f8_local8) == false then
        arg1:AddNPCActProb(6620)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 20, f8_local8) == false then
        arg1:AddNPCActProb(6630)
    end
    if HasSpelltypeX_CanUse(arg0, arg1, arg2, 30, f8_local8) == false then
        arg1:AddNPCActProb(6640)
    end
    local f8_local14 = 1
    local f8_local15 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f8_local16 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, f8_local15 + 90, f8_local14, AI_SPA_DIR_TYPE_TargetF)
    local f8_local17 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, f8_local15 - 90, f8_local14, AI_SPA_DIR_TYPE_TargetF)
    local f8_local18 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, f8_local15 - 180, f8_local14, AI_SPA_DIR_TYPE_TargetF)
    if f8_local18 < f8_local14 then
        arg1:AddNPCActProb(7000)
    end
    if f8_local16 < f8_local14 and f8_local17 < f8_local14 then
        arg1:AddNPCActProb(7010)
    end
    if arg1:GetStringIndexedNumber("IsUnreachMode") == 1 then
        if arg1:IsFinishTimer(10) then
            arg1:SetTimer(10, 1)
            if arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) == true then
                arg1:SetStringIndexedNumber("IsUnreachMode", 0)
            else
                arg1:AddNPCActProb(7800)
            end
        else
            arg1:AddNPCActProb(7800)
        end
    end
    if HasItemtypeX_CanUse(arg0, arg1, arg2, 10) == false then
        arg1:AddNPCActProb(8000)
    end
    if HasItemtypeX_CanUse(arg0, arg1, arg2, 20) == false then
        arg1:AddNPCActProb(8010)
    end
    if HasItemtypeX_CanUse(arg0, arg1, arg2, 30) == false then
        arg1:AddNPCActProb(8020)
    end
    if HasItemtypeX_CanUse(arg0, arg1, arg2, 31) == false then
        arg1:AddNPCActProb(8030)
    end
    local f8_local19 = arg1:GetWeaponBehaviorVarID(arg1:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 0))
    local f8_local20 = arg1:GetWeaponBehaviorVarID(arg1:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 1))
    local f8_local21 = arg1:GetWeaponBehaviorVarID(arg1:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Bolt, 0))
    local f8_local22 = arg1:GetWeaponBehaviorVarID(arg1:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Bolt, 1))
    local f8_local23 = GetBowType(f8_local9)
    local f8_local24 = GetBowType(f8_local10)
    local f8_local25 = GetArrowType(f8_local19)
    local f8_local26 = GetArrowType(f8_local20)
    local f8_local27 = GetBoltType(f8_local21)
    local f8_local28 = GetBoltType(f8_local22)
    if f8_local23 == 40 then
        if f8_local25 ~= 50 then
            arg1:AddNPCActProb(8400)
        end
        if f8_local26 ~= 50 then
            arg1:AddNPCActProb(8401)
        end
    elseif f8_local23 == 42 then
        if f8_local25 ~= 51 then
            arg1:AddNPCActProb(8400)
        end
        if f8_local26 ~= 51 then
            arg1:AddNPCActProb(8401)
        end
    elseif f8_local23 == 43 then
        if f8_local27 ~= 52 then
            arg1:AddNPCActProb(8400)
        end
        if f8_local28 ~= 52 then
            arg1:AddNPCActProb(8401)
        end
    elseif f8_local23 == 44 then
        if f8_local27 ~= 53 then
            arg1:AddNPCActProb(8400)
        end
        if f8_local28 ~= 53 then
            arg1:AddNPCActProb(8401)
        end
    end
    if f8_local24 == 40 then
        if f8_local25 ~= 50 then
            arg1:AddNPCActProb(8410)
        end
        if f8_local26 ~= 50 then
            arg1:AddNPCActProb(8411)
        end
    elseif f8_local24 == 42 then
        if f8_local25 ~= 51 then
            arg1:AddNPCActProb(8410)
        end
        if f8_local26 ~= 51 then
            arg1:AddNPCActProb(8411)
        end
    elseif f8_local24 == 43 then
        if f8_local27 ~= 52 then
            arg1:AddNPCActProb(8410)
        end
        if f8_local28 ~= 52 then
            arg1:AddNPCActProb(8411)
        end
    elseif f8_local24 == 44 then
        if f8_local27 ~= 53 then
            arg1:AddNPCActProb(8410)
        end
        if f8_local28 ~= 53 then
            arg1:AddNPCActProb(8411)
        end
    end
    local f8_local29 = false
    if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R or arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddNPCActProb(9000)
    elseif arg1:GetStringIndexedNumber("L_WeaponType") ~= 10 then
        arg1:AddNPCActProb(9000)
    end
    if CanExecArts_Immediately(arg0, arg1, arg2, 40) == 0 and CanExecArts_Immediately(arg0, arg1, arg2, 41) == 0 then
        arg1:AddNPCActProb(9005)
    end
    if arg1:GetTimer(5) > 0 then
        arg1:AddNPCActProb(9010)
    end
    if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddNPCActProb(9020)
    elseif arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddNPCActProb(9021)
    else
        arg1:AddNPCActProb(9022)
    end
    if GetDualAttackType(arg1, arg2) >= 0 then
        arg1:AddNPCActProb(9100)
    end
    if GetArtsUsageParam(arg1, ARM_L) == 90000000 then
        arg1:AddNPCActProb(9120)
    end
    if arg1:GetTimer(6) > 0 then
        arg1:AddNPCActProb(9506)
    end
    if arg1:GetTimer(7) > 0 then
        arg1:AddNPCActProb(9507)
    end
    if arg1:GetTimer(8) > 0 then
        arg1:AddNPCActProb(9508)
    end
    if arg1:GetTimer(9) > 0 then
        arg1:AddNPCActProb(9509)
    end
    if arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer) == 1 then
        local f8_local30 = arg1:GetTeamOrder(ORDER_TYPE_Role)
        if f8_local30 == ROLE_TYPE_Torimaki then
            arg1:AddNPCActProb(9600)
        elseif f8_local30 == ROLE_TYPE_Kankyaku then
            arg1:AddNPCActProb(9700)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:AddNPCActProb(15020)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        arg1:AddNPCActProb(15021)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        arg1:AddNPCActProb(15022)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        arg1:AddNPCActProb(15023)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5024) then
        arg1:AddNPCActProb(15024)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18690) then
        arg1:AddNPCActProb(15030)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18691) then
        arg1:AddNPCActProb(15031)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18692) then
        arg1:AddNPCActProb(15032)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18693) then
        arg1:AddNPCActProb(15033)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18694) then
        arg1:AddNPCActProb(15034)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18695) then
        arg1:AddNPCActProb(15035)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18650) then
        arg1:AddNPCActProb(15036)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18651) then
        arg1:AddNPCActProb(15037)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18652) then
        arg1:AddNPCActProb(15038)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18653) then
        arg1:AddNPCActProb(15039)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18654) then
        arg1:AddNPCActProb(15040)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18655) then
        arg1:AddNPCActProb(15041)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18656) then
        arg1:AddNPCActProb(15042)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18657) then
        arg1:AddNPCActProb(15043)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18658) then
        arg1:AddNPCActProb(15044)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18659) then
        arg1:AddNPCActProb(15045)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18660) then
        arg1:AddNPCActProb(15046)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18661) then
        arg1:AddNPCActProb(15047)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18662) then
        arg1:AddNPCActProb(15048)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18663) then
        arg1:AddNPCActProb(15049)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18664) then
        arg1:AddNPCActProb(15050)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18665) then
        arg1:AddNPCActProb(15051)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18666) then
        arg1:AddNPCActProb(15052)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18667) then
        arg1:AddNPCActProb(15053)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18668) then
        arg1:AddNPCActProb(15054)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18669) then
        arg1:AddNPCActProb(15055)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18670) then
        arg1:AddNPCActProb(15056)
    end
    
end

function MakeNPCProbArr(arg0, arg1, arg2, arg3)
    local f9_local0 = {}
    local f9_local1 = 0
    if arg3 == 1 then
        for f9_local2 = 1, 300, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 2 then
        for f9_local2 = 1200, 1210, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 3 then
        for f9_local2 = 1300, 1310, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 4 then
        for f9_local2 = 1400, 1410, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 5 then
        for f9_local2 = 1500, 1510, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 6 then
        for f9_local2 = 1600, 1610, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 7 then
        for f9_local2 = 1700, 1710, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 8 then
        for f9_local2 = 1800, 1810, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 9 then
        for f9_local2 = 1900, 1910, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    if arg3 == 10 then
        for f9_local2 = 2000, 2010, 1 do
            f9_local0[f9_local2] = math.max(0, arg1:GetNPCActProb(f9_local2))
        end
    end
    return f9_local0
    
end

function GetBowType(arg0)
    local f10_local0 = -1
    if arg0 >= 4000 and arg0 <= 4199 then
        f10_local0 = 40
    elseif arg0 >= 4200 and arg0 <= 4299 then
        f10_local0 = 42
    elseif arg0 >= 4300 and arg0 <= 4399 then
        f10_local0 = 43
    elseif arg0 >= 4400 and arg0 <= 4449 then
        f10_local0 = 44
    end
    return f10_local0
    
end

function GetArrowType(arg0)
    local f11_local0 = -1
    if arg0 >= 5000 and arg0 <= 5099 then
        f11_local0 = 50
    end
    if arg0 >= 5100 and arg0 <= 5199 then
        f11_local0 = 51
    end
    return f11_local0
    
end

function GetBoltType(arg0)
    local f12_local0 = -1
    if arg0 >= 5200 and arg0 <= 5299 then
        f12_local0 = 52
    end
    if arg0 >= 5300 and arg0 <= 5399 then
        f12_local0 = 53
    end
    return f12_local0
    
end

function GetUsageId_AA(arg0, arg1)
    return math.floor(arg1 / 1000000)
    
end

function GetUsageId_X(arg0, arg1)
    return math.floor(arg0:Mod(arg1, 1000000) / 100000)
    
end

function GetUsageId_B(arg0, arg1)
    return math.floor(arg0:Mod(arg1, 100000) / 10000)
    
end

function GetUsageId_CC(arg0, arg1)
    return math.floor(arg0:Mod(arg1, 10000) / 100)
    
end

function GetUsageId_DD(arg0, arg1)
    local f17_local0 = math.floor
    local f17_local1 = arg0:Mod(arg1, 100)
    return f17_local0()
    
end

function GetArtsUsageParam(arg0, arg1)
    local f18_local0 = arg0:GetAIUsageParam(2, arg0:GetArtsID(arg1))
    local f18_local1 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, arg1)
    local f18_local2 = arg0:GetWeaponBehaviorVarID(f18_local1)
    local f18_local3 = GetBowType(f18_local2)
    local f18_local4 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 0))
    local f18_local5 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 1))
    local f18_local6 = GetArrowType(f18_local4)
    local f18_local7 = GetArrowType(f18_local5)
    if f18_local1 == 110000 or GetDualAttackType(arg0, goal) >= 0 and arg1 == ARM_L then
        f18_local0 = 90000000
    end
    if f18_local3 == 40 then
        if f18_local6 ~= 50 and f18_local7 ~= 50 then
            f18_local0 = -1
        end
    elseif f18_local3 == 42 and f18_local6 ~= 51 and f18_local7 ~= 51 then
        f18_local0 = -1
    end
    return f18_local0
    
end

function GetCondNum_ForArts(arg0, arg1)
    local f19_local0 = GetArtsUsageParam(arg0, arg1)
    local f19_local1 = GetUsageId_AA(arg0, f19_local0)
    local f19_local2 = -1
    if f19_local1 == 12 then
        f19_local2 = 2000
    elseif f19_local1 == 11 then
        f19_local2 = 2010
    elseif f19_local1 == 10 then
        f19_local2 = 2020
    elseif f19_local1 == 20 then
        f19_local2 = 2030
    elseif f19_local1 == 30 then
        local f19_local3 = GetUsageId_B(arg0, f19_local0)
        if BB_UsageId == 0 then
            if arg0:HasSpecialEffectCategory(TARGET_SELF, 156) == false and arg0:HasSpecialEffectCategory(TARGET_SELF, 160) == false and arg0:HasSpecialEffectCategory(TARGET_SELF, 1001) == false then
                f19_local2 = 2040
            end
        elseif f19_local3 == 1 then
            if arg0:HasSpecialEffectCategory(TARGET_SELF, 162) == false and arg0:HasSpecialEffectCategory(TARGET_SELF, 163) == false and arg0:CanWeaponEnhance(arg0:GetCurrentEquipWeaponId(TARGET_SELF, arg1)) then
                f19_local2 = 2040
            end
        elseif f19_local3 == 8 and arg0:HasSpecialEffectId(TARGET_ENE_0, 1897) == false then
            f19_local2 = 2040
        end
    elseif f19_local1 == 40 then
        f19_local2 = 2050
    elseif f19_local1 == 41 then
        f19_local2 = 2060
    elseif f19_local1 == 42 then
        f19_local2 = 2070
    end
    return f19_local2
    
end

function CheckMagicType(arg0, arg1, arg2)
    local f20_local0 = 0
    local f20_local1 = 0
    local f20_local2 = 0
    local f20_local3 = {}
    f20_local3[12] = 0
    f20_local3[11] = 0
    f20_local3[10] = 0
    for f20_local4 = 0, 6, 1 do
        f20_local1 = arg1:GetEquipMagicId(TARGET_SELF, f20_local4)
        f20_local2 = GetSpellType(arg0, arg1, f20_local1)
        if f20_local2 == 12 or f20_local2 == 11 or f20_local2 == 10 then
            f20_local3[f20_local2] = f20_local3[f20_local2] + 1
        end
    end
    local f20_local4 = f20_local3[10]
    local f20_local5 = f20_local3[11]
    if f20_local5 <= f20_local4 then
        f20_local4 = f20_local3[10]
        f20_local5 = f20_local3[12]
        if f20_local5 <= f20_local4 then
            f20_local4 = 1
            return f20_local4
        else
            f20_local4 = f20_local3[11]
            f20_local5 = f20_local3[12]
            if f20_local5 <= f20_local4 then
                f20_local4 = f20_local3[11]
                f20_local5 = f20_local3[10]
                if f20_local5 < f20_local4 then
                    f20_local4 = 2
                    return f20_local4
                else
                    f20_local4 = 3
                    return f20_local4
                end
            end
            f20_local4 = 3
            return f20_local4
        end
    else
        f20_local4 = f20_local3[11]
        f20_local5 = f20_local3[12]
        if f20_local5 <= f20_local4 then
            f20_local4 = f20_local3[11]
            f20_local5 = f20_local3[10]
            if f20_local5 < f20_local4 then
                f20_local4 = 2
                return f20_local4
            else
                f20_local4 = 3
                return f20_local4
            end
        end
        f20_local4 = 3
        return f20_local4
    end
    
end

function HasSpelltypeX(arg0, arg1, arg2, arg3)
    local f21_local0 = -1
    local f21_local1 = -1
    local f21_local2, f21_local3 = false
    for f21_local4 = 0, 6, 1 do
        f21_local0 = arg1:GetEquipMagicId(TARGET_SELF, f21_local4)
        f21_local1 = GetSpellType(arg0, arg1, f21_local0)
        if f21_local1 == arg3 then
            f21_local2 = true
        end
    end
    return f21_local2
    
end

function HasSpelltypeX_CanUse(arg0, arg1, arg2, arg3, arg4)
    local f22_local0 = -1
    local f22_local1 = -1
    local f22_local2, f22_local3 = false
    for f22_local4 = 0, 6, 1 do
        f22_local0 = arg1:GetEquipMagicId(TARGET_SELF, f22_local4)
        f22_local1 = GetSpellType(arg0, arg1, f22_local0)
        if f22_local1 == arg3 and CanUseSpell(arg0, arg1, arg2, f22_local0, arg4) == true then
            f22_local2 = true
        end
    end
    return f22_local2
    
end

function CanUseSpell(arg0, arg1, arg2, arg3, arg4)
    local f23_local0 = -1
    local f23_local1 = -1
    local f23_local2 = -1
    local f23_local3 = false
    local f23_local4 = arg1:GetMagicCategory(arg3)
    if arg1:CanShootMagicByType(arg4, f23_local4) == false then
        return f23_local3
    end
    f23_local0 = arg1:GetAIUsageParam(0, arg3)
    f23_local1 = GetUsageId_AA(arg1, f23_local0)
    f23_local2 = GetUsageId_B(arg1, f23_local0)
    if f23_local1 == 10 then
        f23_local3 = true
    elseif f23_local1 == 11 then
        f23_local3 = true
    elseif f23_local1 == 12 then
        f23_local3 = true
    elseif f23_local1 == 20 then
        f23_local3 = true
    elseif f23_local1 == 30 then
        if f23_local2 == 0 then
            if arg1:HasSpecialEffectCategory(TARGET_SELF, 156) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 160) == false and arg1:HasSpecialEffectId(TARGET_SELF, 1676000) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 1001) == false then
                f23_local3 = true
            end
        elseif f23_local2 == 1 then
            if arg1:HasSpecialEffectCategory(TARGET_SELF, 162) == false and arg1:CanWeaponEnhance(arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)) then
                f23_local3 = true
            end
        elseif f23_local2 == 2 and arg1:HasSpecialEffectCategory(TARGET_SELF, 163) == false and arg1:GetStringIndexedNumber("L_WeaponType") == 10 == true then
            f23_local3 = true
        end
    end
    return f23_local3
    
end

function GetSpellType(arg0, arg1, arg2)
    local f24_local0 = -1
    local f24_local1 = -1
    local f24_local2 = -1
    if arg2 ~= -1 then
        f24_local1 = arg1:GetAIUsageParam(0, arg2)
        f24_local2 = GetUsageId_AA(arg1, f24_local1)
    end
    if f24_local2 == 10 then
        f24_local0 = 10
    elseif f24_local2 == 11 then
        f24_local0 = 11
    elseif f24_local2 == 12 then
        f24_local0 = 12
    elseif f24_local2 == 20 then
        f24_local0 = 20
    elseif f24_local2 == 30 then
        f24_local0 = 30
    end
    return f24_local0
    
end

function GetRandomSpellId_ByType(arg0, arg1, arg2, arg3, arg4)
    local f25_local0 = 0
    local f25_local1 = 0
    local f25_local2 = 0
    local f25_local3 = 0
    local f25_local4 = {}
    local f25_local5 = {}
    local f25_local6 = nil
    for f25_local7 = 0, 6, 1 do
        f25_local0 = arg1:GetEquipMagicId(TARGET_SELF, f25_local7)
        f25_local1 = GetSpellType(arg0, arg1, f25_local0)
        if f25_local1 == arg3 and CanUseSpell(arg0, arg1, arg2, f25_local0, arg4) == true then
            f25_local4[f25_local7] = f25_local0
            f25_local3 = f25_local3 + 1
            f25_local5[f25_local3] = f25_local7
        end
    end
    local f25_local7 = arg1:GetRandam_Int(1, 100)
    local f25_local8 = 0
    if f25_local3 ~= 0 then
        for f25_local9 = 1, f25_local3, 1 do
            f25_local8 = f25_local8 + 1 / f25_local3 * 100
            if f25_local7 <= f25_local8 then
                f25_local2 = f25_local4[f25_local5[f25_local9]]
                break
            elseif f25_local9 == f25_local3 then
                f25_local2 = f25_local4[f25_local5[f25_local9]]
            end
        end
    end
    return f25_local2
    
end

function HasItemtypeX(arg0, arg1, arg2, arg3)
    local f26_local0 = -1
    local f26_local1 = -1
    local f26_local2, f26_local3 = false
    for f26_local4 = 0, 9, 1 do
        f26_local0 = arg1:GetEquipItemId(TARGET_SELF, f26_local4, ITEM_SLOTTYPE_SHORTCUT)
        f26_local1 = GetItemType(arg0, arg1, f26_local0)
        if f26_local1 == arg3 then
            f26_local2 = true
            break
        end
    end
    local f26_local4 = false
    if f26_local2 == f26_local4 then
        for f26_local4 = 0, 5, 1 do
            f26_local0 = arg1:GetEquipItemId(TARGET_SELF, f26_local4, ITEM_SLOTTYPE_TOOLBOX)
            f26_local1 = GetItemType(arg0, arg1, f26_local0)
            if f26_local1 == arg3 then
                f26_local2 = true
                break
            end
        end
    end
    return f26_local2
    
end

function HasItemtypeX_CanUse(arg0, arg1, arg2, arg3)
    local f27_local0 = -1
    local f27_local1 = -1
    local f27_local2, f27_local3 = false
    for f27_local4 = 0, 9, 1 do
        f27_local0 = arg1:GetEquipItemId(TARGET_SELF, f27_local4, ITEM_SLOTTYPE_SHORTCUT)
        f27_local1 = GetItemType(arg0, arg1, f27_local0)
        if f27_local1 == arg3 and CanUseItem(arg0, arg1, arg2, f27_local0) == true then
            f27_local2 = true
            break
        end
    end
    local f27_local4 = false
    if f27_local2 == f27_local4 then
        for f27_local4 = 0, 5, 1 do
            f27_local0 = arg1:GetEquipItemId(TARGET_SELF, f27_local4, ITEM_SLOTTYPE_TOOLBOX)
            f27_local1 = GetItemType(arg0, arg1, f27_local0)
            if f27_local1 == arg3 and CanUseItem(arg0, arg1, arg2, f27_local0) == true then
                f27_local2 = true
                break
            end
        end
    end
    return f27_local2
    
end

function GetItemType(arg0, arg1, arg2)
    local f28_local0 = -1
    local f28_local1 = -1
    local f28_local2 = -1
    if arg2 ~= -1 then
        f28_local1 = arg1:GetAIUsageParam(1, arg2)
        f28_local2 = GetUsageId_AA(arg1, f28_local1)
    end
    if f28_local2 == 10 then
        f28_local0 = 10
    elseif f28_local2 == 20 then
        f28_local0 = 20
    elseif f28_local2 == 30 then
        f28_local0 = 30
    elseif f28_local2 == 31 then
        f28_local0 = 31
    end
    return f28_local0
    
end

function CanUseItem(arg0, arg1, arg2, arg3)
    local f29_local0 = -1
    local f29_local1 = -1
    local f29_local2 = -1
    local f29_local3 = false
    f29_local0 = arg1:GetAIUsageParam(1, arg3)
    f29_local1 = GetUsageId_AA(arg1, f29_local0)
    f29_local2 = GetUsageId_B(arg1, f29_local0)
    if f29_local1 == 10 then
        f29_local3 = true
    elseif f29_local1 == 20 then
        if f29_local2 == 7 then
            if arg1:HasSpecialEffectAttribute(TARGET_SELF, 154) == false then
                f29_local3 = true
            end
        elseif f29_local2 == 8 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5630) == false then
                f29_local3 = true
            end
        else
            f29_local3 = true
        end
    elseif f29_local1 == 30 then
        if f29_local2 == 0 then
            if arg1:HasSpecialEffectCategory(TARGET_SELF, 156) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 160) == false and arg1:HasSpecialEffectId(TARGET_SELF, 503501) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 1001) == false then
                f29_local3 = true
            end
        elseif f29_local2 == 1 then
            if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L and arg1:CanWeaponEnhance(arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)) and arg1:HasSpecialEffectCategory(TARGET_SELF, 163) == false then
                f29_local3 = true
            elseif arg1:CanWeaponEnhance(arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)) and arg1:HasSpecialEffectCategory(TARGET_SELF, 162) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 10000) == false then
                f29_local3 = true
            end
        end
    elseif f29_local1 == 31 and arg1:HasSpecialEffectCategory(TARGET_SELF, 162) == false and arg1:HasSpecialEffectCategory(TARGET_SELF, 10000) == false and arg1:CanWeaponEnhance(arg1:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)) then
        f29_local3 = true
    end
    return f29_local3
    
end

function ChangeEquipItem_ById(arg0, arg1, arg2, arg3)
    local f30_local0 = 0
    local f30_local1 = 0
    local f30_local2 = false
    for f30_local3 = 0, 9, 1 do
        f30_local1 = arg1:GetEquipItemId(TARGET_SELF, f30_local3, ITEM_SLOTTYPE_SHORTCUT)
        if f30_local1 == arg3 then
            arg1:ChangeEquipItem(f30_local3, ITEM_SLOTTYPE_SHORTCUT)
            f30_local2 = true
            break
        end
    end
    local f30_local3 = false
    if f30_local2 == f30_local3 then
        for f30_local3 = 0, 5, 1 do
            f30_local1 = arg1:GetEquipItemId(TARGET_SELF, f30_local3, ITEM_SLOTTYPE_TOOLBOX)
            if f30_local1 == arg3 then
                arg1:ChangeEquipItem(f30_local3, ITEM_SLOTTYPE_TOOLBOX)
                f30_local2 = true
                break
            end
        end
    end
    return f30_local2
    
end

function GetRandomItemId_ByType(arg0, arg1, arg2, arg3)
    local f31_local0 = 0
    local f31_local1 = 0
    local f31_local2 = 0
    local f31_local3 = 0
    local f31_local4 = {}
    local f31_local5 = nil
    for f31_local6 = 0, 9, 1 do
        f31_local0 = arg1:GetEquipItemId(TARGET_SELF, f31_local6, ITEM_SLOTTYPE_SHORTCUT)
        f31_local1 = GetItemType(arg0, arg1, f31_local0)
        if f31_local1 == arg3 and CanUseItem(arg0, arg1, arg2, f31_local0) == true then
            f31_local3 = f31_local3 + 1
            f31_local4[f31_local3] = f31_local0
        end
    end
    for f31_local6 = 0, 5, 1 do
        f31_local0 = arg1:GetEquipItemId(TARGET_SELF, f31_local6, ITEM_SLOTTYPE_TOOLBOX)
        f31_local1 = GetItemType(arg0, arg1, f31_local0)
        if f31_local1 == arg3 and CanUseItem(arg0, arg1, arg2, f31_local0) == true then
            f31_local3 = f31_local3 + 1
            f31_local4[f31_local3] = f31_local0
        end
    end
    if f31_local3 ~= 0 then
        local f31_local6 = arg1:GetRandam_Int(1, 100)
        local f31_local7 = 0
        for f31_local8 = 1, f31_local3, 1 do
            f31_local7 = f31_local7 + 1 / f31_local3 * 100
            if f31_local6 <= f31_local7 then
                f31_local2 = f31_local4[f31_local8]
                break
            elseif f31_local8 == f31_local3 then
                f31_local2 = f31_local4[f31_local8]
            end
        end
    end
    return f31_local2
    
end

function GetDualAttackType(arg0, arg1)
    local f32_local0 = arg0:GetWepCategoryNo(ARM_R)
    local f32_local1 = arg0:GetWepCategoryNo(ARM_L)
    local f32_local2 = arg0:GetWepSpAtkCategoryNo(ARM_L)
    local f32_local3 = -1
    if f32_local0 == PLAN_WEAPON_CATEGORY_SHORT_SWORD then
        if f32_local0 == f32_local1 and f32_local2 ~= 104 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_CLAW then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_STRAIGHT_SWORD then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_TWINBLADE then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_SWORD then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_EXTRALARGE_SWORD then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_RAPIER then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_CURVEDSWORD then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_KATANA then
        if f32_local0 == f32_local1 or f32_local2 == 104 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_AX or f32_local0 == PLAN_WEAPON_CATEGORY_HAMMER then
        if f32_local1 == PLAN_WEAPON_CATEGORY_AX or f32_local1 == PLAN_WEAPON_CATEGORY_HAMMER then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_EXTRALARGE_AXHAMMER then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_AX or f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_HAMMER then
        if f32_local1 == PLAN_WEAPON_CATEGORY_LARGE_AX or f32_local1 == PLAN_WEAPON_CATEGORY_LARGE_HAMMER then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_FLAIL then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_SPEAR then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_SPEAR or f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_RAPIER then
        if f32_local1 == PLAN_WEAPON_CATEGORY_LARGE_SPEAR or f32_local1 == PLAN_WEAPON_CATEGORY_LARGE_RAPIER then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_HALBERD then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_CURVEDSWORD then
        if f32_local0 == f32_local1 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_FIST then
        if f32_local0 == f32_local1 and arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R) ~= 110000 and arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L) ~= 110000 then
            f32_local3 = 1
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_WHIP then
        if f32_local0 == f32_local1 then
            f32_local3 = 0
        end
    elseif f32_local0 == PLAN_WEAPON_CATEGORY_LARGE_SCYTHE and f32_local0 == f32_local1 then
        f32_local3 = 1
    end
    return f32_local3
    
end

function ChangeBothHand_ForArts(arg0, arg1, arg2, arg3)
    local f33_local0 = GetArtsUsageParam(arg1, ARM_R)
    local f33_local1 = GetArtsUsageParam(arg1, ARM_L)
    local f33_local2 = GetUsageId_AA(arg1, f33_local0)
    local f33_local3 = GetUsageId_AA(arg1, f33_local1)
    local f33_local4 = ARM_R
    local f33_local5 = 0
    if f33_local3 == 90 then
        f33_local5 = 1
        f33_local3 = -1
    end
    if arg3 == f33_local2 and arg3 == f33_local3 then
        if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
            f33_local4 = ARM_R
        elseif arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            f33_local4 = ARM_L
        elseif f33_local5 == 0 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f33_local4 = ARM_R
        else
            f33_local4 = ARM_R
        end
    elseif arg3 == f33_local2 then
        if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
            f33_local4 = ARM_R
        elseif arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f33_local4 = ARM_R
        elseif f33_local5 == 0 then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f33_local4 = ARM_R
        else
            f33_local4 = ARM_R
        end
    elseif arg3 == f33_local3 then
        if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
            f33_local4 = ARM_L
        elseif arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            f33_local4 = ARM_L
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
            f33_local4 = ARM_L
        end
    else
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF)
        return -1
    end
    return f33_local4
    
end

function CanExecArts_Immediately(arg0, arg1, arg2, arg3)
    local f34_local0 = GetArtsUsageParam(arg1, ARM_R)
    local f34_local1 = GetArtsUsageParam(arg1, ARM_L)
    local f34_local2 = GetUsageId_AA(arg1, f34_local0)
    local f34_local3 = GetUsageId_AA(arg1, f34_local1)
    local f34_local4 = 0
    if arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        if f34_local2 == arg3 then
            f34_local4 = 1
        end
    elseif arg1:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        if f34_local3 == arg3 then
            f34_local4 = 1
        end
    else
        local f34_local5 = arg1:GetArtsID(ARM_L)
        if not (f34_local5 < 300 or f34_local5 > 399) or f34_local5 == 117 or f34_local5 == 223 or f34_local5 == 701 or f34_local5 == 702 or f34_local5 == 1001 or f34_local5 == 1002 or f34_local5 == 1007 or f34_local5 == 1195 or f34_local5 == 1196 or f34_local5 == 1197 or f34_local5 >= 400 and f34_local5 <= 499 then
            if f34_local3 == arg3 then
                f34_local4 = 1
            end
        elseif f34_local2 == arg3 then
            f34_local4 = 1
        end
    end
    return f34_local4
    
end

function ArtsAction_ByCC(arg0, arg1, arg2, arg3, arg4)
    local f35_local0 = GetArtsUsageParam(arg1, arg3)
    local f35_local1 = GetUsageId_AA(arg1, f35_local0)
    local f35_local2 = GetUsageId_CC(arg1, f35_local0)
    local f35_local3 = arg4
    local f35_local4 = arg4 + 2
    local f35_local5 = arg4 + 2
    local f35_local6 = 50
    local f35_local7 = 1.8
    local f35_local8 = 2
    local f35_local9 = 0
    if f35_local1 < 20 and f35_local2 ~= 40 and f35_local2 ~= 41 then
        NPC_Approach_Act_Flex(arg1, arg2, f35_local3, f35_local4, f35_local5, f35_local6, f35_local9, f35_local7, f35_local8)
    end
    if f35_local2 == 0 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0)
    elseif f35_local2 == 10 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0)
    elseif f35_local2 == 11 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2, TARGET_ENE_0, arg4, 0, 0)
    elseif f35_local2 == 12 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0)
    elseif f35_local2 == 14 then
        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L2, TARGET_ENE_0, arg4, 0, 0)
    elseif f35_local2 == 20 then
        local f35_local10 = arg1:GetRandam_Float(1, 3.5)
        local f35_local11 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f35_local10, NPC_ATK_L2Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f35_local11:SetLifeEndSuccess(true)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    elseif f35_local2 == 30 then
        if f35_local1 == 12 then
            arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
            local f35_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, NPC_ATK_L2Hold, TARGET_ENE_0, -99, 0, 0, 0, 0)
            f35_local10:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
        else
            arg1:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
            local f35_local10 = arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, NPC_ATK_L2Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
            f35_local10:SetLifeEndSuccess(true)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
        end
    elseif f35_local2 == 40 then
        local f35_local10 = NPC_ATK_L2Hold_R1
        if arg1:GetRandam_Int(0, 1) == 1 then
            f35_local10 = NPC_ATK_L2Hold_R2
        end
        if f35_local3 < arg1:GetDist(TARGET_ENE_0) then
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, f35_local3, TARGET_ENE_0, true, NPC_ATK_L2Hold, GUARD_GOAL_DESIRE_RET_Failed, false)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L2Hold, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f35_local10, TARGET_ENE_0, arg4, 0, 0, 0, 0)
    elseif f35_local2 == 41 then
        local f35_local10 = GetArtsShotButton(arg1, arg3)
        if f35_local10 == NPC_ATK_DownHold_L2Hold then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1.5, f35_local10, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_NpcStanceAttack_WithMove, 20, TARGET_ENE_0, f35_local10, 3, 0, 0, 0, 0)
        end
    else
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L2, TARGET_ENE_0, 999, 0, 0)
    end
    
end

function GetArtsShotButton(arg0, arg1)
    local f36_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, arg1)
    local f36_local1 = arg0:GetWeaponBehaviorVarID(f36_local0)
    local f36_local2 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 0))
    local f36_local3 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Arrow, 1))
    local f36_local4 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Bolt, 0))
    local f36_local5 = arg0:GetWeaponBehaviorVarID(arg0:GetEquipArrowBoltId(TARGET_SELF, ARROW_OR_BOLT_Bolt, 1))
    local f36_local6 = GetBowType(f36_local1)
    local f36_local7 = GetArrowType(f36_local2)
    local f36_local8 = GetArrowType(f36_local3)
    local f36_local9 = GetBoltType(f36_local4)
    local f36_local10 = GetBoltType(f36_local5)
    local f36_local11 = 1
    local f36_local12 = 1
    if f36_local6 == 40 then
        if f36_local7 ~= 50 then
            f36_local11 = 0
        end
        if f36_local8 ~= 50 then
            f36_local12 = 0
        end
    elseif f36_local6 == 42 then
        if f36_local7 ~= 51 then
            f36_local11 = 0
        end
        if f36_local8 ~= 51 then
            f36_local12 = 0
        end
    elseif f36_local6 == 43 then
        if f36_local9 ~= 52 then
            f36_local11 = 0
        end
        if f36_local10 ~= 52 then
            f36_local12 = 0
        end
    elseif f36_local6 == 44 then
        if f36_local9 ~= 53 then
            f36_local11 = 0
        end
        if f36_local10 ~= 53 then
            f36_local12 = 0
        end
    end
    if f36_local11 == 1 and f36_local12 == 1 then
        if arg0:GetRandam_Int(0, 1) == 1 then
            return NPC_ATK_L2Hold_R1
        else
            return NPC_ATK_L2Hold_R2
        end
    elseif f36_local11 == 1 and f36_local12 == 0 then
        return NPC_ATK_L2Hold_R1
    elseif f36_local11 == 0 and f36_local12 == 1 then
        return NPC_ATK_L2Hold_R2
    end
    return NPC_ATK_DownHold_L2Hold
    
end

function GeneralNPC_Act01(arg0, arg1, arg2)
    local f37_local0 = arg0:GetRandam_Int(1, 100)
    local f37_local1 = arg0:GetRandam_Int(1, 100)
    local f37_local2 = arg0:GetRandam_Int(1, 100)
    local f37_local3 = arg0:GetRandam_Int(1, 100)
    local f37_local4 = arg0:GetDist(TARGET_ENE_0)
    local f37_local5 = 0
    local f37_local6 = 0
    local f37_local7 = arg0:GetNPCActProb(9020)
    local f37_local8 = arg0:GetNPCActProb(9000)
    local f37_local9 = arg0:GetNPCActProb(9030)
    local f37_local10 = NPC_ATK_R1
    local f37_local11 = 50
    local f37_local12 = arg0:GetStringIndexedNumber("R_ComboNum_R1")
    local f37_local13 = false
    local f37_local14 = false
    local f37_local15 = false
    local f37_local16 = false
    if f37_local3 <= f37_local9 then
        f37_local14 = true
        f37_local10 = NPC_ATK_L1
    elseif f37_local0 <= f37_local8 then
        f37_local15 = true
    else
        f37_local15 = false
    end
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        if f37_local14 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f37_local16 = false
        elseif f37_local15 == true then
            f37_local16 = true
        elseif f37_local4 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f37_local16 = false
        else
            f37_local16 = true
        end
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        if f37_local14 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f37_local16 = false
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            if f37_local15 == true then
                if f37_local4 >= 1 then
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
                    f37_local16 = true
                else
                    f37_local16 = false
                end
            else
                f37_local16 = false
            end
        end
    elseif f37_local14 == true then
        f37_local16 = false
    elseif f37_local15 == true then
        if f37_local4 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f37_local16 = true
        else
            f37_local16 = false
        end
    else
        f37_local16 = false
    end
    if f37_local16 == true then
        f37_local5 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_First")
        f37_local6 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_Second")
        f37_local13 = false
    else
        f37_local5 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_First")
        f37_local6 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_Second")
        if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
            f37_local13 = true
        else
            f37_local13 = false
        end
    end
    if f37_local13 == false then
        arg0:AddNPCActProb(9000)
        f37_local7 = arg0:GetNPCActProb(9020)
    end
    local f37_local17 = false
    if f37_local2 <= f37_local7 then
        f37_local17 = true
        f37_local7 = 100
    end
    local f37_local18 = f37_local5
    local f37_local19 = f37_local5 + 2
    local f37_local20 = f37_local5 + 2
    local f37_local21 = 50
    local f37_local22 = 1.8
    local f37_local23 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f37_local18, f37_local19, f37_local20, f37_local21, f37_local7, f37_local22, f37_local23)
    if f37_local5 <= f37_local4 and f37_local1 <= f37_local11 and f37_local17 == true then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 180, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if f37_local12 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
    elseif f37_local12 == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
    elseif f37_local12 == 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
    elseif f37_local12 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
    elseif f37_local12 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local5, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, f37_local10, TARGET_ENE_0, f37_local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f37_local10, TARGET_ENE_0, f37_local5, 0, 0)
    end
    arg0:SetTimer(1, 1.2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act02(arg0, arg1, arg2)
    local f38_local0 = arg0:GetRandam_Int(1, 100)
    local f38_local1 = arg0:GetRandam_Int(1, 100)
    local f38_local2 = arg0:GetRandam_Int(1, 100)
    local f38_local3 = arg0:GetDist(TARGET_ENE_0)
    local f38_local4 = 0
    local f38_local5 = 0
    local f38_local6 = arg0:GetNPCActProb(9020)
    local f38_local7 = arg0:GetNPCActProb(9010)
    local f38_local8 = 50
    local f38_local9 = arg0:GetStringIndexedNumber("R_ComboNum_R2")
    local f38_local10 = false
    local f38_local11 = false
    local f38_local12 = false
    if f38_local0 <= f38_local7 then
        f38_local11 = true
    else
        f38_local11 = false
    end
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        if f38_local11 == true then
            f38_local12 = true
        elseif f38_local3 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f38_local12 = false
        else
            f38_local12 = true
        end
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        if f38_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            if f38_local3 >= 1 then
                arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
                f38_local12 = true
            else
                f38_local12 = false
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f38_local12 = false
        end
    elseif f38_local11 == true then
        if f38_local3 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f38_local12 = true
        else
            f38_local12 = false
        end
    else
        f38_local12 = false
    end
    if f38_local12 == true then
        f38_local4 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR2_First")
        f38_local5 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR2_Second")
        f38_local10 = false
    else
        f38_local4 = arg0:GetStringIndexedNumber("R_Dist_OneHandR2_First")
        f38_local5 = arg0:GetStringIndexedNumber("R_Dist_OneHandR2_Second")
        if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
            f38_local10 = true
        else
            f38_local10 = false
        end
    end
    if f38_local10 == false then
        arg0:AddNPCActProb(9000)
        f38_local6 = arg0:GetNPCActProb(9020)
    end
    local f38_local13 = false
    if f38_local2 <= f38_local6 then
        f38_local13 = true
        f38_local6 = 100
    end
    local f38_local14 = f38_local4
    local f38_local15 = f38_local4 + 2
    local f38_local16 = f38_local4 + 2
    local f38_local17 = 50
    local f38_local18 = 1.8
    local f38_local19 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f38_local14, f38_local15, f38_local16, f38_local17, f38_local6, f38_local18, f38_local19)
    if f38_local4 <= f38_local3 and f38_local1 <= f38_local8 and f38_local13 == true then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 180, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    local f38_local20 = arg0:GetRandam_Int(1, 100)
    if f38_local9 == 2 then
        if f38_local20 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f38_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2, TARGET_ENE_0, f38_local5, 0, 0)
        elseif f38_local20 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f38_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f38_local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f38_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2, TARGET_ENE_0, f38_local5, 0, 0)
        end
    elseif f38_local20 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f38_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f38_local4, 0, 0)
    end
    arg0:SetTimer(2, 1.2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act03(arg0, arg1, arg2)
    local f39_local0 = arg0:GetRandam_Int(1, 100)
    local f39_local1 = arg0:GetRandam_Int(1, 100)
    local f39_local2 = arg0:GetRandam_Int(1, 100)
    local f39_local3 = arg0:GetRandam_Int(1, 100)
    local f39_local4 = arg0:GetDist(TARGET_ENE_0)
    local f39_local5 = arg0:GetStringIndexedNumber("R_Dist_DashR1")
    local f39_local6 = -1
    local f39_local7 = arg0:GetNPCActProb(9020)
    local f39_local8 = false
    local f39_local9 = NPC_ATK_DashR1
    local f39_local10 = arg0:GetNPCActProb(9030)
    local f39_local11 = false
    if f39_local2 <= 50 then
        f39_local9 = NPC_ATK_DashR1
        if f39_local3 <= f39_local10 then
            f39_local11 = true
            f39_local9 = NPC_ATK_DashL1
        end
    else
        f39_local9 = NPC_ATK_DashR2
    end
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        if f39_local11 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        end
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
            f39_local8 = true
        end
    elseif arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f39_local8 = true
    end
    if f39_local8 == false then
        arg0:AddNPCActProb(9000)
        f39_local7 = arg0:GetNPCActProb(9020)
    end
    if f39_local0 <= f39_local7 then
        f39_local6 = NPC_ATK_L1
    end
    arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f39_local5, TARGET_SELF, f39_local6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, f39_local9, TARGET_ENE_0, 999, 0, 0)
    
end

function GeneralNPC_Act04(arg0, arg1, arg2)
    local f40_local0 = arg0:GetDist(TARGET_ENE_0)
    local f40_local1 = arg0:GetRandam_Int(1, 100)
    local f40_local2 = arg0:GetRandam_Int(1, 100)
    local f40_local3 = arg0:GetRandam_Int(1, 100)
    local f40_local4 = false
    local f40_local5 = false
    local f40_local6 = arg0:GetStringIndexedNumber("R_Dist_RollingR1")
    local f40_local7 = arg0:GetStringIndexedNumber("R_Dist_RollingR2")
    local f40_local8 = arg0:GetNPCActProb(9030)
    local f40_local9 = arg0:GetNPCActProb(9040)
    if f40_local2 <= f40_local8 then
        f40_local4 = true
    end
    if f40_local3 <= f40_local9 then
        f40_local5 = true
        f40_local4 = false
    end
    if f40_local5 == false then
        if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R and f40_local4 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        else

        end
    end
    local f40_local10 = NPC_ATK_NONE
    local f40_local11 = NPC_ATK_UpLeft_ButtonXmark
    local f40_local12 = NPC_ATK_UpRight_ButtonXmark
    local f40_local13 = NPC_ATK_Up_ButtonXmark
    if f40_local5 == true then
        f40_local11 = NPC_ATK_UpLeft_L2
        f40_local12 = NPC_ATK_UpRight_L2
        f40_local13 = NPC_ATK_Up_L2
    end
    if f40_local0 >= 5 and SpaceCheck(arg0, arg1, 0, 5) == true then
        f40_local10 = f40_local13
    elseif SpaceCheck(arg0, arg1, -45, 5) == true then
        if SpaceCheck(arg0, arg1, 45, 5) == true then
            if f40_local1 <= 50 then
                f40_local10 = f40_local11
            else
                f40_local10 = f40_local12
            end
        else
            f40_local10 = f40_local12
        end
    elseif SpaceCheck(arg0, arg1, 45, 5) == true then
        f40_local10 = f40_local12
    else

    end
    if f40_local10 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f40_local10, TARGET_ENE_0, 999, 0, 0)
    end
    local f40_local14 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f40_local6, f40_local7, f40_local14, f40_local4)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act05(arg0, arg1, arg2)
    local f41_local0 = arg0:GetDist(TARGET_ENE_0)
    local f41_local1 = arg0:GetRandam_Int(1, 100)
    local f41_local2 = arg0:GetRandam_Int(1, 100)
    local f41_local3 = arg0:GetRandam_Int(1, 100)
    local f41_local4 = false
    local f41_local5 = false
    local f41_local6 = arg0:GetStringIndexedNumber("R_Dist_RollingR1")
    local f41_local7 = arg0:GetStringIndexedNumber("R_Dist_RollingR2")
    local f41_local8 = arg0:GetNPCActProb(9030)
    local f41_local9 = arg0:GetNPCActProb(9040)
    if f41_local2 <= f41_local8 then
        f41_local4 = true
    end
    if f41_local3 <= f41_local9 then
        f41_local5 = true
        f41_local4 = false
    end
    if f41_local5 == false then
        if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R and f41_local4 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        else

        end
    end
    local f41_local10 = NPC_ATK_NONE
    local f41_local11 = NPC_ATK_Left_ButtonXmark
    local f41_local12 = NPC_ATK_Right_ButtonXmark
    if f41_local5 == true then
        f41_local11 = NPC_ATK_Left_L2
        f41_local12 = NPC_ATK_Right_L2
    end
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if f41_local1 <= 50 then
                f41_local10 = f41_local11
            else
                f41_local10 = f41_local12
            end
        else
            f41_local10 = f41_local11
        end
    elseif SpaceCheck(arg0, arg1, 90, 5) == true then
        f41_local10 = f41_local12
    else

    end
    if f41_local10 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f41_local10, TARGET_ENE_0, 999, 0, 0)
    end
    local f41_local13 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f41_local6, f41_local7, f41_local13, f41_local4)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act06(arg0, arg1, arg2)
    local f42_local0 = arg0:GetDist(TARGET_ENE_0)
    local f42_local1 = arg0:GetRandam_Int(1, 100)
    local f42_local2 = arg0:GetRandam_Int(1, 100)
    local f42_local3 = arg0:GetRandam_Int(1, 100)
    local f42_local4 = false
    local f42_local5 = false
    local f42_local6 = arg0:GetStringIndexedNumber("R_Dist_RollingR1")
    local f42_local7 = arg0:GetStringIndexedNumber("R_Dist_RollingR2")
    local f42_local8 = arg0:GetNPCActProb(9030)
    local f42_local9 = arg0:GetNPCActProb(9040)
    if f42_local2 <= f42_local8 then
        f42_local4 = true
    end
    if f42_local3 <= f42_local9 then
        f42_local5 = true
        f42_local4 = false
    end
    if f42_local5 == false then
        if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R and f42_local4 == true then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        else

        end
    end
    local f42_local10 = NPC_ATK_NONE
    local f42_local11 = NPC_ATK_DownLeft_ButtonXmark
    local f42_local12 = NPC_ATK_DownRight_ButtonXmark
    local f42_local13 = NPC_ATK_Down_ButtonXmark
    if f42_local5 == true then
        f42_local11 = NPC_ATK_DownLeft_L2
        f42_local12 = NPC_ATK_DownRight_L2
        f42_local13 = NPC_ATK_Down_L2
    end
    if f42_local0 <= 1 and SpaceCheck(arg0, arg1, 180, 5) == true then
        f42_local10 = f42_local13
    elseif SpaceCheck(arg0, arg1, -135, 5) == true then
        if SpaceCheck(arg0, arg1, 135, 5) == true then
            if f42_local1 <= 50 then
                f42_local10 = f42_local11
            else
                f42_local10 = f42_local12
            end
        else
            f42_local10 = f42_local11
        end
    elseif SpaceCheck(arg0, arg1, 135, 5) == true then
        f42_local10 = f42_local12
    else

    end
    if f42_local10 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f42_local10, TARGET_ENE_0, 999, 0, 0)
    end
    local f42_local14 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f42_local6, f42_local7, f42_local14, f42_local4)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act07(arg0, arg1, arg2)
    local f43_local0 = arg0:GetDist(TARGET_ENE_0)
    local f43_local1 = arg0:GetRandam_Int(1, 100)
    local f43_local2 = arg0:GetRandam_Int(1, 100)
    local f43_local3 = false
    local f43_local4 = arg0:GetStringIndexedNumber("R_Dist_BackStepR1")
    local f43_local5 = arg0:GetStringIndexedNumber("R_Dist_BackStepR2")
    local f43_local6 = arg0:GetNPCActProb(9030)
    if f43_local2 <= f43_local6 then
        f43_local3 = true
    end
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R and f43_local3 == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else

    end
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    local f43_local7 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f43_local4, f43_local5, f43_local7, f43_local3)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act08(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else

    end
    local f44_local0 = 4
    local f44_local1 = 0
    local f44_local2 = 4
    local f44_local3 = 100
    local f44_local4 = 0
    local f44_local5 = 1.8
    local f44_local6 = 2
    local f44_local7 = 0
    local f44_local8 = false
    local f44_local9 = NPC_ATK_R2
    local f44_local10 = arg0:GetNPCActProb(9030)
    local f44_local11 = arg0:GetRandam_Int(1, 100)
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f44_local8 = true
    else
        f44_local8 = false
    end
    if f44_local8 == false then
        arg0:AddNPCActProb(9000)
        f44_local7 = arg0:GetNPCActProb(9020)
    end
    if GetDualAttackType(arg0, arg1) == 1 and f44_local11 <= f44_local10 then
        f44_local9 = NPC_ATK_L1
    end
    NPC_Approach_Act_Flex(arg0, arg1, f44_local0, f44_local1, f44_local2, f44_local3, f44_local7, f44_local5, f44_local6)
    local f44_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_Up_Jump, TARGET_ENE_0, 999, 0, 90)
    f44_local12:SetLifeEndSuccess(true)
    f44_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f44_local9, TARGET_ENE_0, 999, 0, 90)
    f44_local12:SetLifeEndSuccess(true)
    
end

function GeneralNPC_Act09(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else

    end
    local f45_local0 = 6.8
    local f45_local1 = 0
    local f45_local2 = false
    local f45_local3 = arg0:GetRandam_Int(1, 100)
    local f45_local4 = arg0:GetRandam_Int(1, 100)
    local f45_local5 = arg0:GetNPCActProb(9030)
    local f45_local6 = NPC_ATK_R2
    if GetDualAttackType(arg0, arg1) == 1 and f45_local4 <= f45_local5 then
        f45_local6 = NPC_ATK_L1
    end
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f45_local2 = true
    else
        f45_local2 = false
    end
    if f45_local2 == false then
        arg0:AddNPCActProb(9000)
        f45_local1 = arg0:GetNPCActProb(9020)
    end
    if f45_local3 <= f45_local1 then
        ATK_Guard = NPC_ATK_L1
    end
    arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f45_local0, TARGET_SELF, ATK_Guard)
    local f45_local7 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_UpHold_ButtonXmarkHold, TARGET_ENE_0, 999, 0, 90)
    f45_local7:SetLifeEndSuccess(true)
    f45_local7 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_Dash_Jump, TARGET_ENE_0, 999, 0, 90)
    f45_local7:SetLifeEndSuccess(true)
    f45_local7 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f45_local6, TARGET_ENE_0, 999, 0, 90)
    f45_local7:SetLifeEndSuccess(true)
    
end

function GeneralNPC_Act11(arg0, arg1, arg2)
    local f46_local0 = 10
    local f46_local1 = arg0:GetRandam_Int(1, 100)
    local f46_local2 = arg0:GetDist(TARGET_ENE_0)
    local f46_local3 = 90
    local f46_local4 = GetBowType(arg0:GetWeaponBehaviorVarID(arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)))
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        if f46_local4 ~= 43 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f46_local4 ~= 43 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f46_local5 = 0
    local f46_local6 = 30
    local f46_local7 = 0
    local f46_local8 = 30
    local f46_local9 = 50
    local f46_local10 = 1.8
    local f46_local11 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f46_local6, f46_local7, f46_local8, f46_local9, f46_local5, f46_local10, f46_local11)
    if f46_local4 == 43 then
        local f46_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
        f46_local12:SetTargetRange(0, 2.5, 999)
    end
    local f46_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1Hold, TARGET_ENE_0, 999, 0, 0)
    f46_local12:SetTargetRange(0, 2.5, 999)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act12(arg0, arg1, arg2)
    local f47_local0 = 10
    local f47_local1 = arg0:GetRandam_Int(1, 100)
    local f47_local2 = arg0:GetDist(TARGET_ENE_0)
    local f47_local3 = 90
    local f47_local4 = GetBowType(arg0:GetWeaponBehaviorVarID(arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)))
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        if f47_local4 ~= 43 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        end
    elseif f47_local4 ~= 43 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f47_local5 = 0
    local f47_local6 = 30
    local f47_local7 = 0
    local f47_local8 = 30
    local f47_local9 = 50
    local f47_local10 = 1.8
    local f47_local11 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f47_local6, f47_local7, f47_local8, f47_local9, f47_local5, f47_local10, f47_local11)
    if f47_local4 == 43 then
        local f47_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 0)
        f47_local12:SetTargetRange(0, 2.5, 999)
    end
    local f47_local12 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2Hold, TARGET_ENE_0, 999, 0, 0)
    f47_local12:SetTargetRange(0, 2.5, 999)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act21(arg0, arg1, arg2)
    local f48_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f48_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f48_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f48_local1)
    local f48_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f48_local3 = arg0:GetAIUsageParam(0, f48_local1)
    local f48_local4 = GetUsageId_CC(arg0, f48_local3)
    arg0:ChangeEquipMagicByMagicParamId(f48_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f48_local5 = f48_local2
    local f48_local6 = f48_local2
    local f48_local7 = f48_local2 + 6
    local f48_local8 = 0
    local f48_local9 = 0
    local f48_local10 = 1.8
    local f48_local11 = 2
    local f48_local12 = arg0:GetNPCActProb(9020)
    local f48_local13 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f48_local13 = true
    else
        f48_local13 = false
    end
    if f48_local13 == false then
        arg0:AddNPCActProb(9000)
        f48_local12 = arg0:GetNPCActProb(9020)
    end
    NPC_Approach_Act_Flex(arg0, arg1, f48_local5, f48_local6, f48_local7, f48_local8, f48_local12, f48_local10, f48_local11)
    if f48_local4 == 1 then
        local f48_local14 = arg0:GetRandam_Int(1, 100)
        local f48_local15 = 20
        local f48_local16 = 30
        local f48_local17 = 30
        local f48_local18 = 20
        local f48_local19 = 0
        local f48_local20 = 0
        local f48_local21 = 0
        local f48_local22 = 1
        if f48_local14 <= f48_local15 then
            f48_local22 = 2
        elseif f48_local14 <= f48_local15 + f48_local16 then
            f48_local22 = 3
        elseif f48_local14 <= f48_local15 + f48_local16 + f48_local17 then
            f48_local22 = 4
        elseif f48_local14 <= f48_local15 + f48_local16 + f48_local17 + f48_local18 then
            f48_local22 = 5
        elseif f48_local14 <= f48_local15 + f48_local16 + f48_local17 + f48_local18 + f48_local19 then
            f48_local22 = 6
        elseif f48_local14 <= f48_local15 + f48_local16 + f48_local17 + f48_local18 + f48_local19 + f48_local20 then
            f48_local22 = 7
        elseif f48_local14 <= f48_local15 + f48_local16 + f48_local17 + f48_local18 + f48_local19 + f48_local20 + f48_local21 then
            f48_local22 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_R1, -1, TARGET_ENE_0, f48_local2, AI_DIR_TYPE_F, -1, f48_local22, 2, 0, 0, -1, -1)
    elseif f48_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f48_local14 = arg0:GetRandam_Float(1, 2.2)
        local f48_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f48_local14, NPC_ATK_Up_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f48_local15:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_R1, TARGET_ENE_0, f48_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 7, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act22(arg0, arg1, arg2)
    local f49_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f49_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f49_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f49_local1)
    local f49_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f49_local3 = arg0:GetAIUsageParam(0, f49_local1)
    local f49_local4 = GetUsageId_CC(arg0, f49_local3)
    arg0:ChangeEquipMagicByMagicParamId(f49_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f49_local4 == 1 then
        local f49_local5 = arg0:GetRandam_Int(1, 100)
        local f49_local6 = 20
        local f49_local7 = 30
        local f49_local8 = 30
        local f49_local9 = 20
        local f49_local10 = 0
        local f49_local11 = 0
        local f49_local12 = 0
        local f49_local13 = 1
        if f49_local5 <= f49_local6 then
            f49_local13 = 2
        elseif f49_local5 <= f49_local6 + f49_local7 then
            f49_local13 = 3
        elseif f49_local5 <= f49_local6 + f49_local7 + f49_local8 then
            f49_local13 = 4
        elseif f49_local5 <= f49_local6 + f49_local7 + f49_local8 + f49_local9 then
            f49_local13 = 5
        elseif f49_local5 <= f49_local6 + f49_local7 + f49_local8 + f49_local9 + f49_local10 then
            f49_local13 = 6
        elseif f49_local5 <= f49_local6 + f49_local7 + f49_local8 + f49_local9 + f49_local10 + f49_local11 then
            f49_local13 = 7
        elseif f49_local5 <= f49_local6 + f49_local7 + f49_local8 + f49_local9 + f49_local10 + f49_local11 + f49_local12 then
            f49_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f49_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f49_local13, 2, 0, 0, -1, -1)
    elseif f49_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f49_local5 = arg0:GetRandam_Float(1, 2.2)
        local f49_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f49_local5, NPC_ATK_Left_R1Hold, NPC_ATK_Right_R1Hold, TARGET_ENE_0, f49_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f49_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f49_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 7, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act23(arg0, arg1, arg2)
    local f50_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f50_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f50_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f50_local1)
    local f50_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f50_local3 = arg0:GetAIUsageParam(0, f50_local1)
    local f50_local4 = GetUsageId_CC(arg0, f50_local3)
    arg0:ChangeEquipMagicByMagicParamId(f50_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f50_local4 == 1 then
        local f50_local5 = arg0:GetRandam_Int(1, 100)
        local f50_local6 = 20
        local f50_local7 = 30
        local f50_local8 = 30
        local f50_local9 = 20
        local f50_local10 = 0
        local f50_local11 = 0
        local f50_local12 = 0
        local f50_local13 = 1
        if f50_local5 <= f50_local6 then
            f50_local13 = 2
        elseif f50_local5 <= f50_local6 + f50_local7 then
            f50_local13 = 3
        elseif f50_local5 <= f50_local6 + f50_local7 + f50_local8 then
            f50_local13 = 4
        elseif f50_local5 <= f50_local6 + f50_local7 + f50_local8 + f50_local9 then
            f50_local13 = 5
        elseif f50_local5 <= f50_local6 + f50_local7 + f50_local8 + f50_local9 + f50_local10 then
            f50_local13 = 6
        elseif f50_local5 <= f50_local6 + f50_local7 + f50_local8 + f50_local9 + f50_local10 + f50_local11 then
            f50_local13 = 7
        elseif f50_local5 <= f50_local6 + f50_local7 + f50_local8 + f50_local9 + f50_local10 + f50_local11 + f50_local12 then
            f50_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_R1, -1, TARGET_ENE_0, f50_local2, AI_DIR_TYPE_B, -1, f50_local13, 2, 0, 0, -1, -1)
    elseif f50_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f50_local5 = arg0:GetRandam_Float(1, 2.2)
        local f50_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f50_local5, NPC_ATK_Down_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f50_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_R1, TARGET_ENE_0, f50_local2, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act24(arg0, arg1, arg2)
    local f51_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f51_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f51_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f51_local1)
    local f51_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f51_local3 = arg0:GetAIUsageParam(0, f51_local1)
    local f51_local4 = GetUsageId_CC(arg0, f51_local3)
    arg0:ChangeEquipMagicByMagicParamId(f51_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f51_local5 = f51_local2
    local f51_local6 = f51_local2
    local f51_local7 = f51_local2 + 6
    local f51_local8 = 0
    local f51_local9 = 0
    local f51_local10 = 1.8
    local f51_local11 = 2
    local f51_local12 = arg0:GetNPCActProb(9020)
    local f51_local13 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f51_local13 = true
    else
        f51_local13 = false
    end
    if f51_local13 == false then
        arg0:AddNPCActProb(9000)
        f51_local12 = arg0:GetNPCActProb(9020)
    end
    NPC_Approach_Act_Flex(arg0, arg1, f51_local5, f51_local6, f51_local7, f51_local8, f51_local12, f51_local10, f51_local11)
    if f51_local4 == 1 then
        local f51_local14 = arg0:GetRandam_Int(1, 100)
        local f51_local15 = 20
        local f51_local16 = 30
        local f51_local17 = 30
        local f51_local18 = 20
        local f51_local19 = 0
        local f51_local20 = 0
        local f51_local21 = 0
        local f51_local22 = 1
        if f51_local14 <= f51_local15 then
            f51_local22 = 2
        elseif f51_local14 <= f51_local15 + f51_local16 then
            f51_local22 = 3
        elseif f51_local14 <= f51_local15 + f51_local16 + f51_local17 then
            f51_local22 = 4
        elseif f51_local14 <= f51_local15 + f51_local16 + f51_local17 + f51_local18 then
            f51_local22 = 5
        elseif f51_local14 <= f51_local15 + f51_local16 + f51_local17 + f51_local18 + f51_local19 then
            f51_local22 = 6
        elseif f51_local14 <= f51_local15 + f51_local16 + f51_local17 + f51_local18 + f51_local19 + f51_local20 then
            f51_local22 = 7
        elseif f51_local14 <= f51_local15 + f51_local16 + f51_local17 + f51_local18 + f51_local19 + f51_local20 + f51_local21 then
            f51_local22 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_R1, -1, TARGET_ENE_0, f51_local2, AI_DIR_TYPE_F, -1, f51_local22, 2, 0, 0, -1, -1)
    elseif f51_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f51_local14 = arg0:GetRandam_Float(1, 2.2)
        local f51_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f51_local14, NPC_ATK_Up_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f51_local15:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_R1, TARGET_ENE_0, f51_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act25(arg0, arg1, arg2)
    local f52_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f52_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f52_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f52_local1)
    local f52_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f52_local3 = arg0:GetAIUsageParam(0, f52_local1)
    local f52_local4 = GetUsageId_CC(arg0, f52_local3)
    arg0:ChangeEquipMagicByMagicParamId(f52_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f52_local4 == 1 then
        local f52_local5 = arg0:GetRandam_Int(1, 100)
        local f52_local6 = 20
        local f52_local7 = 30
        local f52_local8 = 30
        local f52_local9 = 20
        local f52_local10 = 0
        local f52_local11 = 0
        local f52_local12 = 0
        local f52_local13 = 1
        if f52_local5 <= f52_local6 then
            f52_local13 = 2
        elseif f52_local5 <= f52_local6 + f52_local7 then
            f52_local13 = 3
        elseif f52_local5 <= f52_local6 + f52_local7 + f52_local8 then
            f52_local13 = 4
        elseif f52_local5 <= f52_local6 + f52_local7 + f52_local8 + f52_local9 then
            f52_local13 = 5
        elseif f52_local5 <= f52_local6 + f52_local7 + f52_local8 + f52_local9 + f52_local10 then
            f52_local13 = 6
        elseif f52_local5 <= f52_local6 + f52_local7 + f52_local8 + f52_local9 + f52_local10 + f52_local11 then
            f52_local13 = 7
        elseif f52_local5 <= f52_local6 + f52_local7 + f52_local8 + f52_local9 + f52_local10 + f52_local11 + f52_local12 then
            f52_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f52_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f52_local13, 2, 0, 0, -1, -1)
    elseif f52_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f52_local5 = arg0:GetRandam_Float(1, 2.2)
        local f52_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f52_local5, NPC_ATK_Left_R1Hold, NPC_ATK_Right_R1Hold, TARGET_ENE_0, f52_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f52_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f52_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act26(arg0, arg1, arg2)
    local f53_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f53_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f53_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f53_local1)
    local f53_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f53_local3 = arg0:GetAIUsageParam(0, f53_local1)
    local f53_local4 = GetUsageId_CC(arg0, f53_local3)
    arg0:ChangeEquipMagicByMagicParamId(f53_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f53_local4 == 1 then
        local f53_local5 = arg0:GetRandam_Int(1, 100)
        local f53_local6 = 20
        local f53_local7 = 30
        local f53_local8 = 30
        local f53_local9 = 20
        local f53_local10 = 0
        local f53_local11 = 0
        local f53_local12 = 0
        local f53_local13 = 1
        if f53_local5 <= f53_local6 then
            f53_local13 = 2
        elseif f53_local5 <= f53_local6 + f53_local7 then
            f53_local13 = 3
        elseif f53_local5 <= f53_local6 + f53_local7 + f53_local8 then
            f53_local13 = 4
        elseif f53_local5 <= f53_local6 + f53_local7 + f53_local8 + f53_local9 then
            f53_local13 = 5
        elseif f53_local5 <= f53_local6 + f53_local7 + f53_local8 + f53_local9 + f53_local10 then
            f53_local13 = 6
        elseif f53_local5 <= f53_local6 + f53_local7 + f53_local8 + f53_local9 + f53_local10 + f53_local11 then
            f53_local13 = 7
        elseif f53_local5 <= f53_local6 + f53_local7 + f53_local8 + f53_local9 + f53_local10 + f53_local11 + f53_local12 then
            f53_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_R1, -1, TARGET_ENE_0, f53_local2, AI_DIR_TYPE_B, -1, f53_local13, 2, 0, 0, -1, -1)
    elseif f53_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f53_local5 = arg0:GetRandam_Float(1, 2.2)
        local f53_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f53_local5, NPC_ATK_Down_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f53_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_R1, TARGET_ENE_0, f53_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act27(arg0, arg1, arg2)
    local f54_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f54_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f54_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f54_local1)
    local f54_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f54_local3 = arg0:GetAIUsageParam(0, f54_local1)
    local f54_local4 = GetUsageId_CC(arg0, f54_local3)
    arg0:ChangeEquipMagicByMagicParamId(f54_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f54_local5 = f54_local2
    local f54_local6 = f54_local2
    local f54_local7 = f54_local2 + 6
    local f54_local8 = 0
    local f54_local9 = 0
    local f54_local10 = 1.8
    local f54_local11 = 2
    local f54_local12 = arg0:GetNPCActProb(9020)
    local f54_local13 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f54_local13 = true
    else
        f54_local13 = false
    end
    if f54_local13 == false then
        arg0:AddNPCActProb(9000)
        f54_local12 = arg0:GetNPCActProb(9020)
    end
    NPC_Approach_Act_Flex(arg0, arg1, f54_local5, f54_local6, f54_local7, f54_local8, f54_local12, f54_local10, f54_local11)
    if f54_local4 == 1 then
        local f54_local14 = arg0:GetRandam_Int(1, 100)
        local f54_local15 = 20
        local f54_local16 = 30
        local f54_local17 = 30
        local f54_local18 = 20
        local f54_local19 = 0
        local f54_local20 = 0
        local f54_local21 = 0
        local f54_local22 = 1
        if f54_local14 <= f54_local15 then
            f54_local22 = 2
        elseif f54_local14 <= f54_local15 + f54_local16 then
            f54_local22 = 3
        elseif f54_local14 <= f54_local15 + f54_local16 + f54_local17 then
            f54_local22 = 4
        elseif f54_local14 <= f54_local15 + f54_local16 + f54_local17 + f54_local18 then
            f54_local22 = 5
        elseif f54_local14 <= f54_local15 + f54_local16 + f54_local17 + f54_local18 + f54_local19 then
            f54_local22 = 6
        elseif f54_local14 <= f54_local15 + f54_local16 + f54_local17 + f54_local18 + f54_local19 + f54_local20 then
            f54_local22 = 7
        elseif f54_local14 <= f54_local15 + f54_local16 + f54_local17 + f54_local18 + f54_local19 + f54_local20 + f54_local21 then
            f54_local22 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_R1, -1, TARGET_ENE_0, f54_local2, AI_DIR_TYPE_F, -1, f54_local22, 2, 0, 0, -1, -1)
    elseif f54_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f54_local14 = arg0:GetRandam_Float(1, 2.2)
        local f54_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f54_local14, NPC_ATK_Up_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f54_local15:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_R1, TARGET_ENE_0, f54_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act28(arg0, arg1, arg2)
    local f55_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f55_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f55_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f55_local1)
    local f55_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f55_local3 = arg0:GetAIUsageParam(0, f55_local1)
    local f55_local4 = GetUsageId_CC(arg0, f55_local3)
    arg0:ChangeEquipMagicByMagicParamId(f55_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f55_local4 == 1 then
        local f55_local5 = arg0:GetRandam_Int(1, 100)
        local f55_local6 = 20
        local f55_local7 = 30
        local f55_local8 = 30
        local f55_local9 = 20
        local f55_local10 = 0
        local f55_local11 = 0
        local f55_local12 = 0
        local f55_local13 = 1
        if f55_local5 <= f55_local6 then
            f55_local13 = 2
        elseif f55_local5 <= f55_local6 + f55_local7 then
            f55_local13 = 3
        elseif f55_local5 <= f55_local6 + f55_local7 + f55_local8 then
            f55_local13 = 4
        elseif f55_local5 <= f55_local6 + f55_local7 + f55_local8 + f55_local9 then
            f55_local13 = 5
        elseif f55_local5 <= f55_local6 + f55_local7 + f55_local8 + f55_local9 + f55_local10 then
            f55_local13 = 6
        elseif f55_local5 <= f55_local6 + f55_local7 + f55_local8 + f55_local9 + f55_local10 + f55_local11 then
            f55_local13 = 7
        elseif f55_local5 <= f55_local6 + f55_local7 + f55_local8 + f55_local9 + f55_local10 + f55_local11 + f55_local12 then
            f55_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f55_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f55_local13, 2, 0, 0, -1, -1)
    elseif f55_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f55_local5 = arg0:GetRandam_Float(1, 2.2)
        local f55_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f55_local5, NPC_ATK_Left_R1Hold, NPC_ATK_Right_R1Hold, TARGET_ENE_0, f55_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f55_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_R1, NPC_ATK_Right_R1, TARGET_ENE_0, f55_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act29(arg0, arg1, arg2)
    local f56_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f56_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f56_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f56_local1)
    local f56_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f56_local3 = arg0:GetAIUsageParam(0, f56_local1)
    local f56_local4 = GetUsageId_CC(arg0, f56_local3)
    arg0:ChangeEquipMagicByMagicParamId(f56_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f56_local4 == 1 then
        local f56_local5 = arg0:GetRandam_Int(1, 100)
        local f56_local6 = 20
        local f56_local7 = 30
        local f56_local8 = 30
        local f56_local9 = 20
        local f56_local10 = 0
        local f56_local11 = 0
        local f56_local12 = 0
        local f56_local13 = 1
        if f56_local5 <= f56_local6 then
            f56_local13 = 2
        elseif f56_local5 <= f56_local6 + f56_local7 then
            f56_local13 = 3
        elseif f56_local5 <= f56_local6 + f56_local7 + f56_local8 then
            f56_local13 = 4
        elseif f56_local5 <= f56_local6 + f56_local7 + f56_local8 + f56_local9 then
            f56_local13 = 5
        elseif f56_local5 <= f56_local6 + f56_local7 + f56_local8 + f56_local9 + f56_local10 then
            f56_local13 = 6
        elseif f56_local5 <= f56_local6 + f56_local7 + f56_local8 + f56_local9 + f56_local10 + f56_local11 then
            f56_local13 = 7
        elseif f56_local5 <= f56_local6 + f56_local7 + f56_local8 + f56_local9 + f56_local10 + f56_local11 + f56_local12 then
            f56_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_R1, -1, TARGET_ENE_0, f56_local2, AI_DIR_TYPE_B, -1, f56_local13, 2, 0, 0, -1, -1)
    elseif f56_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f56_local5 = arg0:GetRandam_Float(1, 2.2)
        local f56_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f56_local5, NPC_ATK_Down_R1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f56_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_R1, TARGET_ENE_0, f56_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act30(arg0, arg1, arg2)
    local f57_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f57_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 20, f57_local0)
    arg0:ChangeEquipMagicByMagicParamId(f57_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f57_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    f57_local2:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    
end

function GeneralNPC_Act31(arg0, arg1, arg2)
    local f58_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_R)
    local f58_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 30, f58_local0)
    arg0:ChangeEquipMagicByMagicParamId(f58_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f58_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_R1, TARGET_ENE_0, 999, 0, 0)
    f58_local2:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    
end

function GeneralNPC_Act35(arg0, arg1, arg2)
    
end

function GeneralNPC_Act36(arg0, arg1, arg2)
    
end

function GeneralNPC_Act41(arg0, arg1, arg2)
    local f61_local0 = arg0:GetRandam_Int(1, 100)
    local f61_local1 = arg0:GetRandam_Int(1, 100)
    local f61_local2 = arg0:GetRandam_Int(1, 100)
    local f61_local3 = arg0:GetDist(TARGET_ENE_0)
    local f61_local4 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR1_First")
    local f61_local5 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR1_Second")
    local f61_local6 = 50
    local f61_local7 = arg0:GetStringIndexedNumber("L_ComboNum_R1")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    local f61_local8 = arg0:GetNPCActProb(9020)
    local f61_local9 = false
    arg0:AddNPCActProb(9000)
    f61_local8 = arg0:GetNPCActProb(9020)
    local f61_local10 = false
    if f61_local2 <= f61_local8 then
        f61_local10 = true
        f61_local8 = 100
    end
    local f61_local11 = f61_local4
    local f61_local12 = f61_local4 + 2
    local f61_local13 = f61_local4 + 2
    local f61_local14 = 50
    local f61_local15 = 1.8
    local f61_local16 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f61_local11, f61_local12, f61_local13, f61_local14, f61_local8, f61_local15, f61_local16)
    if f61_local4 <= f61_local3 and f61_local1 <= f61_local6 and f61_local10 == true then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 180, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    if f61_local7 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
    elseif f61_local7 == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
    elseif f61_local7 == 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
    elseif f61_local7 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
    elseif f61_local7 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local5, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f61_local4, 0, 0)
    end
    arg0:SetTimer(3, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act42(arg0, arg1, arg2)
    local f62_local0 = arg0:GetRandam_Int(1, 100)
    local f62_local1 = arg0:GetRandam_Int(1, 100)
    local f62_local2 = arg0:GetRandam_Int(1, 100)
    local f62_local3 = arg0:GetDist(TARGET_ENE_0)
    local f62_local4 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR2_First")
    local f62_local5 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR2_Second")
    local f62_local6 = 100
    local f62_local7 = 50
    local f62_local8 = arg0:GetStringIndexedNumber("L_ComboNum_R1")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    local f62_local9 = arg0:GetNPCActProb(9020)
    arg0:AddNPCActProb(9000)
    f62_local9 = arg0:GetNPCActProb(9020)
    local f62_local10 = f62_local4
    local f62_local11 = f62_local4 + 2
    local f62_local12 = f62_local4 + 2
    local f62_local13 = 50
    local f62_local14 = 1.8
    local f62_local15 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f62_local10, f62_local11, f62_local12, f62_local13, f62_local9, f62_local14, f62_local15)
    if f62_local4 <= f62_local3 and f62_local1 <= f62_local7 and UseGuard == true then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 180, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    local f62_local16 = arg0:GetRandam_Int(1, 100)
    if f62_local8 == 2 then
        if f62_local16 <= 80 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f62_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2, TARGET_ENE_0, f62_local5, 0, 0)
        elseif f62_local16 <= 90 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f62_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f62_local5, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f62_local4, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_R2, TARGET_ENE_0, f62_local5, 0, 0)
        end
    elseif f62_local16 <= 80 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R2, TARGET_ENE_0, f62_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R2Hold, TARGET_ENE_0, f62_local4, 0, 0)
    end
    arg0:SetTimer(4, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act43(arg0, arg1, arg2)
    local f63_local0 = arg0:GetDist(TARGET_ENE_0)
    local f63_local1 = arg0:GetStringIndexedNumber("L_Dist_OneHandL2")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else

    end
    local f63_local2 = arg0:GetNPCActProb(9020)
    arg0:AddNPCActProb(9000)
    f63_local2 = arg0:GetNPCActProb(9020)
    local f63_local3 = f63_local1
    local f63_local4 = f63_local1 + 2
    local f63_local5 = f63_local1 + 2
    local f63_local6 = 50
    local f63_local7 = 1.8
    local f63_local8 = 2
    local f63_local9 = arg0:GetStringIndexedNumber("R_ComboNum_R1")
    NPC_Approach_Act_Flex(arg0, arg1, f63_local3, f63_local4, f63_local5, f63_local6, f63_local2, f63_local7, f63_local8)
    if f63_local9 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1, TARGET_ENE_0, f63_local1, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
    elseif f63_local9 == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1, TARGET_ENE_0, f63_local1, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
    elseif f63_local9 == 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
    elseif f63_local9 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1, TARGET_ENE_0, f63_local1, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
    elseif f63_local9 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1, TARGET_ENE_0, f63_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1, TARGET_ENE_0, AttDist_Second, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L1, TARGET_ENE_0, f63_local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act44(arg0, arg1, arg2)
    local f64_local0 = arg0:GetRandam_Int(1, 100)
    local f64_local1 = arg0:GetRandam_Int(1, 100)
    local f64_local2 = arg0:GetRandam_Int(1, 100)
    local f64_local3 = arg0:GetDist(TARGET_ENE_0)
    local f64_local4 = arg0:GetStringIndexedNumber("L_Dist_DashR1")
    local f64_local5 = -1
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    local f64_local6 = arg0:GetNPCActProb(9020)
    local f64_local7 = false
    arg0:AddNPCActProb(9000)
    if f64_local0 <= arg0:GetNPCActProb(9020) then
        f64_local5 = NPC_ATK_L1
    end
    if f64_local2 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f64_local4, TARGET_SELF, f64_local5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_DashR1, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f64_local4, TARGET_SELF, f64_local5)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_DashR2, TARGET_ENE_0, 999, 0, 0)
    end
    
end

function GeneralNPC_Act45(arg0, arg1, arg2)
    local f65_local0 = arg0:GetDist(TARGET_ENE_0)
    local f65_local1 = arg0:GetRandam_Int(1, 100)
    local f65_local2 = arg0:GetRandam_Int(1, 100)
    local f65_local3 = arg0:GetStringIndexedNumber("L_Dist_RollingR1")
    local f65_local4 = arg0:GetStringIndexedNumber("L_Dist_RollingR2")
    local f65_local5 = false
    local f65_local6 = arg0:GetNPCActProb(9040)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    if f65_local2 <= f65_local6 then
        f65_local5 = true
    end
    local f65_local7 = NPC_ATK_NONE
    local f65_local8 = NPC_ATK_UpLeft_ButtonXmark
    local f65_local9 = NPC_ATK_UpRight_ButtonXmark
    local f65_local10 = NPC_ATK_Up_ButtonXmark
    if f65_local5 == true then
        f65_local8 = NPC_ATK_UpLeft_L2
        f65_local9 = NPC_ATK_UpRight_L2
        f65_local10 = NPC_ATK_Up_L2
    end
    if f65_local0 >= 5 and SpaceCheck(arg0, arg1, 0, 5) == true then
        f65_local7 = f65_local10
    elseif SpaceCheck(arg0, arg1, -45, 5) == true then
        if SpaceCheck(arg0, arg1, 45, 5) == true then
            if f65_local1 <= 50 then
                f65_local7 = f65_local8
            else
                f65_local7 = f65_local9
            end
        else
            f65_local7 = f65_local9
        end
    elseif SpaceCheck(arg0, arg1, 45, 5) == true then
        f65_local7 = f65_local9
    else

    end
    if f65_local7 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f65_local7, TARGET_ENE_0, 999, 0, 0)
    end
    local f65_local11 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f65_local3, f65_local4, f65_local11)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act46(arg0, arg1, arg2)
    local f66_local0 = arg0:GetDist(TARGET_ENE_0)
    local f66_local1 = arg0:GetRandam_Int(1, 100)
    local f66_local2 = arg0:GetRandam_Int(1, 100)
    local f66_local3 = arg0:GetStringIndexedNumber("L_Dist_RollingR1")
    local f66_local4 = arg0:GetStringIndexedNumber("L_Dist_RollingR2")
    local f66_local5 = false
    local f66_local6 = arg0:GetNPCActProb(9040)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    if f66_local2 <= f66_local6 then
        f66_local5 = true
    end
    local f66_local7 = NPC_ATK_NONE
    local f66_local8 = NPC_ATK_Left_ButtonXmark
    local f66_local9 = NPC_ATK_Right_ButtonXmark
    if f66_local5 == true then
        f66_local8 = NPC_ATK_Left_L2
        f66_local9 = NPC_ATK_Right_L2
    end
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if f66_local1 <= 50 then
                f66_local7 = f66_local8
            else
                f66_local7 = f66_local9
            end
        else
            f66_local7 = f66_local8
        end
    elseif SpaceCheck(arg0, arg1, 90, 5) == true then
        f66_local7 = f66_local9
    else

    end
    if f66_local7 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f66_local7, TARGET_ENE_0, 999, 0, 0)
    end
    local f66_local10 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f66_local3, f66_local4, f66_local10)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act47(arg0, arg1, arg2)
    local f67_local0 = arg0:GetDist(TARGET_ENE_0)
    local f67_local1 = arg0:GetRandam_Int(1, 100)
    local f67_local2 = arg0:GetRandam_Int(1, 100)
    local f67_local3 = arg0:GetStringIndexedNumber("L_Dist_RollingR1")
    local f67_local4 = arg0:GetStringIndexedNumber("L_Dist_RollingR2")
    local f67_local5 = false
    local f67_local6 = arg0:GetNPCActProb(9040)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    if f67_local2 <= f67_local6 then
        f67_local5 = true
    end
    local f67_local7 = NPC_ATK_NONE
    local f67_local8 = NPC_ATK_DownLeft_ButtonXmark
    local f67_local9 = NPC_ATK_DownRight_ButtonXmark
    local f67_local10 = NPC_ATK_Down_ButtonXmark
    if f67_local5 == true then
        f67_local8 = NPC_ATK_DownLeft_L2
        f67_local9 = NPC_ATK_DownRight_L2
        f67_local10 = NPC_ATK_Down_L2
    end
    if f67_local0 <= 1 and SpaceCheck(arg0, arg1, 180, 5) == true then
        f67_local7 = f67_local10
    elseif SpaceCheck(arg0, arg1, -135, 5) == true then
        if SpaceCheck(arg0, arg1, 135, 5) == true then
            if f67_local1 <= 50 then
                f67_local7 = f67_local8
            else
                f67_local7 = f67_local9
            end
        else
            f67_local7 = f67_local8
        end
    elseif SpaceCheck(arg0, arg1, 135, 5) == true then
        f67_local7 = f67_local9
    else

    end
    if f67_local7 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f67_local7, TARGET_ENE_0, 999, 0, 0)
    end
    local f67_local11 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 3, TARGET_ENE_0, f67_local3, f67_local4, f67_local11)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act48(arg0, arg1, arg2)
    local f68_local0 = arg0:GetDist(TARGET_ENE_0)
    local f68_local1 = arg0:GetRandam_Int(1, 100)
    local f68_local2 = arg0:GetStringIndexedNumber("L_Dist_BackStepR1")
    local f68_local3 = arg0:GetStringIndexedNumber("L_Dist_BackStepR2")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    local f68_local4 = 50
    arg1:AddSubGoal(GOAL_COMMON_NPCStepAttack, 1, TARGET_ENE_0, f68_local2, f68_local3, f68_local4)
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act49(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    local f69_local0 = 4
    local f69_local1 = 0
    local f69_local2 = 4
    local f69_local3 = 100
    local f69_local4 = 0
    local f69_local5 = 1.8
    local f69_local6 = 2
    local f69_local7 = 0
    local f69_local8 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f69_local8 = true
    else
        f69_local8 = false
    end
    if f69_local8 == false then
        arg0:AddNPCActProb(9000)
        f69_local7 = arg0:GetNPCActProb(9020)
    end
    NPC_Approach_Act_Flex(arg0, arg1, f69_local0, f69_local1, f69_local2, f69_local3, f69_local7, f69_local5, f69_local6)
    local f69_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_Up_Jump, TARGET_ENE_0, 999, 0, 90)
    f69_local9:SetLifeEndSuccess(true)
    f69_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 90)
    f69_local9:SetLifeEndSuccess(true)
    
end

function GeneralNPC_Act50(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
    end
    local f70_local0 = 6.8
    local f70_local1 = 0
    local f70_local2 = false
    local f70_local3 = arg0:GetRandam_Int(1, 100)
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f70_local2 = true
    else
        f70_local2 = false
    end
    if f70_local2 == false then
        arg0:AddNPCActProb(9000)
        f70_local1 = arg0:GetNPCActProb(9020)
    end
    if f70_local3 <= f70_local1 then
        ATK_Guard = NPC_ATK_L1
    end
    arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f70_local0, TARGET_SELF, ATK_Guard)
    local f70_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, NPC_ATK_UpHold_ButtonXmarkHold, TARGET_ENE_0, 999, 0, 90)
    f70_local4:SetLifeEndSuccess(true)
    f70_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_Dash_Jump, TARGET_ENE_0, 999, 0, 90)
    f70_local4:SetLifeEndSuccess(true)
    f70_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2, TARGET_ENE_0, 999, 0, 90)
    f70_local4:SetLifeEndSuccess(true)
    
end

function GeneralNPC_Act51(arg0, arg1, arg2)
    local f71_local0 = 10
    local f71_local1 = arg0:GetRandam_Int(1, 100)
    local f71_local2 = arg0:GetDist(TARGET_ENE_0)
    local f71_local3 = arg0:GetRandam_Int(0, 1)
    local f71_local4 = 90
    local f71_local5 = false
    local f71_local6 = GetBowType(arg0:GetWeaponBehaviorVarID(arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)))
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        f71_local5 = true
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
        if f71_local6 ~= 43 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
            f71_local5 = true
        end
    elseif f71_local6 ~= 43 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
        f71_local5 = true
    end
    local f71_local7 = 0
    local f71_local8 = 30
    local f71_local9 = 0
    local f71_local10 = 30
    local f71_local11 = 50
    local f71_local12 = 1.8
    local f71_local13 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f71_local8, f71_local9, f71_local10, f71_local11, f71_local7, f71_local12, f71_local13)
    if f71_local6 == 43 then
        local f71_local14 = NPC_ATK_L1
        if f71_local5 == true then
            f71_local14 = NPC_ATK_R1
        end
        local f71_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f71_local14, TARGET_ENE_0, 999, 0, 0)
        f71_local15:SetTargetRange(0, 2.5, 999)
        f71_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f71_local14, TARGET_ENE_0, 999, 0, 0)
        f71_local15:SetTargetRange(0, 2.5, 999)
    else
        local f71_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R1Hold, TARGET_ENE_0, 999, 0, 0)
        f71_local14:SetTargetRange(0, 2.5, 999)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act52(arg0, arg1, arg2)
    local f72_local0 = 10
    local f72_local1 = arg0:GetRandam_Int(1, 100)
    local f72_local2 = arg0:GetDist(TARGET_ENE_0)
    local f72_local3 = arg0:GetRandam_Int(0, 1)
    local f72_local4 = 90
    local f72_local5 = false
    local f72_local6 = GetBowType(arg0:GetWeaponBehaviorVarID(arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)))
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        f72_local5 = true
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
        if f72_local6 ~= 43 then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
            f72_local5 = true
        end
    elseif f72_local6 ~= 43 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, 999, 0, 0)
        f72_local5 = true
    end
    local f72_local7 = 0
    local f72_local8 = 30
    local f72_local9 = 0
    local f72_local10 = 30
    local f72_local11 = 50
    local f72_local12 = 1.8
    local f72_local13 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f72_local8, f72_local9, f72_local10, f72_local11, f72_local7, f72_local12, f72_local13)
    if f72_local6 == 43 then
        local f72_local14 = NPC_ATK_L2
        if f72_local5 == true then
            f72_local14 = NPC_ATK_R2
        end
        local f72_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f72_local14, TARGET_ENE_0, 999, 0, 0)
        f72_local15:SetTargetRange(0, 2.5, 999)
        f72_local15 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f72_local14, TARGET_ENE_0, 999, 0, 0)
        f72_local15:SetTargetRange(0, 2.5, 999)
    else
        local f72_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, NPC_ATK_R2Hold, TARGET_ENE_0, 999, 0, 0)
        f72_local14:SetTargetRange(0, 2.5, 999)
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act61(arg0, arg1, arg2)
    local f73_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f73_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f73_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f73_local1)
    local f73_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f73_local3 = arg0:GetAIUsageParam(0, f73_local1)
    local f73_local4 = GetUsageId_CC(arg0, f73_local3)
    arg0:ChangeEquipMagicByMagicParamId(f73_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f73_local5 = f73_local2
    local f73_local6 = f73_local2
    local f73_local7 = f73_local2 + 6
    local f73_local8 = 0
    local f73_local9 = 0
    local f73_local10 = 1.8
    local f73_local11 = 2
    local f73_local12 = 0
    NPC_Approach_Act_Flex(arg0, arg1, f73_local5, f73_local6, f73_local7, f73_local8, f73_local12, f73_local10, f73_local11)
    if f73_local4 == 1 then
        local f73_local13 = arg0:GetRandam_Int(1, 100)
        local f73_local14 = 20
        local f73_local15 = 30
        local f73_local16 = 30
        local f73_local17 = 20
        local f73_local18 = 0
        local f73_local19 = 0
        local f73_local20 = 0
        local f73_local21 = 1
        if f73_local13 <= f73_local14 then
            f73_local21 = 2
        elseif f73_local13 <= f73_local14 + f73_local15 then
            f73_local21 = 3
        elseif f73_local13 <= f73_local14 + f73_local15 + f73_local16 then
            f73_local21 = 4
        elseif f73_local13 <= f73_local14 + f73_local15 + f73_local16 + f73_local17 then
            f73_local21 = 5
        elseif f73_local13 <= f73_local14 + f73_local15 + f73_local16 + f73_local17 + f73_local18 then
            f73_local21 = 6
        elseif f73_local13 <= f73_local14 + f73_local15 + f73_local16 + f73_local17 + f73_local18 + f73_local19 then
            f73_local21 = 7
        elseif f73_local13 <= f73_local14 + f73_local15 + f73_local16 + f73_local17 + f73_local18 + f73_local19 + f73_local20 then
            f73_local21 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_L1, -1, TARGET_ENE_0, f73_local2, AI_DIR_TYPE_F, -1, f73_local21, 2, 0, 0, -1, -1)
    elseif f73_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f73_local13 = arg0:GetRandam_Float(1, 2.2)
        local f73_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f73_local13, NPC_ATK_Up_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f73_local14:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_L1, TARGET_ENE_0, f73_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 7, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act62(arg0, arg1, arg2)
    local f74_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f74_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f74_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f74_local1)
    local f74_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f74_local3 = arg0:GetAIUsageParam(0, f74_local1)
    local f74_local4 = GetUsageId_CC(arg0, f74_local3)
    arg0:ChangeEquipMagicByMagicParamId(f74_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f74_local4 == 1 then
        local f74_local5 = arg0:GetRandam_Int(1, 100)
        local f74_local6 = 20
        local f74_local7 = 30
        local f74_local8 = 30
        local f74_local9 = 20
        local f74_local10 = 0
        local f74_local11 = 0
        local f74_local12 = 0
        local f74_local13 = 1
        if f74_local5 <= f74_local6 then
            f74_local13 = 2
        elseif f74_local5 <= f74_local6 + f74_local7 then
            f74_local13 = 3
        elseif f74_local5 <= f74_local6 + f74_local7 + f74_local8 then
            f74_local13 = 4
        elseif f74_local5 <= f74_local6 + f74_local7 + f74_local8 + f74_local9 then
            f74_local13 = 5
        elseif f74_local5 <= f74_local6 + f74_local7 + f74_local8 + f74_local9 + f74_local10 then
            f74_local13 = 6
        elseif f74_local5 <= f74_local6 + f74_local7 + f74_local8 + f74_local9 + f74_local10 + f74_local11 then
            f74_local13 = 7
        elseif f74_local5 <= f74_local6 + f74_local7 + f74_local8 + f74_local9 + f74_local10 + f74_local11 + f74_local12 then
            f74_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f74_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f74_local13, 2, 0, 0, -1, -1)
    elseif f74_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f74_local5 = arg0:GetRandam_Float(1, 2.2)
        local f74_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f74_local5, NPC_ATK_Left_L1Hold, NPC_ATK_Right_L1Hold, TARGET_ENE_0, f74_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f74_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f74_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 7, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act63(arg0, arg1, arg2)
    local f75_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f75_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 12, f75_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f75_local1)
    local f75_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f75_local3 = arg0:GetAIUsageParam(0, f75_local1)
    local f75_local4 = GetUsageId_CC(arg0, f75_local3)
    arg0:ChangeEquipMagicByMagicParamId(f75_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f75_local4 == 1 then
        local f75_local5 = arg0:GetRandam_Int(1, 100)
        local f75_local6 = 20
        local f75_local7 = 30
        local f75_local8 = 30
        local f75_local9 = 20
        local f75_local10 = 0
        local f75_local11 = 0
        local f75_local12 = 0
        local f75_local13 = 1
        if f75_local5 <= f75_local6 then
            f75_local13 = 2
        elseif f75_local5 <= f75_local6 + f75_local7 then
            f75_local13 = 3
        elseif f75_local5 <= f75_local6 + f75_local7 + f75_local8 then
            f75_local13 = 4
        elseif f75_local5 <= f75_local6 + f75_local7 + f75_local8 + f75_local9 then
            f75_local13 = 5
        elseif f75_local5 <= f75_local6 + f75_local7 + f75_local8 + f75_local9 + f75_local10 then
            f75_local13 = 6
        elseif f75_local5 <= f75_local6 + f75_local7 + f75_local8 + f75_local9 + f75_local10 + f75_local11 then
            f75_local13 = 7
        elseif f75_local5 <= f75_local6 + f75_local7 + f75_local8 + f75_local9 + f75_local10 + f75_local11 + f75_local12 then
            f75_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_L1, -1, TARGET_ENE_0, f75_local2, AI_DIR_TYPE_B, -1, f75_local13, 2, 0, 0, -1, -1)
    elseif f75_local4 == 2 then
        arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f75_local5 = arg0:GetRandam_Float(1, 2.2)
        local f75_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f75_local5, NPC_ATK_Down_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f75_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_L1, TARGET_ENE_0, f75_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 7, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act64(arg0, arg1, arg2)
    local f76_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f76_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f76_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f76_local1)
    local f76_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f76_local3 = arg0:GetAIUsageParam(0, f76_local1)
    local f76_local4 = GetUsageId_CC(arg0, f76_local3)
    arg0:ChangeEquipMagicByMagicParamId(f76_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f76_local5 = f76_local2
    local f76_local6 = f76_local2
    local f76_local7 = f76_local2 + 6
    local f76_local8 = 0
    local f76_local9 = 0
    local f76_local10 = 1.8
    local f76_local11 = 2
    local f76_local12 = arg0:GetNPCActProb(9020)
    NPC_Approach_Act_Flex(arg0, arg1, f76_local5, f76_local6, f76_local7, f76_local8, f76_local12, f76_local10, f76_local11)
    if f76_local4 == 1 then
        local f76_local13 = arg0:GetRandam_Int(1, 100)
        local f76_local14 = 20
        local f76_local15 = 30
        local f76_local16 = 30
        local f76_local17 = 20
        local f76_local18 = 0
        local f76_local19 = 0
        local f76_local20 = 0
        local f76_local21 = 1
        if f76_local13 <= f76_local14 then
            f76_local21 = 2
        elseif f76_local13 <= f76_local14 + f76_local15 then
            f76_local21 = 3
        elseif f76_local13 <= f76_local14 + f76_local15 + f76_local16 then
            f76_local21 = 4
        elseif f76_local13 <= f76_local14 + f76_local15 + f76_local16 + f76_local17 then
            f76_local21 = 5
        elseif f76_local13 <= f76_local14 + f76_local15 + f76_local16 + f76_local17 + f76_local18 then
            f76_local21 = 6
        elseif f76_local13 <= f76_local14 + f76_local15 + f76_local16 + f76_local17 + f76_local18 + f76_local19 then
            f76_local21 = 7
        elseif f76_local13 <= f76_local14 + f76_local15 + f76_local16 + f76_local17 + f76_local18 + f76_local19 + f76_local20 then
            f76_local21 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_L1, -1, TARGET_ENE_0, f76_local2, AI_DIR_TYPE_F, -1, f76_local21, 2, 0, 0, -1, -1)
    elseif f76_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f76_local13 = arg0:GetRandam_Float(1, 2.2)
        local f76_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f76_local13, NPC_ATK_Up_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f76_local14:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_L1, TARGET_ENE_0, f76_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act65(arg0, arg1, arg2)
    local f77_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f77_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f77_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f77_local1)
    local f77_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f77_local3 = arg0:GetAIUsageParam(0, f77_local1)
    local f77_local4 = GetUsageId_CC(arg0, f77_local3)
    arg0:ChangeEquipMagicByMagicParamId(f77_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f77_local4 == 1 then
        local f77_local5 = arg0:GetRandam_Int(1, 100)
        local f77_local6 = 20
        local f77_local7 = 30
        local f77_local8 = 30
        local f77_local9 = 20
        local f77_local10 = 0
        local f77_local11 = 0
        local f77_local12 = 0
        local f77_local13 = 1
        if f77_local5 <= f77_local6 then
            f77_local13 = 2
        elseif f77_local5 <= f77_local6 + f77_local7 then
            f77_local13 = 3
        elseif f77_local5 <= f77_local6 + f77_local7 + f77_local8 then
            f77_local13 = 4
        elseif f77_local5 <= f77_local6 + f77_local7 + f77_local8 + f77_local9 then
            f77_local13 = 5
        elseif f77_local5 <= f77_local6 + f77_local7 + f77_local8 + f77_local9 + f77_local10 then
            f77_local13 = 6
        elseif f77_local5 <= f77_local6 + f77_local7 + f77_local8 + f77_local9 + f77_local10 + f77_local11 then
            f77_local13 = 7
        elseif f77_local5 <= f77_local6 + f77_local7 + f77_local8 + f77_local9 + f77_local10 + f77_local11 + f77_local12 then
            f77_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f77_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f77_local13, 2, 0, 0, -1, -1)
    elseif f77_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f77_local5 = arg0:GetRandam_Float(1, 2.2)
        local f77_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f77_local5, NPC_ATK_Left_L1Hold, NPC_ATK_Right_L1Hold, TARGET_ENE_0, f77_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f77_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f77_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act66(arg0, arg1, arg2)
    local f78_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f78_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 11, f78_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f78_local1)
    local f78_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f78_local3 = arg0:GetAIUsageParam(0, f78_local1)
    local f78_local4 = GetUsageId_CC(arg0, f78_local3)
    arg0:ChangeEquipMagicByMagicParamId(f78_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f78_local4 == 1 then
        local f78_local5 = arg0:GetRandam_Int(1, 100)
        local f78_local6 = 20
        local f78_local7 = 30
        local f78_local8 = 30
        local f78_local9 = 20
        local f78_local10 = 0
        local f78_local11 = 0
        local f78_local12 = 0
        local f78_local13 = 1
        if f78_local5 <= f78_local6 then
            f78_local13 = 2
        elseif f78_local5 <= f78_local6 + f78_local7 then
            f78_local13 = 3
        elseif f78_local5 <= f78_local6 + f78_local7 + f78_local8 then
            f78_local13 = 4
        elseif f78_local5 <= f78_local6 + f78_local7 + f78_local8 + f78_local9 then
            f78_local13 = 5
        elseif f78_local5 <= f78_local6 + f78_local7 + f78_local8 + f78_local9 + f78_local10 then
            f78_local13 = 6
        elseif f78_local5 <= f78_local6 + f78_local7 + f78_local8 + f78_local9 + f78_local10 + f78_local11 then
            f78_local13 = 7
        elseif f78_local5 <= f78_local6 + f78_local7 + f78_local8 + f78_local9 + f78_local10 + f78_local11 + f78_local12 then
            f78_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_L1, -1, TARGET_ENE_0, f78_local2, AI_DIR_TYPE_B, -1, f78_local13, 2, 0, 0, -1, -1)
    elseif f78_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f78_local5 = arg0:GetRandam_Float(1, 2.2)
        local f78_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f78_local5, NPC_ATK_Down_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f78_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_L1, TARGET_ENE_0, f78_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 8, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act67(arg0, arg1, arg2)
    local f79_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f79_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f79_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f79_local1)
    local f79_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f79_local3 = arg0:GetAIUsageParam(0, f79_local1)
    local f79_local4 = GetUsageId_CC(arg0, f79_local3)
    arg0:ChangeEquipMagicByMagicParamId(f79_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f79_local5 = f79_local2
    local f79_local6 = f79_local2
    local f79_local7 = f79_local2 + 6
    local f79_local8 = 0
    local f79_local9 = 0
    local f79_local10 = 1.8
    local f79_local11 = 2
    local f79_local12 = 0
    NPC_Approach_Act_Flex(arg0, arg1, f79_local5, f79_local6, f79_local7, f79_local8, f79_local12, f79_local10, f79_local11)
    if f79_local4 == 1 then
        local f79_local13 = arg0:GetRandam_Int(1, 100)
        local f79_local14 = 20
        local f79_local15 = 30
        local f79_local16 = 30
        local f79_local17 = 20
        local f79_local18 = 0
        local f79_local19 = 0
        local f79_local20 = 0
        local f79_local21 = 1
        if f79_local13 <= f79_local14 then
            f79_local21 = 2
        elseif f79_local13 <= f79_local14 + f79_local15 then
            f79_local21 = 3
        elseif f79_local13 <= f79_local14 + f79_local15 + f79_local16 then
            f79_local21 = 4
        elseif f79_local13 <= f79_local14 + f79_local15 + f79_local16 + f79_local17 then
            f79_local21 = 5
        elseif f79_local13 <= f79_local14 + f79_local15 + f79_local16 + f79_local17 + f79_local18 then
            f79_local21 = 6
        elseif f79_local13 <= f79_local14 + f79_local15 + f79_local16 + f79_local17 + f79_local18 + f79_local19 then
            f79_local21 = 7
        elseif f79_local13 <= f79_local14 + f79_local15 + f79_local16 + f79_local17 + f79_local18 + f79_local19 + f79_local20 then
            f79_local21 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Up_L1, -1, TARGET_ENE_0, f79_local2, AI_DIR_TYPE_F, -1, f79_local21, 2, 0, 0, -1, -1)
    elseif f79_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f79_local13 = arg0:GetRandam_Float(1, 2.2)
        local f79_local14 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f79_local13, NPC_ATK_Up_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f79_local14:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Up_L1, TARGET_ENE_0, f79_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act68(arg0, arg1, arg2)
    local f80_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f80_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f80_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f80_local1)
    local f80_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f80_local3 = arg0:GetAIUsageParam(0, f80_local1)
    local f80_local4 = GetUsageId_CC(arg0, f80_local3)
    arg0:ChangeEquipMagicByMagicParamId(f80_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f80_local4 == 1 then
        local f80_local5 = arg0:GetRandam_Int(1, 100)
        local f80_local6 = 20
        local f80_local7 = 30
        local f80_local8 = 30
        local f80_local9 = 20
        local f80_local10 = 0
        local f80_local11 = 0
        local f80_local12 = 0
        local f80_local13 = 1
        if f80_local5 <= f80_local6 then
            f80_local13 = 2
        elseif f80_local5 <= f80_local6 + f80_local7 then
            f80_local13 = 3
        elseif f80_local5 <= f80_local6 + f80_local7 + f80_local8 then
            f80_local13 = 4
        elseif f80_local5 <= f80_local6 + f80_local7 + f80_local8 + f80_local9 then
            f80_local13 = 5
        elseif f80_local5 <= f80_local6 + f80_local7 + f80_local8 + f80_local9 + f80_local10 then
            f80_local13 = 6
        elseif f80_local5 <= f80_local6 + f80_local7 + f80_local8 + f80_local9 + f80_local10 + f80_local11 then
            f80_local13 = 7
        elseif f80_local5 <= f80_local6 + f80_local7 + f80_local8 + f80_local9 + f80_local10 + f80_local11 + f80_local12 then
            f80_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f80_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, f80_local13, 2, 0, 0, -1, -1)
    elseif f80_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f80_local5 = arg0:GetRandam_Float(1, 2.2)
        local f80_local6 = arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, f80_local5, NPC_ATK_Left_L1Hold, NPC_ATK_Right_L1Hold, TARGET_ENE_0, f80_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
        f80_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 1, NPC_ATK_Left_L1, NPC_ATK_Right_L1, TARGET_ENE_0, f80_local2, AI_DIR_TYPE_L, AI_DIR_TYPE_R, 1, 2, 0, 0, -1, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act69(arg0, arg1, arg2)
    local f81_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f81_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 10, f81_local0)
    Common_NPC_AI_GetSpellUseDist(self, arg0, arg1, f81_local1)
    local f81_local2 = arg0:GetStringIndexedNumber("Spell_ApproachDist")
    local f81_local3 = arg0:GetAIUsageParam(0, f81_local1)
    local f81_local4 = GetUsageId_CC(arg0, f81_local3)
    arg0:ChangeEquipMagicByMagicParamId(f81_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    if f81_local4 == 1 then
        local f81_local5 = arg0:GetRandam_Int(1, 100)
        local f81_local6 = 20
        local f81_local7 = 30
        local f81_local8 = 30
        local f81_local9 = 20
        local f81_local10 = 0
        local f81_local11 = 0
        local f81_local12 = 0
        local f81_local13 = 1
        if f81_local5 <= f81_local6 then
            f81_local13 = 2
        elseif f81_local5 <= f81_local6 + f81_local7 then
            f81_local13 = 3
        elseif f81_local5 <= f81_local6 + f81_local7 + f81_local8 then
            f81_local13 = 4
        elseif f81_local5 <= f81_local6 + f81_local7 + f81_local8 + f81_local9 then
            f81_local13 = 5
        elseif f81_local5 <= f81_local6 + f81_local7 + f81_local8 + f81_local9 + f81_local10 then
            f81_local13 = 6
        elseif f81_local5 <= f81_local6 + f81_local7 + f81_local8 + f81_local9 + f81_local10 + f81_local11 then
            f81_local13 = 7
        elseif f81_local5 <= f81_local6 + f81_local7 + f81_local8 + f81_local9 + f81_local10 + f81_local11 + f81_local12 then
            f81_local13 = 8
        end
        arg1:AddSubGoal(GOAL_COMMON_NpcComboAttack_WithMove, 30, NPC_ATK_Down_L1, -1, TARGET_ENE_0, f81_local2, AI_DIR_TYPE_B, -1, f81_local13, 2, 0, 0, -1, -1)
    elseif f81_local4 == 2 then
        arg0:AddObserveAreaCustom(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 4)
        arg1:SetTimer(0, 6)
        local f81_local5 = arg0:GetRandam_Float(1, 2.2)
        local f81_local6 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, f81_local5, NPC_ATK_Down_L1Hold, TARGET_ENE_0, 0, 0, 0, 0, 0)
        f81_local6:SetLifeEndSuccess(true)
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_Down_L1, TARGET_ENE_0, f81_local2, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_SetTimerRealtime, 0.1, 9, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act70(arg0, arg1, arg2)
    local f82_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f82_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 20, f82_local0)
    arg0:ChangeEquipMagicByMagicParamId(f82_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f82_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    f82_local2:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    
end

function GeneralNPC_Act71(arg0, arg1, arg2)
    local f83_local0 = arg0:GetCurrentEquipWeaponId(TARGET_SELF, ARM_L)
    local f83_local1 = GetRandomSpellId_ByType(self, arg0, arg1, 30, f83_local0)
    arg0:ChangeEquipMagicByMagicParamId(f83_local1)
    if arg0:IsBothHandMode(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    local f83_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, NPC_ATK_L1, TARGET_ENE_0, 999, 0, 0)
    f83_local2:SetLifeEndSuccess(true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.2, TARGET_ENE_0)
    
end

function GeneralNPC_Act101(arg0, arg1, arg2)
    local f84_local0 = arg0:GetDist(TARGET_ENE_0)
    local f84_local1 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 5) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ButtonXmark, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:SetTimer(6, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act102(arg0, arg1, arg2)
    local f85_local0 = arg0:GetDist(TARGET_ENE_0)
    local f85_local1 = arg0:GetRandam_Int(1, 100)
    local f85_local2 = arg0:GetRandam_Int(1, 100)
    local f85_local3 = arg0:GetRandam_Int(1, 100)
    local f85_local4 = false
    local f85_local5 = arg0:GetNPCActProb(9040)
    if f85_local3 <= f85_local5 then
        f85_local4 = true
    end
    local f85_local6 = NPC_ATK_NONE
    local f85_local7 = NPC_ATK_Up_ButtonXmark
    local f85_local8 = NPC_ATK_UpLeft_ButtonXmark
    local f85_local9 = NPC_ATK_UpRight_ButtonXmark
    if f85_local4 == true then
        f85_local7 = NPC_ATK_Up_L2
        f85_local8 = NPC_ATK_UpLeft_L2
        f85_local9 = NPC_ATK_UpRight_L2
    end
    if f85_local0 >= 5 and SpaceCheck(arg0, arg1, 0, 5) == true then
        f85_local6 = f85_local7
    elseif SpaceCheck(arg0, arg1, -45, 5) == true then
        if SpaceCheck(arg0, arg1, 45, 5) == true then
            if f85_local1 <= 50 then
                f85_local6 = f85_local8
            else
                f85_local6 = f85_local9
            end
        else
            f85_local6 = f85_local8
        end
    elseif SpaceCheck(arg0, arg1, 45, 5) == true then
        f85_local6 = f85_local9
    else

    end
    if f85_local6 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f85_local6, TARGET_ENE_0, 999, 0, 0)
        arg0:SetTimer(6, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act103(arg0, arg1, arg2)
    local f86_local0 = arg0:GetDist(TARGET_ENE_0)
    local f86_local1 = arg0:GetRandam_Int(1, 100)
    local f86_local2 = arg0:GetRandam_Int(1, 100)
    local f86_local3 = arg0:GetRandam_Int(1, 100)
    local f86_local4 = false
    local f86_local5 = arg0:GetNPCActProb(9040)
    if f86_local3 <= f86_local5 then
        f86_local4 = true
    end
    local f86_local6 = NPC_ATK_NONE
    local f86_local7 = NPC_ATK_Left_ButtonXmark
    local f86_local8 = NPC_ATK_Right_ButtonXmark
    if f86_local4 == true then
        f86_local7 = NPC_ATK_Left_L2
        f86_local8 = NPC_ATK_Right_L2
    end
    if SpaceCheck(arg0, arg1, -90, 5) == true then
        if SpaceCheck(arg0, arg1, 90, 5) == true then
            if f86_local1 <= 50 then
                f86_local6 = f86_local7
            else
                f86_local6 = f86_local8
            end
        else
            f86_local6 = f86_local7
        end
    elseif SpaceCheck(arg0, arg1, 90, 5) == true then
        f86_local6 = f86_local8
    elseif arg0:GetStringIndexedNumber("IsUnreachMode") == 1 then
        if f86_local1 <= 50 then
            f86_local6 = f86_local7
        else
            f86_local6 = f86_local8
        end
    end
    if f86_local6 ~= NPC_ATK_NONE then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f86_local6, TARGET_ENE_0, 999, 0, 0)
        arg0:SetTimer(6, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act104(arg0, arg1, arg2)
    local f87_local0 = arg0:GetDist(TARGET_ENE_0)
    local f87_local1 = arg0:GetRandam_Int(1, 100)
    local f87_local2 = arg0:GetRandam_Int(1, 100)
    local f87_local3 = arg0:GetRandam_Int(1, 100)
    local f87_local4 = false
    local f87_local5 = arg0:GetNPCActProb(9040)
    if f87_local3 <= f87_local5 then
        f87_local4 = true
    end
    local f87_local6 = NPC_ATK_NONE
    local f87_local7 = NPC_ATK_Down_ButtonXmark
    local f87_local8 = NPC_ATK_DownLeft_ButtonXmark
    local f87_local9 = NPC_ATK_DownRight_ButtonXmark
    if f87_local4 == true then
        f87_local7 = NPC_ATK_Down_L2
        f87_local8 = NPC_ATK_DownLeft_L2
        f87_local9 = NPC_ATK_DownRight_L2
    end
    if f87_local0 <= 1 and SpaceCheck(arg0, arg1, 180, 5) == true then
        f87_local6 = f87_local7
    elseif SpaceCheck(arg0, arg1, -135, 5) == true then
        if SpaceCheck(arg0, arg1, 135, 5) == true then
            if f87_local1 <= 50 then
                f87_local6 = f87_local8
            else
                f87_local6 = f87_local9
            end
        else
            f87_local6 = f87_local8
        end
    elseif SpaceCheck(arg0, arg1, 135, 5) == true then
        f87_local6 = f87_local9
    else

    end
    if f87_local6 ~= NPC_ATK_NONE or arg0:GetStringIndexedNumber("IsUnreachMode") == 1 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, f87_local6, TARGET_ENE_0, 999, 0, 0)
        arg0:SetTimer(6, 1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act105(arg0, arg1, arg2)
    local f88_local0 = arg0:GetRandam_Int(1, 100)
    local f88_local1 = arg0:GetDist(TARGET_ENE_0)
    local f88_local2 = 1
    local f88_local3 = arg0:GetNPCActProb(9020)
    local f88_local4 = false
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f88_local4 = true
    end
    if f88_local4 == false then
        arg0:AddNPCActProb(9000)
        f88_local3 = arg0:GetNPCActProb(9020)
    end
    local f88_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f88_local5 = 0
            else
                f88_local5 = 1
            end
        else
            f88_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f88_local5 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f88_local6 = -1
    if f88_local0 <= f88_local3 then
        f88_local6 = NPC_ATK_L1
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f88_local2, TARGET_ENE_0, f88_local5, arg0:GetRandam_Int(75, 90), true, true, f88_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act106(arg0, arg1, arg2)
    local f89_local0 = arg0:GetRandam_Int(1, 100)
    local f89_local1 = arg0:GetDist(TARGET_ENE_0)
    local f89_local2 = 1.8
    local f89_local3 = 7
    local f89_local4 = arg0:GetNPCActProb(9020)
    local f89_local5 = false
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f89_local5 = true
    end
    if f89_local5 == false then
        arg0:AddNPCActProb(9000)
        f89_local4 = arg0:GetNPCActProb(9020)
    end
    local f89_local6 = -1
    if f89_local0 <= f89_local4 then
        f89_local6 = NPC_ATK_L1
    end
    if f89_local3 <= arg0:GetDist(TARGET_ENE_0) and f89_local6 == NPC_ATK_L1 then
        arg1:AddSubGoal(GOAL_COMMON_Guard, f89_local2, f89_local6, TARGET_ENE_0, true, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f89_local2, TARGET_ENE_0, f89_local3, TARGET_ENE_0, true, f89_local6)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act107(arg0, arg1, arg2)
    local f90_local0 = arg0:GetRandam_Int(1, 100)
    local f90_local1 = arg0:GetDist(TARGET_ENE_0)
    local f90_local2 = 2
    local f90_local3 = arg0:GetNPCActProb(9020)
    local f90_local4 = false
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f90_local4 = true
    end
    if f90_local4 == false then
        arg0:AddNPCActProb(9000)
        f90_local3 = arg0:GetNPCActProb(9020)
    end
    local f90_local5 = -1
    if f90_local0 <= f90_local3 then
        f90_local5 = NPC_ATK_L1
    end
    local f90_local6 = f90_local2
    arg1:AddSubGoal(GOAL_COMMON_DashTarget, 3, TARGET_ENE_0, f90_local6, TARGET_SELF, f90_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act108(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Guard, 3, NPC_ATK_L1Hold, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act109(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    end
    arg0:SetTimer(5, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act110(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, AttDist, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, AttDist, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleL, TARGET_ENE_0, AttDist, 0, 0)
    end
    arg0:SetTimer(5, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act111(arg0, arg1, arg2)
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, AttDist, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, AttDist, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    end
    arg0:SetTimer(5, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act112(arg0, arg1, arg2)
    local f95_local0 = arg0:GetRandam_Int(1, 100)
    local f95_local1 = arg0:GetRandam_Int(1, 100)
    local f95_local2 = arg0:GetDist(TARGET_ENE_0)
    local f95_local3 = arg0:GetNPCActProb(9020)
    local f95_local4 = false
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then

    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then

    elseif arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f95_local4 = true
    end
    if f95_local4 == false then
        arg0:AddNPCActProb(9000)
        f95_local3 = arg0:GetNPCActProb(9020)
    end
    local f95_local5 = -1
    local f95_local6 = 15
    local f95_local7 = 50
    local f95_local8 = 3
    if f95_local0 <= f95_local3 then
        f95_local5 = NPC_ATK_L1
    end
    if f95_local1 <= f95_local7 then
        isWalk = true
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f95_local8, TARGET_ENE_0, f95_local6, TARGET_SELF, isWalk, f95_local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act120(arg0, arg1, arg2)
    local f96_local0 = arg0:GetRandam_Int(1, 100)
    local f96_local1 = arg0:GetRandam_Int(1, 100)
    local f96_local2 = arg0:GetDist(TARGET_ENE_0)
    local f96_local3 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_First")
    local f96_local4 = arg0:GetStringIndexedNumber("R_ComboNum_R1")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
    else

    end
    local f96_local5 = 100
    local f96_local6 = f96_local3
    local f96_local7 = f96_local3 + 2
    local f96_local8 = f96_local3 + 2
    local f96_local9 = 50
    local f96_local10 = 1.8
    local f96_local11 = 2
    local f96_local12 = arg0:GetNPCActProb(9020)
    local f96_local13 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f96_local13 = true
    else
        f96_local13 = false
    end
    if f96_local13 == false then
        arg0:AddNPCActProb(9000)
        f96_local12 = arg0:GetNPCActProb(9020)
    end
    NPC_Approach_Act_Flex(arg0, arg1, f96_local6, f96_local7, f96_local8, f96_local9, f96_local12, f96_local10, f96_local11)
    if f96_local4 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    elseif f96_local4 == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    elseif f96_local4 == 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    elseif f96_local4 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    elseif f96_local4 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f96_local3, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act121(arg0, arg1, arg2)
    local f97_local0 = arg0:GetDist(TARGET_ENE_0)
    local f97_local1 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_First")
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        f97_local1 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_First")
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        f97_local1 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR1_First")
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_L1Hold_R1, TARGET_ENE_0, f97_local1, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act150(arg0, arg1, arg2)
    local f98_local0 = GetRandomItemId_ByType(self, arg0, arg1, 20)
    ChangeEquipItem_ById(self, arg0, arg1, f98_local0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act151(arg0, arg1, arg2)
    local f99_local0 = GetRandomItemId_ByType(self, arg0, arg1, 30)
    ChangeEquipItem_ById(self, arg0, arg1, f99_local0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act152(arg0, arg1, arg2)
    local f100_local0 = GetRandomItemId_ByType(self, arg0, arg1, 31)
    ChangeEquipItem_ById(self, arg0, arg1, f100_local0)
    local f100_local1 = arg0:GetRandam_Int(1, 100)
    local f100_local2 = arg0:GetRandam_Int(1, 100)
    local f100_local3 = arg0:GetRandam_Int(1, 100)
    local f100_local4 = arg0:GetDist(TARGET_ENE_0)
    local f100_local5 = 0
    local f100_local6 = 0
    local f100_local7 = arg0:GetNPCActProb(9020)
    local f100_local8 = arg0:GetNPCActProb(9000)
    local f100_local9 = 50
    local f100_local10 = arg0:GetStringIndexedNumber("R_ComboNum_R1")
    local f100_local11 = false
    local f100_local12 = false
    local f100_local13 = false
    if f100_local1 <= f100_local8 then
        f100_local12 = true
    else
        f100_local12 = false
    end
    if arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_R then
        if f100_local12 == true then
            f100_local13 = true
        elseif f100_local4 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f100_local13 = false
        else
            f100_local13 = true
        end
    elseif arg0:GetWeaponBothHandState(TARGET_SELF) == ARM_L then
        if f100_local12 == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            if f100_local4 >= 1 then
                arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
                f100_local13 = true
            else
                f100_local13 = false
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f100_local13 = false
        end
    elseif f100_local12 == true then
        if f100_local4 >= 1 then
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_ChangeStyleR, TARGET_ENE_0, 999, 0, 0)
            f100_local13 = true
        else
            f100_local13 = false
        end
    else
        f100_local13 = false
    end
    if f100_local13 == true then
        f100_local5 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_First")
        f100_local6 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_Second")
        f100_local11 = false
    else
        f100_local5 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_First")
        f100_local6 = arg0:GetStringIndexedNumber("R_Dist_OneHandR1_Second")
        if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
            f100_local11 = true
        else
            f100_local11 = false
        end
    end
    if f100_local11 == false then
        arg0:AddNPCActProb(9000)
        f100_local7 = arg0:GetNPCActProb(9020)
    end
    local f100_local14 = false
    if f100_local3 <= f100_local7 then
        f100_local14 = true
        f100_local7 = 100
    end
    local f100_local15 = f100_local5
    local f100_local16 = f100_local5 + 2
    local f100_local17 = f100_local5 + 2
    local f100_local18 = 50
    local f100_local19 = 1.8
    local f100_local20 = 2
    NPC_Approach_Act_Flex(arg0, arg1, f100_local15, f100_local16, f100_local17, f100_local18, f100_local7, f100_local19, f100_local20)
    if f100_local5 <= f100_local4 and f100_local2 <= f100_local9 and f100_local14 == true then
        if arg0:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 180, 10) == true then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 1, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 0.3, TARGET_ENE_0, 0, arg0:GetRandam_Int(75, 90), true, true, NPC_ATK_L1Hold)
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    if f100_local10 >= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
    elseif f100_local10 == 5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
    elseif f100_local10 == 4 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
    elseif f100_local10 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
    elseif f100_local10 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local5, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local6, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_R1, TARGET_ENE_0, f100_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act153(arg0, arg1, arg2)
    local f101_local0 = GetRandomItemId_ByType(self, arg0, arg1, 10)
    ChangeEquipItem_ById(self, arg0, arg1, f101_local0)
    local f101_local1 = 10
    Common_NPC_AI_GetItemUseDist(self, arg0, arg1, f101_local0, f101_local1)
    f101_local1 = arg0:GetStringIndexedNumber("Item_ApproachDist")
    local f101_local2 = 100
    local f101_local3 = f101_local1
    local f101_local4 = f101_local1 + 2
    local f101_local5 = f101_local1 + 2
    local f101_local6 = 50
    local f101_local7 = 1.8
    local f101_local8 = 2
    local f101_local9 = arg0:GetNPCActProb(9020)
    local f101_local10 = false
    if arg0:GetStringIndexedNumber("L_WeaponType") == 10 then
        f101_local10 = true
    else
        f101_local10 = false
    end
    if f101_local10 == false then
        arg0:AddNPCActProb(9000)
        f101_local9 = arg0:GetNPCActProb(9020)
    end
    if arg0:GetStringIndexedNumber("IsUnreachMode") == 0 then
        NPC_Approach_Act_Flex(arg0, arg1, f101_local3, f101_local4, f101_local5, f101_local6, f101_local9, f101_local7, f101_local8)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, NPC_ATK_ButtonSquare, TARGET_ENE_0, 999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act200(arg0, arg1, arg2)
    local f102_local0 = ChangeBothHand_ForArts(self, arg0, arg1, 12)
    local f102_local1 = 0
    if f102_local0 == ARM_R then
        f102_local1 = arg0:GetStringIndexedNumber("R_Dist_TwoHandR1_First")
    elseif f102_local0 == ARM_L then
        f102_local1 = arg0:GetStringIndexedNumber("L_Dist_TwoHandR1_First")
    end
    local f102_local2 = arg0:GetArtsID(f102_local0)
    Common_NPC_AI_GetArtsUseDist(self, arg0, arg1, f102_local2, f102_local1)
    if f102_local0 ~= -1 then
        ArtsAction_ByCC(self, arg0, arg1, f102_local0, arg0:GetStringIndexedNumber("Arts_ApproachDist"))
    end
    
end

function GeneralNPC_Act210(arg0, arg1, arg2)
    local f103_local0 = ChangeBothHand_ForArts(self, arg0, arg1, 11)
    local f103_local1 = 5
    local f103_local2 = arg0:GetArtsID(f103_local0)
    Common_NPC_AI_GetArtsUseDist(self, arg0, arg1, f103_local2, f103_local1)
    if f103_local0 ~= -1 then
        ArtsAction_ByCC(self, arg0, arg1, f103_local0, arg0:GetStringIndexedNumber("Arts_ApproachDist"))
    end
    
end

function GeneralNPC_Act220(arg0, arg1, arg2)
    local f104_local0 = ChangeBothHand_ForArts(self, arg0, arg1, 10)
    local f104_local1 = 12
    local f104_local2 = arg0:GetArtsID(f104_local0)
    Common_NPC_AI_GetArtsUseDist(self, arg0, arg1, f104_local2, f104_local1)
    if f104_local0 ~= -1 then
        ArtsAction_ByCC(self, arg0, arg1, f104_local0, arg0:GetStringIndexedNumber("Arts_ApproachDist"))
    end
    
end

function GeneralNPC_Act230(arg0, arg1, arg2)
    local f105_local0 = ChangeBothHand_ForArts(self, arg0, arg1, 20)
    if f105_local0 ~= -1 then
        ArtsAction_ByCC(self, arg0, arg1, f105_local0, 999)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function GeneralNPC_Act231(arg0, arg1, arg2)
    local f106_local0 = ChangeBothHand_ForArts(self, arg0, arg1, 30)
    if f106_local0 ~= -1 then
        ArtsAction_ByCC(self, arg0, arg1, f106_local0, 999)
    end
    
end

function GeneralNPC_Act_onNoSubGoal(arg0, arg1, arg2)
    if arg0:GetWeightType(TARGET_SELF) ~= AI_TARGET_WEIGHT_TYPE_WeightOver then
        local f107_local0 = arg0:GetSp(TARGET_SELF)
        if f107_local0 < 0 then
            local f107_local0 = AI_DIR_TYPE_ToR
            if arg0:GetRandam_Int(0, 1) == 1 then
                f107_local0 = AI_DIR_TYPE_ToL
            end
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 0.5, TARGET_SELF, false, -1, f107_local0, 2)
        else
            f107_local0 = NPC_ATK_UpRight_ButtonXmark
            if arg0:GetRandam_Int(0, 1) == 1 then
                f107_local0 = NPC_ATK_UpLeft_ButtonXmark
            end
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f107_local0, TARGET_ENE_0, 999, 0, 0)
        end
    end
    local f107_local0 = AI_DIR_TYPE_ToR
    if arg0:GetRandam_Int(0, 1) == 1 then
        f107_local0 = AI_DIR_TYPE_ToL
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 2, TARGET_ENE_0, 0.5, TARGET_SELF, false, -1, f107_local0, 2)
end

function GeneralNPC_AdjustSpace(arg0, arg1, arg2)
    
end


