RegisterTableGoal(GOAL_Giant476000_Battle, "Giant476000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Giant476000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetDistXZ(TARGET_ENE_0)
    local f2_local6 = arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = arg1:GetRandam_Int(1, 100)
    local f2_local8 = 1
    local f2_local9 = 1
    local f2_local10 = 1
    local f2_local11 = 1
    local f2_local12 = 1
    local f2_local13 = 1
    local f2_local14 = 1
    local f2_local15 = 1
    if f2_local4 >= 10 and f2_local5 <= 15 then
        f2_local8 = 1000
        f2_local9 = 1000
        f2_local10 = 1000
        f2_local11 = 1000
        f2_local12 = 10000
        f2_local13 = 1000
        f2_local14 = 10000
        f2_local15 = 1000
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12705) == false then
        if f2_local3 >= 40 then
            if f2_local6 <= 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                f2_local0[9] = 100
            elseif InsideRange(arg1, arg2, 180, 150, -6, 99) then
                f2_local0[40] = 100
            else
                f2_local0[2] = 5
                f2_local0[4] = 60 * f2_local8
                f2_local0[10] = 35
            end
        elseif f2_local3 >= 20 then
            if f2_local6 <= 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                f2_local0[9] = 100
            elseif InsideRange(arg1, arg2, 180, 150, -6, 99) then
                f2_local0[40] = 100
            else
                f2_local0[1] = 15
                f2_local0[2] = 15
                f2_local0[3] = 5
                f2_local0[4] = 40 * f2_local8
                f2_local0[6] = 25 * f2_local9
            end
        elseif f2_local3 >= 5 then
            if f2_local6 <= 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 12752) == true then
                f2_local0[9] = 100
            elseif InsideRange(arg1, arg2, 0, 120, -11, 99) then
                f2_local0[1] = 15
                f2_local0[2] = 5
                f2_local0[3] = 40
                f2_local0[4] = 10 * f2_local8
                f2_local0[6] = 10 * f2_local9
                f2_local0[14] = 10 * f2_local11
                f2_local0[16] = 10 * f2_local12
            elseif InsideRange(arg1, arg2, 270, 110, -6, 99) then
                f2_local0[2] = 40
                f2_local0[6] = 10 * f2_local9
                f2_local0[12] = 10
                f2_local0[14] = 5 * f2_local11
                f2_local0[15] = 25
            elseif InsideRange(arg1, arg2, 90, 110, -6, 99) then
                f2_local0[2] = 40
                f2_local0[6] = 10 * f2_local9
                f2_local0[12] = 10
                f2_local0[14] = 5 * f2_local11
                f2_local0[16] = 25 * f2_local12
            else
                f2_local0[12] = 20
                f2_local0[40] = 80
            end
        elseif f2_local6 <= 0.6 or arg1:HasSpecialEffectId(TARGET_SELF, 12752) == true then
            f2_local0[9] = 100
        elseif InsideRange(arg1, arg2, 0, 120, -11, 99) then
            f2_local0[5] = 10
            f2_local0[11] = 30
            f2_local0[14] = 15 * f2_local11
            f2_local0[16] = 5 * f2_local12
            f2_local0[17] = 10
            f2_local0[18] = 30
        elseif InsideRange(arg1, arg2, 270, 110, -6, 99) then
            f2_local0[5] = 20
            f2_local0[11] = 5
            f2_local0[12] = 5
            f2_local0[14] = 10 * f2_local11
            f2_local0[15] = 30
            f2_local0[18] = 30
        elseif InsideRange(arg1, arg2, 90, 110, -6, 99) then
            f2_local0[5] = 10
            f2_local0[11] = 5
            f2_local0[12] = 5
            f2_local0[14] = 10 * f2_local11
            f2_local0[16] = 30 * f2_local12
            f2_local0[17] = 15
            f2_local0[18] = 25
        else
            f2_local0[5] = 15
            f2_local0[12] = 30
            f2_local0[14] = 20 * f2_local11
            f2_local0[16] = 10 * f2_local12
            f2_local0[18] = 25
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12705) == true then
        if f2_local3 >= 40 then
            if InsideRange(arg1, arg2, 180, 150, -6, 99) then
                f2_local0[40] = 100
            elseif InsideRange(arg1, arg2, 0, 120, -11, 99) then
                f2_local0[2] = 5
                f2_local0[4] = 5 * f2_local8
                f2_local0[7] = 35
                f2_local0[8] = 35 * f2_local10
                f2_local0[10] = 20
            else
                f2_local0[2] = 10
                f2_local0[7] = 20
                f2_local0[8] = 30 * f2_local10
                f2_local0[10] = 40
            end
        elseif f2_local3 >= 20 then
            if InsideRange(arg1, arg2, 180, 150, -6, 99) then
                f2_local0[40] = 100
            elseif InsideRange(arg1, arg2, 0, 120, -11, 99) then
                f2_local0[1] = 5
                f2_local0[2] = 10
                f2_local0[3] = 5
                f2_local0[4] = 5 * f2_local8
                f2_local0[6] = 10 * f2_local9
                f2_local0[7] = 40
                f2_local0[8] = 25 * f2_local10
            else
                f2_local0[2] = 20
                f2_local0[6] = 20 * f2_local9
                f2_local0[8] = 60 * f2_local10
            end
        elseif f2_local3 >= 5 then
            if InsideRange(arg1, arg2, 0, 120, -11, 99) then
                f2_local0[1] = 5
                f2_local0[2] = 5
                f2_local0[3] = 20
                f2_local0[4] = 10 * f2_local8
                f2_local0[6] = 5 * f2_local9
                f2_local0[8] = 30 * f2_local10
                f2_local0[14] = 15 * f2_local11
                f2_local0[16] = 10 * f2_local12
            elseif InsideRange(arg1, arg2, 270, 110, -6, 99) then
                f2_local0[2] = 10
                f2_local0[6] = 10 * f2_local9
                f2_local0[8] = 40 * f2_local10
                f2_local0[12] = 10
                f2_local0[14] = 5 * f2_local11
                f2_local0[15] = 25
            elseif InsideRange(arg1, arg2, 90, 110, -6, 99) then
                f2_local0[2] = 10
                f2_local0[6] = 10 * f2_local9
                f2_local0[8] = 40 * f2_local10
                f2_local0[12] = 10
                f2_local0[14] = 5 * f2_local11
                f2_local0[16] = 25 * f2_local12
            else
                f2_local0[8] = 50 * f2_local10
                f2_local0[12] = 20
                f2_local0[40] = 30
            end
        elseif InsideRange(arg1, arg2, 0, 120, -11, 99) then
            f2_local0[5] = 10
            f2_local0[8] = 15 * f2_local10
            f2_local0[11] = 20
            f2_local0[13] = 20
            f2_local0[14] = 5 * f2_local11
            f2_local0[16] = 5 * f2_local12
            f2_local0[17] = 10
            f2_local0[18] = 15
        elseif InsideRange(arg1, arg2, 270, 110, -6, 99) then
            f2_local0[5] = 10
            f2_local0[8] = 15 * f2_local10
            f2_local0[11] = 5
            f2_local0[12] = 5
            f2_local0[13] = 20
            f2_local0[14] = 10 * f2_local11
            f2_local0[15] = 25
            f2_local0[18] = 10
        elseif InsideRange(arg1, arg2, 90, 110, -6, 99) then
            f2_local0[5] = 5
            f2_local0[8] = 15 * f2_local10
            f2_local0[11] = 5
            f2_local0[12] = 5
            f2_local0[13] = 20
            f2_local0[14] = 5 * f2_local11
            f2_local0[16] = 25 * f2_local12
            f2_local0[17] = 10
            f2_local0[18] = 10
        else
            f2_local0[5] = 15
            f2_local0[8] = 10 * f2_local10
            f2_local0[12] = 25
            f2_local0[13] = 20
            f2_local0[14] = 10 * f2_local11
            f2_local0[16] = 5 * f2_local12
            f2_local0[18] = 15
        end
    elseif f2_local3 >= 50 then
        if f2_local6 <= 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            f2_local0[28] = 100
        elseif InsideRange(arg1, arg2, 180, 150, -6, 99) then
            f2_local0[40] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            f2_local0[20] = 0
            f2_local0[25] = 0
            f2_local0[26] = 80
            f2_local0[27] = 0 * f2_local13
            f2_local0[33] = 20
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            f2_local0[20] = 0
            f2_local0[25] = 0
            f2_local0[26] = 15
            f2_local0[27] = 80 * f2_local13
            f2_local0[33] = 5
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            f2_local0[20] = 20
            f2_local0[25] = 60
            f2_local0[26] = 10
            f2_local0[27] = 0 * f2_local13
            f2_local0[33] = 10
        else
            f2_local0[20] = 20
            f2_local0[25] = 60
            f2_local0[26] = 5
            f2_local0[27] = 10 * f2_local13
            f2_local0[33] = 5
        end
    elseif f2_local3 >= 25 then
        if f2_local6 <= 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            f2_local0[28] = 100
        elseif InsideRange(arg1, arg2, 180, 150, -6, 99) then
            f2_local0[40] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            f2_local0[20] = 0
            f2_local0[25] = 0
            f2_local0[26] = 60
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 0
            f2_local0[33] = 40
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            f2_local0[20] = 0
            f2_local0[25] = 0
            f2_local0[26] = 10
            f2_local0[27] = 80 * f2_local13
            f2_local0[28] = 0
            f2_local0[33] = 10
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            f2_local0[20] = 30
            f2_local0[25] = 30
            f2_local0[26] = 5
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 30
            f2_local0[33] = 5
        else
            f2_local0[20] = 25
            f2_local0[25] = 30
            f2_local0[26] = 5
            f2_local0[27] = 10 * f2_local13
            f2_local0[28] = 25
            f2_local0[33] = 5
        end
    elseif f2_local3 >= 15 then
        if f2_local6 <= 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            f2_local0[28] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 0
                f2_local0[23] = 0
                f2_local0[26] = 40
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 5 * f2_local14
                f2_local0[33] = 50
                f2_local0[34] = 5 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[20] = 0
                f2_local0[23] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 20 * f2_local14
                f2_local0[33] = 60
                f2_local0[34] = 20 * f2_local15
            else
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 40 * f2_local14
                f2_local0[40] = 20
                f2_local0[34] = 40 * f2_local15
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 0
                f2_local0[23] = 20
                f2_local0[26] = 10
                f2_local0[27] = 30 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 5 * f2_local14
                f2_local0[33] = 30
                f2_local0[34] = 5 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[20] = 0
                f2_local0[23] = 10
                f2_local0[27] = 60 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 5 * f2_local14
                f2_local0[33] = 20
                f2_local0[34] = 5 * f2_local15
            else
                f2_local0[27] = 50 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 20 * f2_local14
                f2_local0[40] = 10
                f2_local0[34] = 20 * f2_local15
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 40
                f2_local0[23] = 0
                f2_local0[26] = 10
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 20
                f2_local0[30] = 5 * f2_local14
                f2_local0[33] = 20
                f2_local0[34] = 5 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[20] = 50
                f2_local0[23] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 30
                f2_local0[30] = 5 * f2_local14
                f2_local0[33] = 10
                f2_local0[34] = 5 * f2_local15
            else
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 60
                f2_local0[30] = 15 * f2_local14
                f2_local0[40] = 10
                f2_local0[34] = 15 * f2_local15
            end
        elseif InsideRange(arg1, arg2, 0, 120, -6, 99) then
            f2_local0[20] = 30
            f2_local0[23] = 10
            f2_local0[26] = 10
            f2_local0[27] = 10 * f2_local13
            f2_local0[28] = 10
            f2_local0[30] = 5 * f2_local14
            f2_local0[33] = 20
            f2_local0[34] = 5 * f2_local15
        elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
            f2_local0[20] = 30
            f2_local0[23] = 10
            f2_local0[27] = 30 * f2_local13
            f2_local0[28] = 10
            f2_local0[30] = 5 * f2_local14
            f2_local0[33] = 10
            f2_local0[34] = 5 * f2_local15
        else
            f2_local0[27] = 30 * f2_local13
            f2_local0[28] = 30
            f2_local0[30] = 15 * f2_local14
            f2_local0[40] = 10
            f2_local0[34] = 15 * f2_local15
        end
    elseif f2_local3 >= 6 then
        if f2_local6 <= 0.6 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
            f2_local0[28] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 0
                f2_local0[22] = 40
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 15 * f2_local14
                f2_local0[31] = 15
                f2_local0[32] = 15
                f2_local0[34] = 15 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[22] = 30
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 25 * f2_local14
                f2_local0[31] = 10
                f2_local0[32] = 10
                f2_local0[34] = 25 * f2_local15
            else
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 35 * f2_local14
                f2_local0[40] = 30
                f2_local0[34] = 35 * f2_local15
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 0
                f2_local0[22] = 15
                f2_local0[23] = 30
                f2_local0[24] = 20
                f2_local0[27] = 20 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 2 * f2_local14
                f2_local0[31] = 5
                f2_local0[32] = 5
                f2_local0[34] = 3 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 20
                f2_local0[27] = 40 * f2_local13
                f2_local0[28] = 0
                f2_local0[30] = 10 * f2_local14
                f2_local0[31] = 5
                f2_local0[32] = 5
                f2_local0[34] = 10 * f2_local15
            else
                f2_local0[27] = 30 * f2_local13
                f2_local0[28] = 0
                f2_local0[29] = 0
                f2_local0[30] = 25 * f2_local14
                f2_local0[40] = 20
                f2_local0[34] = 25 * f2_local15
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
            if InsideRange(arg1, arg2, 0, 120, -6, 99) then
                f2_local0[20] = 30
                f2_local0[21] = 10
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 30
                f2_local0[30] = 5 * f2_local14
                f2_local0[31] = 5
                f2_local0[32] = 5
                f2_local0[34] = 5 * f2_local15
            elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
                f2_local0[20] = 20
                f2_local0[21] = 20
                f2_local0[22] = 10
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 40
                f2_local0[30] = 5 * f2_local14
                f2_local0[31] = 5
                f2_local0[32] = 5
                f2_local0[34] = 5 * f2_local15
            else
                f2_local0[27] = 0 * f2_local13
                f2_local0[28] = 30
                f2_local0[29] = 50
                f2_local0[30] = 10 * f2_local14
                f2_local0[40] = 10
                f2_local0[34] = 10 * f2_local15
            end
        elseif InsideRange(arg1, arg2, 0, 120, -6, 99) then
            f2_local0[20] = 10
            f2_local0[21] = 5
            f2_local0[22] = 25
            f2_local0[23] = 5
            f2_local0[24] = 5
            f2_local0[25] = 0
            f2_local0[26] = 0
            f2_local0[27] = 10 * f2_local13
            f2_local0[28] = 10
            f2_local0[29] = 0
            f2_local0[30] = 5 * f2_local14
            f2_local0[31] = 10
            f2_local0[32] = 10
            f2_local0[34] = 5 * f2_local15
        elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
            f2_local0[20] = 0
            f2_local0[21] = 10
            f2_local0[22] = 25
            f2_local0[23] = 5
            f2_local0[24] = 10
            f2_local0[25] = 0
            f2_local0[26] = 0
            f2_local0[27] = 20 * f2_local13
            f2_local0[28] = 10
            f2_local0[29] = 0
            f2_local0[30] = 5 * f2_local14
            f2_local0[31] = 5
            f2_local0[32] = 5
            f2_local0[34] = 5 * f2_local15
        else
            f2_local0[27] = 20 * f2_local13
            f2_local0[28] = 20
            f2_local0[29] = 20
            f2_local0[30] = 15 * f2_local14
            f2_local0[40] = 10
            f2_local0[34] = 15 * f2_local15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true and arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
        if InsideRange(arg1, arg2, 0, 120, -6, 99) then
            f2_local0[21] = 0
            f2_local0[24] = 0
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 25 * f2_local14
            f2_local0[32] = 50
            f2_local0[34] = 25 * f2_local15
        elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
            f2_local0[21] = 0
            f2_local0[24] = 0
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 30 * f2_local14
            f2_local0[32] = 40
            f2_local0[34] = 30 * f2_local15
        else
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 50 * f2_local14
            f2_local0[34] = 50 * f2_local15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12760) == true then
        if InsideRange(arg1, arg2, 0, 120, -6, 99) then
            f2_local0[21] = 0
            f2_local0[24] = 40
            f2_local0[27] = 20 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 10 * f2_local14
            f2_local0[32] = 20
            f2_local0[34] = 10 * f2_local15
        elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
            f2_local0[21] = 0
            f2_local0[24] = 20
            f2_local0[27] = 40 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 15 * f2_local14
            f2_local0[32] = 10
            f2_local0[34] = 15 * f2_local15
        else
            f2_local0[27] = 50 * f2_local13
            f2_local0[28] = 0
            f2_local0[29] = 0
            f2_local0[30] = 25 * f2_local14
            f2_local0[34] = 25 * f2_local15
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12761) == true then
        if InsideRange(arg1, arg2, 0, 120, -6, 99) then
            f2_local0[21] = 50
            f2_local0[24] = 0
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 20
            f2_local0[29] = 20
            f2_local0[30] = 2 * f2_local14
            f2_local0[32] = 5
            f2_local0[34] = 3 * f2_local15
        elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
            f2_local0[21] = 20
            f2_local0[24] = 0
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 20
            f2_local0[29] = 40
            f2_local0[30] = 10 * f2_local14
            f2_local0[32] = 0
            f2_local0[34] = 10 * f2_local15
        else
            f2_local0[27] = 0 * f2_local13
            f2_local0[28] = 40
            f2_local0[29] = 40
            f2_local0[30] = 10 * f2_local14
            f2_local0[34] = 10 * f2_local15
        end
    elseif InsideRange(arg1, arg2, 0, 120, -6, 99) then
        f2_local0[21] = 30
        f2_local0[24] = 20
        f2_local0[27] = 10 * f2_local13
        f2_local0[28] = 10
        f2_local0[29] = 10
        f2_local0[30] = 5 * f2_local14
        f2_local0[32] = 10
        f2_local0[34] = 5 * f2_local15
    elseif InsideRange(arg1, arg2, 0, 260, -6, 99) then
        f2_local0[21] = 30
        f2_local0[24] = 10
        f2_local0[27] = 10 * f2_local13
        f2_local0[28] = 20
        f2_local0[29] = 20
        f2_local0[30] = 5 * f2_local14
        f2_local0[32] = 0
        f2_local0[34] = 5 * f2_local15
    else
        f2_local0[27] = 20 * f2_local13
        f2_local0[28] = 20
        f2_local0[29] = 40
        f2_local0[30] = 10 * f2_local14
        f2_local0[34] = 10 * f2_local15
    end
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 45, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 30, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 30, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3012, 30, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3013, 20, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3014, 90, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3017, 45, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3017, 90, f2_local0[16], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3014, 45, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 3018, 10, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3019, 20, f2_local0[18], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3000, 30, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 3001, 30, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3002, 15, f2_local0[22], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 3005, 80, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 3006, 20, f2_local0[25], 1)
    f2_local0[26] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[26], 1)
    f2_local0[27] = SetCoolTime(arg1, arg2, 3008, 50, f2_local0[27], 1)
    f2_local0[28] = SetCoolTime(arg1, arg2, 3009, 90, f2_local0[28], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3010, 20, f2_local0[29], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[30], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3017, 10, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[34], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, Giant476000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, Giant476000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, Giant476000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, Giant476000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, Giant476000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, Giant476000_Act6)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, Giant476000_Act7)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, Giant476000_Act8)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, Giant476000_Act9)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, Giant476000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, Giant476000_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, Giant476000_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, Giant476000_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, Giant476000_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, Giant476000_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, Giant476000_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, Giant476000_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, Giant476000_Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, Giant476000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, Giant476000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, Giant476000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, Giant476000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, Giant476000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, Giant476000_Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, Giant476000_Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, Giant476000_Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, Giant476000_Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, Giant476000_Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, Giant476000_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, Giant476000_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, Giant476000_Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, Giant476000_Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, Giant476000_Act34)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, Giant476000_Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, Giant476000_Act41)
    local f2_local16 = REGIST_FUNC(arg1, arg2, Giant476000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local16, f2_local2)
    
end

function Giant476000_Act1(arg0, arg1, arg2)
    local f3_local0 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 200
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 4
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local7, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act2(arg0, arg1, arg2)
    local f4_local0 = 26 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 200
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 4
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3002
    local f4_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local11 = 0
    local f4_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local7, TARGET_ENE_0, f4_local9, f4_local11, f4_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act3(arg0, arg1, arg2)
    local f5_local0 = 16 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 200
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 4
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3003
    local f5_local8 = 3004
    local f5_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local11 = 0
    local f5_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local7, TARGET_ENE_0, f5_local9, f5_local11, f5_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act4(arg0, arg1, arg2)
    local f6_local0 = 70 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 200
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 4
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3005
    local f6_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local7, TARGET_ENE_0, f6_local8, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act5(arg0, arg1, arg2)
    local f7_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 200
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 4
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3006
    local f7_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act6(arg0, arg1, arg2)
    local f8_local0 = 35 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 200
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 4
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3007
    local f8_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act7(arg0, arg1, arg2)
    local f9_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 200
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 4
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 3008
    local f9_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local9 = 0
    local f9_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act8(arg0, arg1, arg2)
    local f10_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 200
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 4
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3009
    local f10_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local9 = 0
    local f10_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act9(arg0, arg1, arg2)
    local f11_local0 = 3020
    local f11_local1 = 3014
    local f11_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = arg0:GetDist(TARGET_ENE_0)
    if f11_local5 <= 20 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local1, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f11_local0, TARGET_ENE_0, f11_local2, f11_local3, f11_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act10(arg0, arg1, arg2)
    local f12_local0 = 60 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 200
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 2
    local f12_local6 = 4
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 3010
    local f12_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local9 = 0
    local f12_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local7, TARGET_ENE_0, f12_local8, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act11(arg0, arg1, arg2)
    local f13_local0 = 3011
    local f13_local1 = 3015
    local f13_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local4 = 0
    local f13_local5 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local2, f13_local4, f13_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act12(arg0, arg1, arg2)
    local f14_local0 = 3012
    local f14_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 0
    local f14_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local1, f14_local2, f14_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act13(arg0, arg1, arg2)
    local f15_local0 = 3013
    local f15_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 0
    local f15_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local1, f15_local2, f15_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act14(arg0, arg1, arg2)
    local f16_local0 = 3014
    local f16_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 0
    local f16_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, f16_local0, TARGET_ENE_0, f16_local1, f16_local2, f16_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act15(arg0, arg1, arg2)
    local f17_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 50
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 2
    local f17_local6 = 4
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3016
    local f17_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local9 = 0
    local f17_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, f17_local7, TARGET_ENE_0, f17_local8, f17_local9, f17_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act16(arg0, arg1, arg2)
    local f18_local0 = 3017
    local f18_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = 0
    local f18_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 8, f18_local0, TARGET_ENE_0, f18_local1, f18_local2, f18_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act17(arg0, arg1, arg2)
    local f19_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local1 = f19_local0 + 0
    local f19_local2 = f19_local0 + 200
    local f19_local3 = 0
    local f19_local4 = 0
    local f19_local5 = 2
    local f19_local6 = 4
    Approach_Act_Flex(arg0, arg1, f19_local0, f19_local1, f19_local2, f19_local3, f19_local4, f19_local5, f19_local6)
    local f19_local7 = 3018
    local f19_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f19_local9 = 0
    local f19_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f19_local7, TARGET_ENE_0, f19_local8, f19_local9, f19_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act18(arg0, arg1, arg2)
    local f20_local0 = 3019
    local f20_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local2 = 0
    local f20_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f20_local0, TARGET_ENE_0, f20_local1, f20_local2, f20_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act20(arg0, arg1, arg2)
    local f21_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 200
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 2
    local f21_local6 = 4
    Approach_Act_Flex(arg0, arg1, f21_local0, f21_local1, f21_local2, f21_local3, f21_local4, f21_local5, f21_local6)
    local f21_local7 = 3000
    local f21_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local9 = 0
    local f21_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f21_local7, TARGET_ENE_0, f21_local8, f21_local9, f21_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act21(arg0, arg1, arg2)
    local f22_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 200
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 2
    local f22_local6 = 4
    Approach_Act_Flex(arg0, arg1, f22_local0, f22_local1, f22_local2, f22_local3, f22_local4, f22_local5, f22_local6)
    local f22_local7 = 3001
    local f22_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local9 = 0
    local f22_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f22_local7, TARGET_ENE_0, f22_local8, f22_local9, f22_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act22(arg0, arg1, arg2)
    local f23_local0 = 17 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 200
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 2
    local f23_local6 = 4
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    local f23_local7 = 3002
    local f23_local8 = 3003
    local f23_local9 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local10 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local11 = 0
    local f23_local12 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f23_local7, TARGET_ENE_0, f23_local9, f23_local11, f23_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act23(arg0, arg1, arg2)
    local f24_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 200
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 2
    local f24_local6 = 4
    Approach_Act_Flex(arg0, arg1, f24_local0, f24_local1, f24_local2, f24_local3, f24_local4, f24_local5, f24_local6)
    local f24_local7 = 3004
    local f24_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local9 = 0
    local f24_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f24_local7, TARGET_ENE_0, f24_local8, f24_local9, f24_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act24(arg0, arg1, arg2)
    local f25_local0 = 19.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 200
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = 1
    local f25_local6 = 2
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local7 = 3005
    local f25_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local9 = 0
    local f25_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f25_local7, TARGET_ENE_0, f25_local8, f25_local9, f25_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act25(arg0, arg1, arg2)
    local f26_local0 = 55 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = f26_local0 + 0
    local f26_local2 = f26_local0 + 200
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = 2
    local f26_local6 = 4
    Approach_Act_Flex(arg0, arg1, f26_local0, f26_local1, f26_local2, f26_local3, f26_local4, f26_local5, f26_local6)
    local f26_local7 = 3006
    local f26_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local9 = 0
    local f26_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local7, TARGET_ENE_0, f26_local8, f26_local9, f26_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act26(arg0, arg1, arg2)
    local f27_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local1 = f27_local0 + 0
    local f27_local2 = f27_local0 + 200
    local f27_local3 = 0
    local f27_local4 = 0
    local f27_local5 = 2
    local f27_local6 = 4
    Approach_Act_Flex(arg0, arg1, f27_local0, f27_local1, f27_local2, f27_local3, f27_local4, f27_local5, f27_local6)
    local f27_local7 = 3007
    local f27_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local9 = 0
    local f27_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f27_local7, TARGET_ENE_0, f27_local8, f27_local9, f27_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act27(arg0, arg1, arg2)
    local f28_local0 = 75 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local1 = f28_local0 + 0
    local f28_local2 = f28_local0 + 200
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = 2
    local f28_local6 = 4
    Approach_Act_Flex(arg0, arg1, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local5, f28_local6)
    local f28_local7 = 3008
    local f28_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local9 = 0
    local f28_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f28_local7, TARGET_ENE_0, f28_local8, f28_local9, f28_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act28(arg0, arg1, arg2)
    local f29_local0 = 3009
    local f29_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local2 = 0
    local f29_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f29_local0, TARGET_ENE_0, f29_local1, f29_local2, f29_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act29(arg0, arg1, arg2)
    local f30_local0 = 3010
    local f30_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local2 = 0
    local f30_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f30_local0, TARGET_ENE_0, f30_local1, f30_local2, f30_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act30(arg0, arg1, arg2)
    local f31_local0 = 3011
    local f31_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local2 = 0
    local f31_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local1, f31_local2, f31_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act31(arg0, arg1, arg2)
    local f32_local0 = 15.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local1 = f32_local0 + 0
    local f32_local2 = f32_local0 + 50
    local f32_local3 = 0
    local f32_local4 = 0
    local f32_local5 = 1
    local f32_local6 = 2
    Approach_Act_Flex(arg0, arg1, f32_local0, f32_local1, f32_local2, f32_local3, f32_local4, f32_local5, f32_local6)
    local f32_local7 = 3012
    local f32_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f32_local9 = 0
    local f32_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f32_local7, TARGET_ENE_0, f32_local8, f32_local9, f32_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act32(arg0, arg1, arg2)
    local f33_local0 = 11.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local1 = f33_local0 + 0
    local f33_local2 = f33_local0 + 50
    local f33_local3 = 0
    local f33_local4 = 0
    local f33_local5 = 1
    local f33_local6 = 2
    Approach_Act_Flex(arg0, arg1, f33_local0, f33_local1, f33_local2, f33_local3, f33_local4, f33_local5, f33_local6)
    local f33_local7 = 3013
    local f33_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f33_local9 = 0
    local f33_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f33_local7, TARGET_ENE_0, f33_local8, f33_local9, f33_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act33(arg0, arg1, arg2)
    local f34_local0 = 30.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local1 = f34_local0 + 0
    local f34_local2 = f34_local0 + 200
    local f34_local3 = 0
    local f34_local4 = 0
    local f34_local5 = 2
    local f34_local6 = 4
    Approach_Act_Flex(arg0, arg1, f34_local0, f34_local1, f34_local2, f34_local3, f34_local4, f34_local5, f34_local6)
    local f34_local7 = 3015
    local f34_local8 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f34_local9 = 0
    local f34_local10 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f34_local7, TARGET_ENE_0, f34_local8, f34_local9, f34_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act34(arg0, arg1, arg2)
    local f35_local0 = 3017
    local f35_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f35_local2 = 0
    local f35_local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f35_local0, TARGET_ENE_0, f35_local1, f35_local2, f35_local3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 5, TARGET_ENE_0, 0, -1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_Act41(arg0, arg1, arg2)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 999) then
        local f37_local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 0, arg0:GetRandam_Int(90, 120), true, true, -1)
        f37_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        local f37_local0 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 4), TARGET_ENE_0, 1, arg0:GetRandam_Int(90, 120), true, true, -1)
        f37_local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Giant476000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Giant476000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f41_local0 = arg1:GetDist(TARGET_ENE_0)
    local f41_local1 = 999 - arg1:GetMapHitRadius(TARGET_SELF)
    local f41_local2 = arg1:GetRandam_Int(1, 100)
    local f41_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        arg2:ClearSubGoal()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and f41_local0 >= 3 and f41_local0 <= 23 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and f41_local0 >= 4 and f41_local0 <= 23 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) and f41_local0 >= 6 and f41_local0 <= 30 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) and f41_local0 >= -2 and f41_local0 <= 10 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) and f41_local0 >= -10 and f41_local0 <= 2 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) and f41_local0 >= 2 and f41_local0 <= 18 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, 180, 40) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) and f41_local0 >= 2 and f41_local0 <= 99 and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 180, 99) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3009, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_Giant476000_AfterAttackAct, "Giant476000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Giant476000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


