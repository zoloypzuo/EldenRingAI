RegisterTableGoal(GOAL_Marenia212000_Battle, "Marenia212000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marenia212000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:SetNumber(1, 0)
    arg1:SetTimer(1, 0)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 150)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18045)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18170)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18404) == false and arg1:HasSpecialEffectId(TARGET_SELF, 18405) == false then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18166)
    end
    arg1:DeleteObserve(0)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18402) == true or arg1:HasSpecialEffectId(TARGET_SELF, 18403) == true then
        f2_local0[12] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18404) == true or arg1:HasSpecialEffectId(TARGET_SELF, 18405) == true then
        f2_local0[12] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18401) == true then
        f2_local0[28] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18020) == true and arg1:HasSpecialEffectId(TARGET_SELF, 18022) == false then
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18250)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18251)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18252)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18253)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18254)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18255)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18256)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18257)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18258)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18259)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18260)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18261)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18262)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18263)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18264)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18265)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18266)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18267)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18268)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18269)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18270)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18271)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18272)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18273)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18274)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18275)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18276)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18277)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18278)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18279)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18280)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18281)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18282)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18283)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18284)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18285)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18286)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18287)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18288)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18289)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18290)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18291)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18292)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18293)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18294)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18295)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18296)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18297)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18298)
        arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 18299)
        f2_local0[50] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 30) and f2_local3 < 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 50
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 50
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 18000) == true then
        if f2_local3 >= 20 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 40
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
        elseif f2_local3 >= 9.5 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 15
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 20
            f2_local0[13] = 10
            f2_local0[14] = 5
            f2_local0[15] = 0
            f2_local0[16] = 5
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
        elseif f2_local3 >= 5.4 then
            f2_local0[1] = 10
            f2_local0[2] = 10
            f2_local0[3] = 15
            f2_local0[4] = 30
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 10
            f2_local0[14] = 20
            f2_local0[15] = 0
            f2_local0[16] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
        elseif f2_local3 >= 2.6 then
            f2_local0[1] = 15
            f2_local0[2] = 15
            f2_local0[3] = 20
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 30
            f2_local0[8] = 30
            f2_local0[9] = 10
            f2_local0[10] = 0
            f2_local0[11] = 10
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 10
            f2_local0[15] = 10
            f2_local0[16] = 15
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 10
            f2_local0[23] = 20
            f2_local0[24] = 0
            f2_local0[25] = 0
        else
            f2_local0[1] = 10
            f2_local0[2] = 20
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 40
            f2_local0[8] = 40
            f2_local0[9] = 0
            f2_local0[10] = 10
            f2_local0[11] = 0
            f2_local0[12] = 0
            f2_local0[13] = 0
            f2_local0[14] = 5
            f2_local0[15] = 10
            f2_local0[16] = 10
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
        end
    elseif f2_local3 >= 20 then
        f2_local0[1] = 20
        f2_local0[2] = 0
        f2_local0[3] = 15
        f2_local0[4] = 30
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    elseif f2_local3 >= 11 then
        f2_local0[1] = 10
        f2_local0[2] = 10
        f2_local0[3] = 15
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 0
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 40
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    elseif f2_local3 >= 5.4 then
        f2_local0[1] = 8
        f2_local0[2] = 8
        f2_local0[3] = 15
        f2_local0[4] = 20
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 0
        f2_local0[16] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 50
        f2_local0[23] = 20
        f2_local0[24] = 0
        f2_local0[25] = 0
    elseif f2_local3 >= 2.6 then
        f2_local0[1] = 20
        f2_local0[2] = 10
        f2_local0[3] = 20
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 30
        f2_local0[8] = 30
        f2_local0[9] = 10
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 10
        f2_local0[16] = 15
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 20
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    else
        f2_local0[1] = 10
        f2_local0[2] = 30
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 40
        f2_local0[8] = 40
        f2_local0[9] = 0
        f2_local0[10] = 0
        f2_local0[11] = 0
        f2_local0[12] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
        f2_local0[15] = 5
        f2_local0[16] = 5
        f2_local0[20] = 0
        f2_local0[21] = 0
        f2_local0[22] = 0
        f2_local0[23] = 0
        f2_local0[24] = 0
        f2_local0[25] = 0
    end
    if f2_local3 < 1 then
        f2_local0[5] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18077) == true then
        f2_local0[22] = f2_local0[22] * 2
    end
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 90, 12) then
        f2_local0[7] = 0
        f2_local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18041) == false then
        if f2_local5 > 0.72 then
            f2_local0[16] = 0
        else
            f2_local0[16] = f2_local0[16] * 20
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18042) == false then
        if f2_local5 > 0.64 then
            f2_local0[13] = 0
        else
            f2_local0[13] = f2_local0[13] * 20
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 18043) == false then
        if f2_local5 > 0.42 then
            f2_local0[14] = 0
        else
            f2_local0[14] = f2_local0[14] * 20
        end
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 12, f2_local0[3], 0)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 23, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3025, 6, f2_local0[7], 0)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3026, 6, f2_local0[8], 0)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3030, 6, f2_local0[9], 0)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3016, 6, f2_local0[10], 0)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3031, 6, f2_local0[11], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 18404) == false and arg1:HasSpecialEffectId(TARGET_SELF, 18405) == false and arg1:HasSpecialEffectId(TARGET_SELF, 18403) == false and arg1:HasSpecialEffectId(TARGET_SELF, 18402) == false then
        f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[12], 0)
    end
    f2_local0[13] = SetCoolTime(arg1, arg2, 3037, 36, f2_local0[13], 0)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3019, 36, f2_local0[14], 0)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3022, 24, f2_local0[15], 0)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3038, 28, f2_local0[16], 0)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[23], 0)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 8, f2_local0[24], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Marenia212000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Marenia212000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Marenia212000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Marenia212000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Marenia212000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Marenia212000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Marenia212000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Marenia212000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Marenia212000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Marenia212000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Marenia212000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Marenia212000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Marenia212000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Marenia212000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Marenia212000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Marenia212000_Act16)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Marenia212000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Marenia212000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Marenia212000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Marenia212000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Marenia212000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Marenia212000_Act25)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Marenia212000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, Marenia212000_Act29)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Marenia212000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Marenia212000_Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, Marenia212000_Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, Marenia212000_Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, Marenia212000_Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, Marenia212000_Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, Marenia212000_Act46)
    f2_local1[50] = REGIST_FUNC(arg1, arg2, Marenia212000_Act50)
    local f2_local6 = REGIST_FUNC(arg1, arg2, Marenia212000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6)
    
end

function Marenia212000_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5
    local f3_local2 = 0
    local f3_local3 = 999
    local f3_local4 = 50
    local f3_local5 = 0
    local f3_local6 = 3
    local f3_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f3_local2 = 30
        f3_local3 = 999
        f3_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 5
    local f3_local9 = 3000
    local f3_local10 = TARGET_ENE_0
    local f3_local11 = 12
    local f3_local12 = 0
    local f3_local13 = 0
    local f3_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
    local f3_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f3_local8, f3_local9, f3_local10, f3_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act02(arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 3
    local f4_local2 = 0
    local f4_local3 = 999
    local f4_local4 = 50
    local f4_local5 = 0
    local f4_local6 = 3
    local f4_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f4_local2 = 30
        f4_local3 = 999
        f4_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 5
    local f4_local9 = 3024
    local f4_local10 = TARGET_ENE_0
    local f4_local11 = 12
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
    local f4_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f4_local8, f4_local9, f4_local10, f4_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 3
    local f5_local2 = 0
    local f5_local3 = 999
    local f5_local4 = 50
    local f5_local5 = 0
    local f5_local6 = 3
    local f5_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f5_local2 = 30
        f5_local3 = 999
        f5_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 5
    local f5_local9 = 3011
    local f5_local10 = 3012
    local f5_local11 = TARGET_ENE_0
    local f5_local12 = 24
    local f5_local13 = 0
    local f5_local14 = 0
    local f5_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f5_local8, f5_local9, f5_local11, f5_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f5_local8, f5_local10, f5_local11, successDist, f5_local13, f5_local14, f5_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act04(arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 7
    local f6_local2 = 0
    local f6_local3 = 999
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 3
    local f6_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f6_local2 = 30
        f6_local3 = 999
        f6_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    local f6_local8 = 5
    local f6_local9 = 3008
    local f6_local10 = TARGET_ENE_0
    local f6_local11 = 12
    local f6_local12 = 0
    local f6_local13 = 0
    local f6_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f6_local8, f6_local9, f6_local10, f6_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act05(arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 1
    local f7_local2 = 0
    local f7_local3 = 999
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 3
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 5
    local f7_local9 = 3007
    local f7_local10 = TARGET_ENE_0
    local f7_local11 = 12
    local f7_local12 = 0
    local f7_local13 = 0
    local f7_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18107)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f7_local8, f7_local9, f7_local10, f7_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 5
    local f8_local2 = 0
    local f8_local3 = 999
    local f8_local4 = 50
    local f8_local5 = 0
    local f8_local6 = 3
    local f8_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f8_local2 = 30
        f8_local3 = 999
        f8_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    local f8_local8 = 5
    local f8_local9 = 3010
    local f8_local10 = TARGET_ENE_0
    local f8_local11 = 12
    local f8_local12 = 0
    local f8_local13 = 0
    local f8_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f8_local8, f8_local9, f8_local10, f8_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act07(arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 3
    local f9_local2 = 0
    local f9_local3 = 999
    local f9_local4 = 50
    local f9_local5 = 0
    local f9_local6 = 3
    local f9_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f9_local2 = 30
        f9_local3 = 999
        f9_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 5
    local f9_local9 = 3025
    local f9_local10 = TARGET_ENE_0
    local f9_local11 = 12
    local f9_local12 = 0
    local f9_local13 = 0
    local f9_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
    local f9_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f9_local8, f9_local9, f9_local10, f9_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act08(arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 3
    local f10_local2 = 0
    local f10_local3 = 999
    local f10_local4 = 50
    local f10_local5 = 0
    local f10_local6 = 3
    local f10_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f10_local2 = 30
        f10_local3 = 999
        f10_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    local f10_local8 = 5
    local f10_local9 = 3026
    local f10_local10 = TARGET_ENE_0
    local f10_local11 = 12
    local f10_local12 = 0
    local f10_local13 = 0
    local f10_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
    local f10_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f10_local8, f10_local9, f10_local10, f10_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act09(arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 5.3
    local f11_local2 = 0
    local f11_local3 = 999
    local f11_local4 = 50
    local f11_local5 = 0
    local f11_local6 = 3
    local f11_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f11_local2 = 30
        f11_local3 = 999
        f11_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    local f11_local8 = 5
    local f11_local9 = 3030
    local f11_local10 = TARGET_ENE_0
    local f11_local11 = 12
    local f11_local12 = 0
    local f11_local13 = 0
    local f11_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16030)
    local f11_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f11_local8, f11_local9, f11_local10, f11_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act10(arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 2.4
    local f12_local2 = 0
    local f12_local3 = 999
    local f12_local4 = 100
    local f12_local5 = 0
    local f12_local6 = 3
    local f12_local7 = 3
    Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    local f12_local8 = 5
    local f12_local9 = 3016
    local f12_local10 = TARGET_ENE_0
    local f12_local11 = 12
    local f12_local12 = 0
    local f12_local13 = 0
    local f12_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f12_local8, f12_local9, f12_local10, f12_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act11(arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 5
    local f13_local2 = 0
    local f13_local3 = 999
    local f13_local4 = 50
    local f13_local5 = 0
    local f13_local6 = 3
    local f13_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f13_local2 = 30
        f13_local3 = 999
        f13_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    local f13_local8 = 5
    local f13_local9 = 3016
    local f13_local10 = 3031
    local f13_local11 = TARGET_ENE_0
    local f13_local12 = 24
    local f13_local13 = 0
    local f13_local14 = 0
    local f13_local15 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f13_local8, f13_local9, f13_local11, f13_local12, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f13_local8, f13_local10, f13_local11, successDist, f13_local13, f13_local14, f13_local15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act12(arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 18.5
    local f14_local2 = 0
    local f14_local3 = 999
    local f14_local4 = 100
    local f14_local5 = 0
    local f14_local6 = 3
    local f14_local7 = 3
    Approach_Act_Flex(arg0, arg1, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6, f14_local7)
    local f14_local8 = 5
    local f14_local9 = 3017
    local f14_local10 = TARGET_ENE_0
    local f14_local11 = 18
    local f14_local12 = 0
    local f14_local13 = 0
    local f14_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f14_local8, f14_local9, f14_local10, f14_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act13(arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 18.5
    local f15_local2 = 0
    local f15_local3 = 999
    local f15_local4 = 100
    local f15_local5 = 0
    local f15_local6 = 3
    local f15_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18444) == false and arg0:HasSpecialEffectId(TARGET_SELF, 18442) == false and arg0:HasSpecialEffectId(TARGET_SELF, 18443) == false and arg0:HasSpecialEffectId(TARGET_SELF, 18445) == false then
        Approach_Act_Flex(arg0, arg1, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6, f15_local7)
    end
    local f15_local8 = 5
    local f15_local9 = 3037
    local f15_local10 = 3017
    local f15_local11 = 3038
    local f15_local12 = 20005
    local f15_local13 = 20006
    local f15_local14 = TARGET_ENE_0
    local f15_local15 = 18
    local f15_local16 = 0
    local f15_local17 = 0
    local f15_local18 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
    if arg0:HasSpecialEffectId(TARGET_SELF, 18444) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local10, f15_local14, f15_local15, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 18445) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local11, f15_local14, f15_local15, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 18442) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local12, f15_local14, f15_local15, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 18443) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local13, f15_local14, f15_local15, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f15_local8, f15_local9, f15_local14, f15_local15, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act14(arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 12
    local f16_local2 = 0
    local f16_local3 = 999
    local f16_local4 = 100
    local f16_local5 = 0
    local f16_local6 = 3
    local f16_local7 = 3
    local f16_local8 = 30
    local f16_local9 = 3019
    local f16_local10 = TARGET_ENE_0
    local f16_local11 = 30
    local f16_local12 = 0
    local f16_local13 = 0
    local f16_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f16_local8, f16_local9, f16_local10, f16_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act15(arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = 0
    local f17_local3 = 999
    local f17_local4 = 50
    local f17_local5 = 0
    local f17_local6 = 3
    local f17_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f17_local2 = 30
        f17_local3 = 999
        f17_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6, f17_local7)
    local f17_local8 = 5
    local f17_local9 = 3022
    local f17_local10 = TARGET_ENE_0
    local f17_local11 = 12
    local f17_local12 = 0
    local f17_local13 = 0
    local f17_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
    local f17_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f17_local8, f17_local9, f17_local10, f17_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act16(arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 9.6
    local f18_local2 = 0
    local f18_local3 = 999
    local f18_local4 = 50
    local f18_local5 = 0
    local f18_local6 = 3
    local f18_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f18_local2 = 30
        f18_local3 = 999
        f18_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6, f18_local7)
    local f18_local8 = 8
    local f18_local9 = 3038
    local f18_local10 = TARGET_ENE_0
    local f18_local11 = 12
    local f18_local12 = 0
    local f18_local13 = 0
    local f18_local14 = 0
    local f18_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f18_local8, f18_local9, f18_local10, f18_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act20(arg0, arg1, arg2)
    local f19_local0 = 3
    local f19_local1 = TARGET_ENE_0
    local f19_local2 = 2
    local f19_local3 = TARGET_SELF
    local f19_local4 = false
    local f19_local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act21(arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 3)
    local f20_local1 = TARGET_ENE_0
    local f20_local2 = 10
    local f20_local3 = TARGET_ENE_0
    local f20_local4 = true
    local f20_local5 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f20_local0, f20_local1, f20_local2, f20_local3, f20_local4, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act22(arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(2.5, 3.5)
    local f21_local1 = TARGET_ENE_0
    local f21_local2 = arg0:GetRandam_Int(0, 1)
    local f21_local3 = arg0:GetRandam_Int(60, 90)
    local f21_local4 = 3
    local f21_local5 = TARGET_SELF
    local f21_local6 = true
    local f21_local7 = true
    local f21_local8 = arg0:GetDist(TARGET_ENE_0)
    if f21_local8 > 8.5 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 8)
    else
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local0, f21_local1, f21_local2, f21_local3, f21_local6, f21_local7, guardActionId)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act23(arg0, arg1, arg2)
    local f22_local0 = 5
    local f22_local1 = 1
    local f22_local2 = -1
    local f22_local3 = -1
    local f22_local4 = -1
    local f22_local5 = TARGET_ENE_0
    local f22_local6 = 3
    local f22_local7 = 0
    local f22_local8 = true
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
    arg0:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 30, 180, 3.8)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6, f22_local7, f22_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act24(arg0, arg1, arg2)
    local f23_local0 = 5
    local f23_local1 = -1
    local f23_local2 = 1
    local f23_local3 = -1
    local f23_local4 = -1
    local f23_local5 = TARGET_ENE_0
    local f23_local6 = 3
    local f23_local7 = 0
    local f23_local8 = true
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6, f23_local7, f23_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act25(arg0, arg1, arg2)
    local f24_local0 = 5
    local f24_local1 = -1
    local f24_local2 = -1
    local f24_local3 = 1
    local f24_local4 = 2
    local f24_local5 = TARGET_ENE_0
    local f24_local6 = 3
    local f24_local7 = 0
    local f24_local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f24_local0, f24_local1, f24_local2, 1, -1, f24_local5, f24_local6, f24_local7, f24_local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, f24_local0, f24_local1, f24_local2, -1, 1, f24_local5, f24_local6, f24_local7, f24_local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act28(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3023, TARGET_ENE_0, 99, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act29(arg0, arg1, arg2)
    local f26_local0 = arg0:GetDist(TARGET_ENE_0)
    local f26_local1 = 3
    local f26_local2 = 0
    local f26_local3 = 999
    local f26_local4 = 50
    local f26_local5 = 0
    local f26_local6 = 3
    local f26_local7 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 18000) == false then
        f26_local2 = 30
        f26_local3 = 999
        f26_local4 = 50
    end
    Approach_Act_Flex(arg0, arg1, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6, f26_local7)
    local f26_local8 = 5
    local f26_local9 = 3039
    local f26_local10 = TARGET_ENE_0
    local f26_local11 = 12
    local f26_local12 = 0
    local f26_local13 = 0
    local f26_local14 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
    local f26_local15 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f26_local8, f26_local9, f26_local10, f26_local11, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act40(arg0, arg1, arg2)
    local f27_local0 = arg0:GetDist(TARGET_ENE_0)
    local f27_local1 = 4
    local f27_local2 = 0
    local f27_local3 = 999
    local f27_local4 = 100
    local f27_local5 = 0
    local f27_local6 = 3
    local f27_local7 = 3
    Approach_Act_Flex(arg0, arg1, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6, f27_local7)
    local f27_local8 = 5
    local f27_local9 = 3000
    local f27_local10 = 3001
    local f27_local11 = 3002
    local f27_local12 = 3003
    local f27_local13 = 3004
    local f27_local14 = 3005
    local f27_local15 = 3006
    local f27_local16 = 3013
    local f27_local17 = 3014
    local f27_local18 = 3020
    local f27_local19 = TARGET_ENE_0
    local f27_local20 = 12
    local f27_local21 = 0
    local f27_local22 = 0
    local f27_local23 = 0
    local f27_local24 = arg0:GetRandam_Int(1, 100)
    if f27_local24 < 25 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local8, f27_local9, f27_local19, f27_local20, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local10, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local11, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local12, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local13, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
    elseif f27_local24 < 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local8, f27_local9, f27_local19, f27_local20, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local10, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local11, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local12, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local16, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
    elseif f27_local24 < 75 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local8, f27_local9, f27_local19, f27_local20, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local10, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local18, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local17, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f27_local8, f27_local9, f27_local19, f27_local20, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local14, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f27_local8, f27_local15, f27_local19, successDist, f27_local21, f27_local22, f27_local23)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act41(arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = 3.5
    local f28_local2 = 0
    local f28_local3 = 999
    local f28_local4 = 100
    local f28_local5 = 0
    local f28_local6 = 3
    local f28_local7 = 3
    Approach_Act_Flex(arg0, arg1, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6, f28_local7)
    local f28_local8 = 5
    local f28_local9 = 3000
    local f28_local10 = 3001
    local f28_local11 = 3002
    local f28_local12 = 3003
    local f28_local13 = 3004
    local f28_local14 = TARGET_ENE_0
    local f28_local15 = 12
    local f28_local16 = 0
    local f28_local17 = 0
    local f28_local18 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f28_local8, f28_local9, f28_local14, f28_local15, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f28_local8, f28_local10, f28_local14, successDist, f28_local16, f28_local17, f28_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f28_local8, f28_local11, f28_local14, successDist, f28_local16, f28_local17, f28_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f28_local8, f28_local12, f28_local14, successDist, f28_local16, f28_local17, f28_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f28_local8, f28_local13, f28_local14, successDist, f28_local16, f28_local17, f28_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act42(arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    local f29_local1 = 2.5
    local f29_local2 = 0
    local f29_local3 = 999
    local f29_local4 = 100
    local f29_local5 = 0
    local f29_local6 = 3
    local f29_local7 = 3
    Approach_Act_Flex(arg0, arg1, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6, f29_local7)
    local f29_local8 = 5
    local f29_local9 = 3000
    local f29_local10 = 3001
    local f29_local11 = 3002
    local f29_local12 = 3003
    local f29_local13 = 3013
    local f29_local14 = TARGET_ENE_0
    local f29_local15 = 12
    local f29_local16 = 0
    local f29_local17 = 0
    local f29_local18 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f29_local8, f29_local9, f29_local14, f29_local15, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f29_local8, f29_local10, f29_local14, successDist, f29_local16, f29_local17, f29_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f29_local8, f29_local11, f29_local14, successDist, f29_local16, f29_local17, f29_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f29_local8, f29_local12, f29_local14, successDist, f29_local16, f29_local17, f29_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f29_local8, f29_local13, f29_local14, successDist, f29_local16, f29_local17, f29_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act43(arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    local f30_local1 = 2.5
    local f30_local2 = 0
    local f30_local3 = 999
    local f30_local4 = 100
    local f30_local5 = 0
    local f30_local6 = 3
    local f30_local7 = 3
    Approach_Act_Flex(arg0, arg1, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6, f30_local7)
    local f30_local8 = 5
    local f30_local9 = 3000
    local f30_local10 = 3001
    local f30_local11 = 3020
    local f30_local12 = 3014
    local f30_local13 = TARGET_ENE_0
    local f30_local14 = 12
    local f30_local15 = 0
    local f30_local16 = 0
    local f30_local17 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f30_local8, f30_local9, f30_local13, f30_local14, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f30_local8, f30_local10, f30_local13, successDist, f30_local15, f30_local16, f30_local17)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f30_local8, f30_local11, f30_local13, successDist, f30_local15, f30_local16, f30_local17)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f30_local8, f30_local12, f30_local13, successDist, f30_local15, f30_local16, f30_local17)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act44(arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = 2.5
    local f31_local2 = 0
    local f31_local3 = 999
    local f31_local4 = 100
    local f31_local5 = 0
    local f31_local6 = 3
    local f31_local7 = 3
    Approach_Act_Flex(arg0, arg1, f31_local1, f31_local2, f31_local3, f31_local4, f31_local5, f31_local6, f31_local7)
    local f31_local8 = 5
    local f31_local9 = 3000
    local f31_local10 = 3005
    local f31_local11 = 3006
    local f31_local12 = TARGET_ENE_0
    local f31_local13 = 12
    local f31_local14 = 0
    local f31_local15 = 0
    local f31_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f31_local8, f31_local9, f31_local12, f31_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f31_local8, f31_local10, f31_local12, successDist, f31_local14, f31_local15, f31_local16)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f31_local8, f31_local11, f31_local12, successDist, f31_local14, f31_local15, f31_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act45(arg0, arg1, arg2)
    local f32_local0 = arg0:GetDist(TARGET_ENE_0)
    local f32_local1 = 3.5
    local f32_local2 = 0
    local f32_local3 = 999
    local f32_local4 = 100
    local f32_local5 = 0
    local f32_local6 = 3
    local f32_local7 = 3
    Approach_Act_Flex(arg0, arg1, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6, f32_local7)
    local f32_local8 = 5
    local f32_local9 = 3000
    local f32_local10 = 3001
    local f32_local11 = 3002
    local f32_local12 = 3027
    local f32_local13 = 3006
    local f32_local14 = TARGET_ENE_0
    local f32_local15 = 12
    local f32_local16 = 0
    local f32_local17 = 0
    local f32_local18 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f32_local8, f32_local9, f32_local14, f32_local15, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f32_local8, f32_local10, f32_local14, successDist, f32_local16, f32_local17, f32_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f32_local8, f32_local11, f32_local14, successDist, f32_local16, f32_local17, f32_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f32_local8, f32_local12, f32_local14, successDist, f32_local16, f32_local17, f32_local18)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f32_local8, f32_local13, f32_local14, successDist, f32_local16, f32_local17, f32_local18)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act46(arg0, arg1, arg2)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = 3.5
    local f33_local2 = 0
    local f33_local3 = 999
    local f33_local4 = 100
    local f33_local5 = 0
    local f33_local6 = 3
    local f33_local7 = 3
    Approach_Act_Flex(arg0, arg1, f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6, f33_local7)
    local f33_local8 = 5
    local f33_local9 = 3000
    local f33_local10 = 3027
    local f33_local11 = 3013
    local f33_local12 = TARGET_ENE_0
    local f33_local13 = 12
    local f33_local14 = 0
    local f33_local15 = 0
    local f33_local16 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f33_local8, f33_local9, f33_local12, f33_local13, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f33_local8, f33_local10, f33_local12, successDist, f33_local14, f33_local15, f33_local16)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, f33_local8, animeID3, f33_local12, successDist, f33_local14, f33_local15, f33_local16)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_Act50(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_EVENT, 18035) then
        Approach_Act_Flex(arg0, arg1, 1, 0, 999, 100, 0, 3, 3)
    elseif arg0:HasSpecialEffectId(TARGET_EVENT, 18030) then
        Approach_Act_Flex(arg0, arg1, 1, 0, 999, 0, 0, 3, 3)
    elseif arg0:HasSpecialEffectId(TARGET_EVENT, 18032) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 0, arg0:GetRandam_Int(30, 60), isWalk, true, 0)
    elseif arg0:HasSpecialEffectId(TARGET_EVENT, 18033) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, 1, arg0:GetRandam_Int(30, 60), isWalk, true, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 60), isWalk, true, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Marenia212000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Marenia212000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f38_local0 = arg1:GetRandam_Int(1, 100)
    local f38_local1 = arg1:GetRandam_Int(1, 100)
    local f38_local2 = arg1:GetRandam_Int(1, 100)
    local f38_local3 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and arg1:HasSpecialEffectId(TARGET_SELF, 18000) == false and arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 90, 2.4) and f38_local0 < 30 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) and arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        arg2:ClearSubGoal()
        local f38_local4 = arg1:GetDist(TARGET_ENE_0)
        local f38_local5 = arg1:GetRandam_Int(1, 2)
        if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and f38_local4 < 20 and f38_local4 > 10 and f38_local1 < 30 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 180)
            return true
        elseif f38_local4 < 4.2 and f38_local5 < 80 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 0, 180)
            return true
        elseif f38_local5 == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 18097) == false then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 18098) == false then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            return true
        elseif f38_local5 == 1 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            return true
        else
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            return true
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_OnCreateDamage) and arg1:GetNumber(1) == 3 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_UseItem) then
        local f38_local4 = arg1:HasSpecialEffectId(TARGET_SELF, 5026)
        if f38_local4 then
            f38_local4 = 40
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                f38_local4 = 80
            end
            if f38_local3 < 4 then

            elseif f38_local3 < 6.4 then
                if f38_local0 < f38_local4 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3008, TARGET_ENE_0, 4, 0, 0, 90)
                    return true
                end
            elseif f38_local3 < 10 then
                if f38_local0 < f38_local4 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3013, TARGET_ENE_0, 4, 0, 0, 90)
                    return true
                end
            elseif f38_local3 < 20 and arg1:HasSpecialEffectId(TARGET_SELF, 18000) and arg1:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3017, TARGET_ENE_0, 4, 0, 0, 90)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 18021) then
            if arg1:HasSpecialEffectId(TARGET_EVENT, 18250) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 12, 0, 0, 0)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18251) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 90)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18252) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18253) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18254) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18255) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18256) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18257) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3007, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18258) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18259) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18260) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18110)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18261) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18111)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3011, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18262) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18112)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18263) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18113)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18264) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18265) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18266) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18116)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18267) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18268) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18118)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18269) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18119)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18270) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18271) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18272) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18273) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18123)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18274) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18275) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18276) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18277) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18278) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18128)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18279) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18129)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18280) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18281) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18282) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18132)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18283) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18284) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18134)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18285) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18135)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3035, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18286) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18287) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18137)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18288) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18138)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 4, 0, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18290) then
                arg2:ClearSubGoal()
                Approach_Act_Flex(arg1, arg2, 1, 0, 999, 50, 0, 3, 3)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18295) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18297) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
            elseif arg1:HasSpecialEffectId(TARGET_EVENT, 18298) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
            end
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 18005) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18440) == true then
                    local f38_local4 = arg1:GetRandam_Int(1, 100)
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18087) == false and f38_local4 < 0 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 4, 0, 180)
                        return true
                    end
                end
                if f38_local3 < 4.2 then
                    if arg1:IsFinishTimer(0) == false then
                        local f38_local4 = 10
                        if arg1:HasSpecialEffectId(TARGET_SELF, 18000) == true then
                            f38_local4 = 40
                        end
                        local f38_local5 = arg1:GetTimer(0)
                        arg1:SetStringIndexedNumber("CounterProb", f38_local4 + 80 * (10 - f38_local5) / 10)
                        if f38_local0 < f38_local4 + 80 * (10 - f38_local5) / 10 then
                            arg2:ClearSubGoal()
                            arg1:SetTimer(0, 0.1)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                            return true
                        end
                    else
                        arg1:SetTimer(0, 10)
                        arg1:SetStringIndexedNumber("CounterProb", 0)
                    end
                end
            elseif arg1:IsFinishTimer(0) == false then
                local f38_local4 = 60
                local f38_local5 = arg1:GetTimer(0)
                local f38_local6 = f38_local4 + 100 * (10 - f38_local5) / 10
                arg1:SetStringIndexedNumber("X2", f38_local5)
                arg1:SetStringIndexedNumber("CounterProb", f38_local4 + 100 * (10 - f38_local5) / 10)
                arg1:SetStringIndexedNumber("fate", f38_local0)
                if f38_local0 < f38_local4 + 100 * (10 - f38_local5) / 10 then
                    local f38_local7 = arg1:GetDist(TARGET_ENE_0)
                    local f38_local8 = 0
                    local f38_local9 = 0
                    local f38_local10 = 0
                    local f38_local11 = 0
                    local f38_local12 = 0
                    if f38_local7 < 3 then
                        if arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 45, 90, 3) then
                            f38_local9 = 80
                        end
                        f38_local8 = 20
                    elseif f38_local7 < 5.4 then
                        f38_local8 = 20
                    else
                        arg1:SetStringIndexedNumber("testetet", 4)
                        f38_local10 = 10
                        f38_local11 = 10
                    end
                    local f38_local13 = f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
                    if f38_local13 ~= 0 then
                        local f38_local14 = arg1:GetRandam_Int(1, f38_local13)
                        if f38_local14 <= f38_local8 then
                            arg2:ClearSubGoal()
                            arg1:SetTimer(0, 0.1)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                            return true
                        elseif f38_local14 <= f38_local8 + f38_local9 then
                            arg2:ClearSubGoal()
                            arg1:SetTimer(0, 0.1)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18171)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
                            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
                            return true
                        elseif f38_local14 <= f38_local8 + f38_local9 + f38_local10 then
                            arg2:ClearSubGoal()
                            arg1:SetTimer(0, 0.1)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
                            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
                            return true
                        elseif f38_local14 <= f38_local8 + f38_local9 + f38_local10 + Ath6003 then
                            arg2:ClearSubGoal()
                            arg1:SetTimer(0, 0.1)
                            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
                            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                            return true
                        end
                    end
                    return true
                end
            else
                arg1:SetTimer(0, 10)
                arg1:SetStringIndexedNumber("CounterProb", 0)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18045) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                local f38_local4 = arg1:GetDist(TARGET_ENE_0)
                local f38_local5 = 0
                local f38_local6 = 0
                local f38_local7 = 0
                local f38_local8 = 0
                local f38_local9 = 0
                if not not arg1:HasSpecialEffectId(TARGET_SELF, 18046) or arg1:HasSpecialEffectId(TARGET_SELF, 18047) then
                    if f38_local4 < 4.2 then
                        f38_local5 = 0
                        f38_local6 = 3
                        f38_local7 = 47
                        f38_local8 = 30
                        f38_local9 = 0
                    elseif f38_local4 < 12.8 then
                        f38_local5 = 0
                        f38_local6 = 40
                        f38_local7 = 0
                        f38_local8 = 60
                        f38_local9 = 0
                    else
                        f38_local5 = 0
                        f38_local7 = 0
                        f38_local9 = 100
                    end
                elseif f38_local4 < 4.2 then
                    f38_local5 = 0
                    f38_local7 = 30
                    f38_local8 = 20
                    f38_local9 = 50
                elseif f38_local4 < 8.8 then
                    f38_local5 = 0
                    f38_local7 = 0
                    f38_local9 = 100
                else
                    f38_local5 = 0
                    f38_local7 = 0
                    f38_local9 = 100
                end
                local f38_local10 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9
                if f38_local10 ~= 0 then
                    local f38_local11 = arg1:GetRandam_Int(1, f38_local10)
                    if f38_local11 <= f38_local5 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif f38_local11 <= f38_local5 + f38_local6 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 16, 0, 180)
                        return true
                    elseif f38_local11 <= f38_local5 + f38_local6 + f38_local7 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif f38_local11 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 18046) and f38_local0 < 100 then
                if f38_local1 < 30 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18171)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18139)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 4, 0, 180)
                else
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18115)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3015, TARGET_ENE_0, 4, 0, 180)
                end
                return true
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 18146) or arg1:HasSpecialEffectId(TARGET_SELF, 18147) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetHpRate(TARGET_SELF)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                if f38_local4 < 4.2 then
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 100
                elseif f38_local4 < 7.5 then
                    f38_local6 = 10
                    f38_local7 = 0
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 10
                    f38_local11 = 0
                elseif f38_local4 < 14 then
                    f38_local6 = 0
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 10
                    f38_local10 = 40
                    f38_local11 = 0
                elseif f38_local4 < 20 then
                    f38_local6 = 0
                    f38_local7 = 20
                    f38_local8 = 20
                    f38_local9 = 20
                    f38_local10 = 20
                    f38_local11 = 0
                else
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 20
                    f38_local11 = 0
                end
            elseif f38_local4 < 4.2 then
                f38_local6 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 100
            elseif f38_local4 < 7.5 then
                f38_local6 = 10
                f38_local9 = 0
                f38_local10 = 10
                f38_local11 = 0
            elseif f38_local4 < 14 then
                f38_local6 = 0
                f38_local9 = 10
                f38_local10 = 40
                f38_local11 = 0
            elseif f38_local4 < 20 then
                f38_local6 = 0
                f38_local9 = 20
                f38_local10 = 30
                f38_local11 = 0
            else
                f38_local6 = 0
                f38_local9 = 0
                f38_local10 = 20
                f38_local11 = 0
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18041) == false then
                if f38_local5 > 0.72 then
                    f38_local9 = 0
                else
                    f38_local9 = f38_local9 * 20
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18043) == false then
                if f38_local5 > 0.42 then
                    f38_local8 = 0
                else
                    f38_local8 = f38_local8 * 20
                end
            end
            local f38_local12 = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11
            if f38_local12 ~= 0 then
                local f38_local13 = arg1:GetRandam_Int(1, f38_local12)
                if f38_local13 <= f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18108)
                    arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3008, TARGET_ENE_0, 4, 0, 0, 90)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3019, TARGET_ENE_0, 16, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg1:SetStringIndexedNumber("step4", 1)
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18178) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 < 6.3 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18128)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 4, 0, 180)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18179) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 < 6.3 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18129)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3029, TARGET_ENE_0, 4, 0, 180)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18181) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and f38_local4 > 3.4 and f38_local4 < 8.3 and f38_local5 < 50 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18131)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3031, TARGET_ENE_0, 4, 0, 90)
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18166) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and f38_local4 <= 5.4 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18066) == false then
                    f38_local6 = 40
                end
                f38_local7 = 50
                if f38_local5 < f38_local6 / (f38_local6 + f38_local7) * 100 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18170) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            arg1:SetNumber(1, f38_local4)
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 90, 10) and f38_local4 < 4.2 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18171) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local5 < 20 then
                arg2:ClearSubGoal()
                arg1:SetTimer(0, 0.1)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18155) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            if arg1:GetRandam_Int(1, 100) < 35 and f38_local4 < 3 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3005, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18151) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 40
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) == true then
                f38_local6 = 20
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18077) == false and f38_local4 < 2 and f38_local5 < f38_local6 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f38_local4 < 10 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18101) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            if f38_local4 < 2.4 then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local11 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local12 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local10 = 10
                    end
                    f38_local9 = 80
                    f38_local5 = 20
                else
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local11 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local12 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local10 = 10
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) and arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 5
                    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 18075) or arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 15
                    else
                        f38_local5 = 25
                    end
                    f38_local6 = 5
                    f38_local9 = 5
                    f38_local15 = 20
                end
            elseif f38_local4 < 4.8 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) and arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 12
                elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 18075) or arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 18
                else
                    f38_local5 = 24
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18080) == false then
                    f38_local13 = 6
                    f38_local14 = 4
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18080) and f38_local4 > 3.8 then
                    f38_local16 = 10
                end
                if arg1:IsTargetGuard(TARGET_ENE_0) == true then
                    f38_local9 = 50
                else
                    f38_local9 = 10
                end
                f38_local6 = 10
                f38_local15 = 5
            elseif f38_local4 < 8.6 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local13 = 30
                    f38_local14 = 10
                else
                    f38_local13 = 20
                    f38_local14 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 30
                else
                    f38_local16 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif f38_local4 < 12 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 10
                else
                    f38_local7 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 40
                else
                    f38_local8 = 0
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 30
                else
                    f38_local16 = 35
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 20
                else
                    f38_local17 = 50
                end
            elseif f38_local4 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 20
                else
                    f38_local7 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and arg1:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local8 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 40
                else
                    f38_local17 = 60
                end
            end
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local11 = 0
                f38_local12 = 0
            end
            local f38_local18 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17
            if f38_local18 ~= 0 then
                local f38_local19 = arg1:GetRandam_Int(1, f38_local18)
                if f38_local19 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18102) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if f38_local4 < 2.8 then
                f38_local5 = 50
                if arg1:HasSpecialEffectId(TARGET_SELF, 18085) == false then
                    f38_local9 = 25
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18077) == false then
                    f38_local7 = 25
                end
            elseif f38_local4 < 5.5 then
                f38_local5 = 50
            elseif f38_local4 < 10 then
                f38_local10 = 60
                f38_local11 = 40
            end
            local f38_local12 = f38_local5 + f38_local7 + f38_local9 + f38_local10 + f38_local11
            if f38_local12 ~= 0 then
                local f38_local13 = arg1:GetRandam_Int(1, f38_local12)
                if f38_local13 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif f38_local13 <= f38_local5 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local5 + f38_local7 + Atk3036 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local5 + f38_local7 + Atk3036 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 18103) or arg1:HasSpecialEffectId(TARGET_SELF, 18130) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            if f38_local4 < 3.4 then
                f38_local5 = 40
                f38_local15 = 20
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 50
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                    f38_local10 = 10
                end
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f38_local9 = 80
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == true then
                    f38_local15 = 40
                else
                    f38_local15 = 20
                end
            elseif f38_local4 < 5.2 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local11 = 20
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local12 = 20
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 8
                    f38_local14 = 12
                end
                f38_local5 = 20
                f38_local7 = 20
            elseif f38_local4 < 7 then
                f38_local5 = 20
                f38_local7 = 50
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 40
                else
                    f38_local16 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif f38_local4 < 12 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18056) == false then
                    f38_local6 = 20
                else
                    f38_local6 = 0
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 40
                    f38_local14 = 20
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 40
                else
                    f38_local16 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 0
                else
                    f38_local17 = 0
                end
            elseif f38_local4 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local6 = 20
                else
                    f38_local6 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and arg1:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local8 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local17 = 40
                else
                    f38_local17 = 80
                end
            end
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local11 = 0
                f38_local12 = 0
            end
            local f38_local18 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17
            if f38_local18 ~= 0 then
                local f38_local19 = arg1:GetRandam_Int(1, f38_local18)
                if f38_local19 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local19 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 18107) or arg1:HasSpecialEffectId(TARGET_SELF, 18127) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            if 4 > taragetoDist then
                f38_local9 = 100
            elseif f38_local4 < 6 then
                f38_local6 = 20
                f38_local9 = 40
            elseif f38_local4 < 9.5 then
                f38_local6 = 40
            elseif f38_local4 < 18 then
                f38_local5 = 20
                Akt0000 = 20
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 60
                end
            end
            local f38_local10 = f38_local5 + f38_local6 + f38_local7 + f38_local9
            if f38_local10 ~= 0 then
                local f38_local11 = arg1:GetRandam_Int(1, f38_local10)
                if f38_local11 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local11 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local11 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local11 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18108) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            if f38_local4 < 2 then
                f38_local6 = 25
                f38_local7 = 10
                f38_local8 = 40
                f38_local9 = 20
            elseif f38_local4 < 5 then
                f38_local6 = 30
                f38_local7 = 10
                f38_local8 = 50
            end
            local f38_local11 = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10
            if f38_local11 ~= 0 then
                local f38_local12 = arg1:GetRandam_Int(1, f38_local11)
                if f38_local12 <= f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif f38_local12 <= f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local12 <= f38_local6 + f38_local7 + f38_local8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local12 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18112) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 > 6 then
                if f38_local4 < 9.5 then
                    if f38_local5 < 40 then
                        arg2:ClearSubGoal()
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                        return true
                    elseif f38_local5 < 60 then
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                        return true
                    end
                elseif f38_local4 < 12.5 and f38_local5 < 80 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 18114) or arg1:HasSpecialEffectId(TARGET_SELF, 18113) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = arg1:GetDist(TARGET_ENE_0)
            local f38_local7 = 0
            local f38_local8 = 0
            if f38_local6 < 5.6 then
                local f38_local9 = 100
            elseif f38_local6 < 8.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 40
                end
                f38_local8 = 60
            elseif f38_local6 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 60
                end
                f38_local8 = 40
            end
            local f38_local9 = f38_local7 + f38_local8
            if f38_local9 ~= 0 then
                local f38_local10 = arg1:GetRandam_Int(1, f38_local9)
                if f38_local10 <= f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18120) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                if f38_local4 < 2.6 then
                    f38_local6 = 0
                    f38_local9 = 40
                elseif f38_local4 < 4.2 then
                    f38_local8 = 20
                    f38_local9 = 40
                elseif f38_local4 < 7 then
                    f38_local8 = 20
                    f38_local9 = 40
                end
            elseif f38_local4 < 2.6 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local6 = 40
                    f38_local9 = 40
                else
                    f38_local5 = 30
                    f38_local6 = 30
                    f38_local11 = 40
                end
            elseif f38_local4 < 4.2 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local8 = 20
                    f38_local9 = 40
                else
                    f38_local5 = 60
                    f38_local6 = 40
                end
            elseif f38_local4 < 7 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local8 = 20
                    f38_local9 = 40
                else
                    f38_local8 = 50
                    f38_local10 = 20
                    f38_local12 = 30
                end
            elseif f38_local4 < 10 then
                f38_local7 = 30
                f38_local8 = 40
                f38_local12 = 10
                f38_local13 = 20
            end
            local f38_local14 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13
            if f38_local14 ~= 0 then
                local f38_local15 = arg1:GetRandam_Int(1, f38_local14)
                if f38_local15 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local15 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18121) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            if f38_local4 < 2.4 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local7 = 40
                    f38_local10 = 40
                else
                    f38_local5 = 40
                    f38_local6 = 30
                    f38_local7 = 20
                    f38_local12 = 10
                end
            elseif f38_local4 < 4 then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 30) then
                    f38_local9 = 20
                    f38_local10 = 40
                else
                    f38_local5 = 40
                    f38_local6 = 30
                    f38_local7 = 20
                    f38_local14 = 0
                end
            elseif f38_local4 < 8 then
                f38_local9 = 40
            elseif f38_local4 < 12 then
                f38_local8 = 40
            end
            if f38_local0 <= Atk3002 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 + f38_local9 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                return true
            elseif f38_local0 <= Atk3002 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18122) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetHpRate(TARGET_SELF)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                if f38_local4 < 2.4 then
                    f38_local6 = 20
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 0
                    f38_local12 = 20
                elseif f38_local4 < 4.8 then
                    f38_local6 = 10
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 10
                    f38_local11 = 10
                    f38_local12 = 20
                elseif f38_local4 < 12.8 then
                    f38_local6 = 0
                    f38_local7 = 10
                    f38_local8 = 10
                    f38_local9 = 0
                    f38_local10 = 15
                    f38_local11 = 15
                    f38_local12 = 0
                else
                    f38_local6 = 0
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                    f38_local10 = 0
                    f38_local11 = 0
                    f38_local12 = 20
                end
            elseif f38_local4 < 2.2 then
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            elseif f38_local4 < 12.6 then
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            else
                f38_local6 = 0
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
                f38_local10 = 0
                f38_local11 = 0
                f38_local12 = 20
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18041) == false then
                if f38_local5 > 0.72 then
                    f38_local11 = 0
                else
                    f38_local11 = f38_local11 * 20
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18043) == false then
                if f38_local5 > 0.42 then
                    f38_local8 = 0
                else
                    f38_local8 = f38_local8 * 20
                end
            end
            if arg1:HasSpecialEffectId(TARGET_SELF, 18042) == false then
                if f38_local5 > 0.64 then
                    f38_local10 = 0
                else
                    f38_local10 = f38_local10 * 20
                end
            end
            local f38_local13 = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
            if f38_local13 ~= 0 then
                local f38_local14 = arg1:GetRandam_Int(1, f38_local13)
                if f38_local14 <= f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18181)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, 4, 0, 90)
                    return true
                elseif f38_local14 <= f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 16, 3019, TARGET_ENE_0, 16, 0, 180)
                    return true
                elseif f38_local14 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18121)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3021, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif f38_local14 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18137)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3037, TARGET_ENE_0, 10, 0, 180)
                    return true
                elseif f38_local14 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg1:SetStringIndexedNumber("nagecount6", 1)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3038, TARGET_ENE_0, 10, 0, 180)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18128) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            if f38_local4 < 2.4 then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f38_local5 = 20
                    f38_local10 = 60
                    f38_local11 = 10
                    f38_local14 = 20
                else
                    f38_local5 = 30
                    f38_local6 = 10
                    f38_local10 = 0
                    f38_local11 = 10
                    f38_local14 = 30
                end
            elseif f38_local4 < 4.4 then
                f38_local5 = 70
                f38_local6 = 30
            elseif f38_local4 < 8.5 then
                f38_local8 = 40
                f38_local12 = 30
                f38_local13 = 10
                f38_local15 = 20
            elseif f38_local4 < 10.5 then
                f38_local8 = 30
                f38_local12 = 20
                f38_local13 = 10
                f38_local15 = 20
                f38_local15 = 20
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 10
                else
                    f38_local16 = 10
                end
            elseif f38_local4 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 50
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local16 = 50
                else
                    f38_local16 = 100
                end
            end
            local f38_local17 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16
            if f38_local17 ~= 0 then
                local f38_local18 = arg1:GetRandam_Int(1, f38_local17)
                if f38_local18 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local18 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18129) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            if f38_local4 < 5.4 then
                f38_local5 = 40
                f38_local6 = 40
                f38_local7 = 20
            end
            local f38_local13 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12
            if f38_local13 ~= 0 then
                local f38_local14 = arg1:GetRandam_Int(1, f38_local13)
                if f38_local14 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18101)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18103)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18127)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local14 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 18135) or arg1:HasSpecialEffectId(TARGET_SELF, 18136) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = 0
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            local f38_local18 = 0
            local f38_local19 = 0
            if f38_local4 < 2.4 then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f38_local10 = 80
                    f38_local5 = 20
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local12 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local13 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local11 = 10
                    end
                else
                    f38_local6 = 5
                    f38_local10 = 5
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local12 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local13 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local11 = 10
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) and arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 5
                    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 18075) or arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local5 = 15
                    else
                        f38_local5 = 25
                    end
                end
            elseif f38_local4 < 4.8 then
                f38_local6 = 10
                f38_local8 = 10
                f38_local10 = 10
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                    f38_local12 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                    f38_local13 = 30
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18075) and arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 12
                elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 18075) or arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                    f38_local5 = 18
                else
                    f38_local5 = 24
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18080) == false then
                    f38_local14 = 6
                    f38_local15 = 4
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18080) and f38_local4 > 3.8 then
                    f38_local18 = 10
                end
            elseif f38_local4 < 9.6 then
                f38_local8 = 30
                f38_local14 = 50
                f38_local15 = 10
            elseif f38_local4 < 12 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 10
                else
                    f38_local7 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 40
                else
                    f38_local9 = 0
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local18 = 30
                else
                    f38_local18 = 25
                end
            elseif f38_local4 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local7 = 20
                else
                    f38_local7 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and arg1:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local9 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local19 = 40
                else
                    f38_local19 = 60
                end
            end
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local12 = 0
                f38_local13 = 0
            end
            local f38_local20 = f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local18 + f38_local19
            if f38_local20 ~= 0 then
                local f38_local21 = arg1:GetRandam_Int(1, f38_local20)
                if f38_local21 <= f38_local5 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local21 <= f38_local5 + f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local18 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18116) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 < 5.4 then
                if f38_local5 < 75 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            elseif f38_local4 < 9 then
                return false
            elseif f38_local4 < 18 and f38_local5 < 60 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18117) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 < 5 then
                return false
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3032, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18131) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            if f38_local4 < 1.8 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                return true
            elseif f38_local4 < 6.8 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3034, TARGET_ENE_0, 4, 0, 180)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18115) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            local f38_local12 = 0
            local f38_local13 = 0
            local f38_local14 = 0
            local f38_local15 = 0
            local f38_local16 = 0
            local f38_local17 = 0
            local f38_local18 = 0
            local f38_local19 = 0
            local f38_local20 = 0
            if f38_local4 < 2.4 then
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    f38_local11 = 80
                    f38_local6 = 20
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local13 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local14 = 20
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local12 = 10
                    end
                else
                    f38_local7 = 5
                    f38_local11 = 5
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) == false then
                        f38_local13 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18076) == false then
                        f38_local14 = 30
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18072) == false then
                        f38_local12 = 10
                    end
                    if arg1:HasSpecialEffectId(TARGET_SELF, 18075) and arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local6 = 5
                    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 18075) or arg1:HasSpecialEffectId(TARGET_SELF, 18076) then
                        f38_local6 = 15
                    else
                        f38_local6 = 25
                    end
                end
            elseif f38_local4 < 4.8 then

            elseif f38_local4 < 9.6 then

            elseif f38_local4 < 12 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local9 = 10
                else
                    f38_local9 = 10
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 10
                else
                    f38_local8 = 20
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local10 = 40
                else
                    f38_local10 = 0
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local20 = 10
                else
                    f38_local20 = 10
                end
            elseif f38_local4 < 17.5 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local8 = 20
                else
                    f38_local8 = 15
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and arg1:HasSpecialEffectId(TARGET_SELF, 18067) == false then
                    f38_local10 = 40
                end
                if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                    f38_local20 = 40
                else
                    f38_local20 = 60
                end
            end
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 12) then
                f38_local13 = 0
                f38_local14 = 0
            end
            local f38_local21 = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 + f38_local19 + f38_local20
            if f38_local21 ~= 0 then
                local f38_local22 = arg1:GetRandam_Int(1, f38_local21)
                if f38_local22 <= f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 12, 0, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18106)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3006, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18114)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18122)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3022, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18178)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18179)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18136)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local22 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11 + f38_local12 + f38_local13 + f38_local14 + f38_local15 + f38_local16 + f38_local17 + f38_local19 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18139) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = 0
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            local f38_local10 = 0
            local f38_local11 = 0
            if f38_local4 < 2 then
                f38_local6 = 20
                f38_local8 = 40
                f38_local9 = 40
            elseif f38_local4 < 5 then
                f38_local6 = 10
                f38_local8 = 10
                f38_local9 = 40
                if arg1:HasSpecialEffectId(TARGET_SELF, 18064) == false then
                    f38_local7 = 40
                else
                    f38_local7 = 10
                end
            elseif f38_local4 < 12 then
                f38_local9 = 40
                f38_local10 = 20
                if arg1:HasSpecialEffectId(TARGET_SELF, 18064) == false then
                    f38_local7 = 40
                else
                    f38_local7 = 10
                end
            end
            local f38_local12 = f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 + f38_local11
            arg1:SetStringIndexedNumber("hajiki_dist", f38_local4)
            arg1:SetStringIndexedNumber("hajiki_sumAtk", f38_local12)
            arg1:SetStringIndexedNumber("hajiki_fate", f38_local5)
            if f38_local12 ~= 0 then
                local f38_local13 = arg1:GetRandam_Int(1, f38_local12)
                if f38_local13 <= f38_local6 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18102)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18151)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18155)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18130)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3030, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local13 <= f38_local6 + f38_local7 + f38_local8 + f38_local9 + f38_local10 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18133)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3033, TARGET_ENE_0, 4, 0, 180)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 18145) then
            local f38_local4 = arg1:GetDist(TARGET_ENE_0)
            local f38_local5 = arg1:GetRandam_Int(1, 100)
            local f38_local6 = arg1:GetDist(TARGET_ENE_0)
            local f38_local7 = 0
            local f38_local8 = 0
            local f38_local9 = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 18000) then
                if f38_local6 < 4.2 then
                    f38_local7 = 50
                    f38_local8 = 0
                    f38_local9 = 0
                elseif f38_local6 < 7.5 then
                    f38_local7 = 0
                    f38_local8 = 10
                    f38_local9 = 10
                elseif f38_local6 < 14 then
                    f38_local7 = 0
                    f38_local8 = 20
                    f38_local9 = 20
                elseif f38_local6 < 20 then
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 20
                else
                    f38_local7 = 0
                    f38_local8 = 0
                    f38_local9 = 0
                end
            elseif f38_local6 < 4.2 then
                f38_local7 = 50
                f38_local8 = 0
                f38_local9 = 10
            elseif f38_local6 < 7.5 then
                f38_local7 = 0
                f38_local8 = 10
                f38_local9 = 30
            elseif f38_local6 < 14 then
                f38_local7 = 0
                f38_local8 = 20
                f38_local9 = 40
            elseif f38_local6 < 20 then
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 20
            else
                f38_local7 = 0
                f38_local8 = 0
                f38_local9 = 0
            end
            local f38_local10 = f38_local7 + f38_local8 + f38_local9
            if f38_local10 ~= 0 then
                local f38_local11 = arg1:GetRandam_Int(1, f38_local10)
                if f38_local11 <= f38_local7 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18120)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 4, 0, 180)
                    return true
                elseif f38_local11 <= f38_local7 + f38_local8 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18145)
                    arg1:AddObserveAreaCustom(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 60, 180, 3.8)
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                    return true
                end
            end
        end
        local f38_local6 = "GetSpecialEffectActivateInterruptId"
        if arg1[f38_local6](arg1, 150) then
            arg2:ClearSubGoal()
            local f38_local5 = arg2
            local f38_local4 = arg2.AddSubGoal
            f38_local6 = GOAL_COMMON_LeaveTarget
            f38_local4(f38_local5, f38_local6, 5, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and f38_local3 > 10 and arg1:IsInsideTargetCustom(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 30, 90, 99) then
        arg2:ClearSubGoal()
        local f38_local4 = arg1:GetDist(TARGET_ENE_0)
        local f38_local5 = arg1:GetRandam_Int(1, 2)
        if arg1:HasSpecialEffectId(TARGET_SELF, 18000) and f38_local4 < 20 and f38_local4 > 10 and f38_local1 < 60 then
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18117)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, 4, 0, 180)
            return true
        elseif f38_local5 == 1 then
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18146)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
        else
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 18147)
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
        end
        return true
    end
    
end

RegisterTableGoal(GOAL_Marenia212000_AfterAttackAct, "Marenia212000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Marenia212000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f39_local0 = arg1:GetDist(TARGET_ENE_0)
    local f39_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if f39_local0 >= 5 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif f39_local0 >= 2 then
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


