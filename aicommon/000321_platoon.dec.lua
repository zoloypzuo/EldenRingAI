function Platoon000321_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 4, 4)
    arg0:SetFormationParam(2, -4, 4)
    arg0:SetFormationParam(3, 0, -10)
    arg0:SetFormationParam(4, 0, -22)
    arg0:SetFormationParam(5, -7, -17)
    arg0:SetFormationParam(6, 7, -17)
    arg0:SetFormationParam(30, 4.5, -20)
    arg0:SetFormationParam(31, -4.5, -20)
    arg0:SetFormationParam(28, -7, -17)
    arg0:SetFormationParam(29, 7, -17)
    arg0:SetFormationParam(7, 5, -8)
    arg0:SetFormationParam(8, -5, -8)
    arg0:SetFormationParam(9, 5, -12)
    arg0:SetFormationParam(10, -5, -12)
    arg0:SetFormationParam(11, 5, -16)
    arg0:SetFormationParam(12, -5, -16)
    arg0:SetFormationParam(13, 1, -25)
    arg0:SetFormationParam(14, -2, -26)
    arg0:SetFormationParam(15, 5, -27)
    arg0:SetFormationParam(16, -1, -28)
    arg0:SetFormationParam(17, 1, -28)
    arg0:SetFormationParam(18, -2, -30)
    arg0:SetFormationParam(19, 2, -31)
    arg0:SetFormationParam(20, 1, -32)
    arg0:SetFormationParam(21, 0, -33)
    arg0:SetFormationParam(22, -5, -37)
    arg0:SetFormationParam(23, 0, -37)
    arg0:SetFormationParam(24, 5, -4)
    arg0:SetFormationParam(25, -5, -4)
    arg0:SetFormationParam(26, 40, 0)
    arg0:SetFormationParam(27, 0, -70)
    arg0:SetBaseMoveRate(0, 1)
    arg0:SetBaseMoveRate(1, 0.35)
    arg0:SetBaseMoveRate(2, 0.35)
    arg0:SetBaseMoveRate(4, 0.5)
    arg0:SetBaseMoveRate(5, 0.5)
    arg0:SetBaseMoveRate(6, 0.5)
    arg0:SetBaseMoveRate(30, 0.5)
    arg0:SetBaseMoveRate(31, 0.5)
    arg0:SetBaseMoveRate(28, 0.5)
    arg0:SetBaseMoveRate(29, 0.5)
    arg0:SetBaseMoveRate(7, 0.5)
    arg0:SetBaseMoveRate(8, 0.5)
    arg0:SetBaseMoveRate(9, 0.5)
    arg0:SetBaseMoveRate(10, 0.5)
    arg0:SetBaseMoveRate(11, 0.5)
    arg0:SetBaseMoveRate(12, 0.5)
    arg0:SetBaseMoveRate(13, 0.5)
    arg0:SetBaseMoveRate(14, 0.5)
    arg0:SetBaseMoveRate(15, 0.5)
    arg0:SetBaseMoveRate(16, 0.5)
    arg0:SetBaseMoveRate(17, 0.5)
    arg0:SetBaseMoveRate(18, 0.5)
    arg0:SetBaseMoveRate(19, 0.5)
    arg0:SetBaseMoveRate(20, 0.5)
    arg0:SetBaseMoveRate(21, 0.5)
    arg0:SetBaseMoveRate(22, 0.5)
    arg0:SetBaseMoveRate(23, 0.5)
    arg0:SetBaseMoveRate(24, 0.5)
    arg0:SetBaseMoveRate(25, 0.5)
    arg0:SetBaseMoveRate(26, 0.8)
    arg0:SetBaseMoveRate(27, 0.8)
    
end

function Platoon000321_Activate(arg0)
    
end

function Platoon000321_Deactivate(arg0)
    
end

function Platoon000321_Update(arg0)
    local f4_local0 = 10
    local f4_local1 = 5
    local f4_local2 = 5
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 1.7
    local f4_local6 = 0.5
    local f4_local7 = 4
    local f4_local8 = 6
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = 0
    local f4_local15 = 0
    local f4_local16 = 0
    local f4_local17 = 0
    local f4_local18 = 0
    local f4_local19 = 0
    for f4_local20 = arg0:GetMemberNum() - 1, 0, -1 do
        local f4_local23 = arg0:GetMemberAI(f4_local20)
        if f4_local23 ~= nil then
            if f4_local20 == 0 then

            else
                local f4_local24 = f4_local23:GetDist(TARGET_TEAM_FORMATION)
                f4_local3 = f4_local3 + 1
                if f4_local7 < f4_local24 then
                    f4_local4 = f4_local4 + 1
                    if f4_local20 == 3 and f4_local8 < f4_local24 then
                        f4_local10 = 1
                    end
                end
            end
        end
        if f4_local20 == 0 then
            if arg0:HasSpecialEffectId(f4_local20, 5555) == true then
                f4_local9 = 1
            end
        elseif f4_local20 == 1 or f4_local20 == 2 then
            if arg0:GetHpRate(f4_local20) <= 0 then
                f4_local15 = 1
            end
            if arg0:HasSpecialEffectId(f4_local20, 5551) == true then
                f4_local14 = 1
            end
            if arg0:HasSpecialEffectId(f4_local20, 5550) == false then
                f4_local13 = 1
            end
        elseif f4_local20 == 3 then
            if arg0:GetHpRate(f4_local20) <= 0 then
                f4_local11 = 1
            end
            if arg0:HasSpecialEffectId(f4_local20, 5558) == false then
                f4_local12 = 1
            end
        elseif f4_local20 == 5 or f4_local20 == 6 then
            if arg0:HasSpecialEffectId(f4_local20, 5550) == false and arg0:GetHpRate(f4_local20) > 0 then
                f4_local13 = 1
            end
        elseif arg0:HasSpecialEffectId(f4_local20, 5560) == false then
            f4_local16 = f4_local16 + 1
            if arg0:GetHpRate(f4_local20) <= 0 then
                f4_local17 = f4_local17 + 1
            end
        end
    end
    if f4_local16 > 0 and f4_local17 == f4_local16 then
        f4_local18 = 1
    end
    if f4_local15 == 1 or f4_local11 == 1 or f4_local14 == 1 then
        f4_local19 = 1
        f4_local18 = 1
    end
    local f4_local20 = arg0:GetMemberNum()
    for f4_local20 = f4_local20 - 1, 0, -1 do
        local f4_local23 = arg0:GetMemberAI(f4_local20)
        if f4_local23 ~= nill then
            if f4_local20 == 0 then
                if f4_local9 == 1 then
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__PATROLEND)
                elseif f4_local4 == f4_local3 or f4_local10 == 1 or f4_local12 == 1 then
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local19 == 1 then
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                    arg0:SetEnableDeactiveMove(false)
                elseif f4_local13 == 1 then
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local3 == 0 then
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                else
                    arg0:SetMoveRate(f4_local20, 1)
                    arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__MOVE)
                end
            else
                local f4_local24 = 0
                if f4_local20 == 1 or f4_local20 == 2 then
                    if f4_local9 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__PATROLEND)
                        arg0:SetNumber(12, PLAN_PLATOON_COMMAND__PATROLEND)
                    elseif f4_local19 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__STOP)
                        arg0:SetNumber(12, PLAN_PLATOON_COMMAND__STOP)
                    elseif f4_local13 == 1 or f4_local12 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                        arg0:SetNumber(12, PLAN_PLATOON_COMMAND__WAIT)
                    else
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__MOVE)
                        arg0:SetNumber(12, PLAN_PLATOON_COMMAND__MOVE)
                        f4_local24 = 1
                    end
                elseif f4_local20 == 3 then
                    if f4_local9 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__PATROLEND)
                        arg0:SetNumber(13, PLAN_PLATOON_COMMAND__PATROLEND)
                    elseif f4_local19 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__STOP)
                        arg0:SetNumber(13, PLAN_PLATOON_COMMAND__STOP)
                    elseif f4_local13 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__WAIT)
                        arg0:SetNumber(13, PLAN_PLATOON_COMMAND__WAIT)
                    else
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__MOVE)
                        arg0:SetNumber(13, PLAN_PLATOON_COMMAND__MOVE)
                        f4_local24 = 1
                    end
                else
                    if f4_local18 == 1 and f4_local23:HasSpecialEffectId(TARGET_SELF, 5560) then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__RUN)
                        arg0:SetNumber(14, 1)
                    elseif f4_local9 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__PATROLEND_WITHWALKAROUND)
                        arg0:SetNumber(14, PLAN_PLATOON_COMMAND__PATROLEND_WITHWALKAROUND)
                    elseif f4_local19 == 1 then
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__STOPEND_WITHWALKAROUND)
                        arg0:SetNumber(15, PLAN_PLATOON_COMMAND__STOPEND_WITHWALKAROUND)
                    else
                        arg0:SendCommand(f4_local20, PLAN_PLATOON_COMMAND__MOVE)
                        arg0:SetNumber(15, PLAN_PLATOON_COMMAND__MOVE)
                        f4_local24 = 1
                    end
                    if f4_local18 == 0 then
                        arg0:SetNumber(14, 0)
                    end
                end
                if f4_local24 == 1 then
                    local f4_local25 = f4_local23:GetDist(TARGET_TEAM_FORMATION)
                    local f4_local26 = 0
                    if f4_local23:HasSpecialEffectId(TARGET_SELF, 5002) then
                        arg0:SetMoveRate(f4_local20, 1)
                    elseif f4_local0 < f4_local25 then
                        arg0:SetMoveRate(f4_local20, f4_local5)
                    elseif f4_local1 < f4_local25 then
                        f4_local26 = 1 + (f4_local25 - f4_local1) / (f4_local0 - f4_local1) * (f4_local5 - 1)
                        arg0:SetMoveRate(f4_local20, f4_local26)
                    elseif f4_local25 < f4_local2 then
                        f4_local26 = 1 + (f4_local2 - f4_local25) / f4_local2 * (f4_local6 - 1)
                        arg0:SetMoveRate(f4_local20, f4_local26)
                    else
                        arg0:SetMoveRate(f4_local20, 1)
                    end
                end
            end
        end
    end
    arg0:SetNumber(0, f4_local16)
    arg0:SetNumber(1, f4_local17)
    arg0:SetNumber(2, f4_local18)
    arg0:SetNumber(3, f4_local19)
    arg0:SetNumber(4, f4_local15)
    arg0:SetNumber(5, f4_local11)
    arg0:SetNumber(6, f4_local13)
    arg0:SetNumber(7, f4_local3)
    arg0:SetNumber(8, f4_local4)
    arg0:SetNumber(9, f4_local12)
    
end


