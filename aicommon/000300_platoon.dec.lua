function Platoon000300_Initialize(arg0)
    arg0:SetNumber(0, 0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 4, 13)
    arg0:SetFormationParam(2, -4, 13)
    arg0:SetFormationParam(3, 0, -1)
    arg0:SetFormationParam(4, 0, -15)
    arg0:SetFormationParam(5, -7, -10)
    arg0:SetFormationParam(6, 7, -10)
    arg0:SetFormationParam(30, 4.5, -13)
    arg0:SetFormationParam(31, -4.5, -13)
    arg0:SetFormationParam(28, -7, -10)
    arg0:SetFormationParam(29, 7, -10)
    arg0:SetFormationParam(7, 5, -1)
    arg0:SetFormationParam(8, -5, -1)
    arg0:SetFormationParam(9, 5, -5)
    arg0:SetFormationParam(10, -5, -5)
    arg0:SetFormationParam(11, 5, -9)
    arg0:SetFormationParam(12, -5, -9)
    arg0:SetFormationParam(13, 1, -18)
    arg0:SetFormationParam(14, -2, -19)
    arg0:SetFormationParam(15, 5, -20)
    arg0:SetFormationParam(16, -1, -21)
    arg0:SetFormationParam(17, 1, -21)
    arg0:SetFormationParam(18, -2, -23)
    arg0:SetFormationParam(19, 2, -24)
    arg0:SetFormationParam(20, 1, -25)
    arg0:SetFormationParam(21, 0, -26)
    arg0:SetFormationParam(22, -5, -30)
    arg0:SetFormationParam(23, 0, -30)
    arg0:SetFormationParam(24, 5, 3)
    arg0:SetFormationParam(25, -5, 3)
    arg0:SetFormationParam(26, 6.5, -2)
    arg0:SetFormationParam(27, -6.5, -2)
    arg0:SetBaseMoveRate(0, 1)
    arg0:SetBaseMoveRate(1, 0.4)
    arg0:SetBaseMoveRate(2, 0.4)
    arg0:SetBaseMoveRate(4, 0.5)
    arg0:SetBaseMoveRate(5, 0.26)
    arg0:SetBaseMoveRate(6, 0.26)
    arg0:SetBaseMoveRate(30, 0.35)
    arg0:SetBaseMoveRate(31, 0.35)
    arg0:SetBaseMoveRate(28, 0.35)
    arg0:SetBaseMoveRate(29, 0.35)
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
    arg0:SetBaseMoveRate(26, 0.5)
    arg0:SetBaseMoveRate(27, 0.5)
    
end

function Platoon000300_Activate(arg0)
    
end

function Platoon000300_Deactivate(arg0)
    
end

function Platoon000300_Update(arg0)
    local f4_local0 = 5
    local f4_local1 = 10
    local f4_local2 = 11
    local f4_local3 = 12
    local f4_local4 = 10
    local f4_local5 = 5
    local f4_local6 = 5
    local f4_local7 = 1.7
    local f4_local8 = 0.5
    local f4_local9 = 4
    local f4_local10 = 0.5
    local f4_local11 = 0
    local f4_local12 = 0
    local f4_local13 = 0
    local f4_local14 = {}
    local f4_local15 = 0
    local f4_local16 = 0
    local f4_local17 = 0
    local f4_local18 = 0
    local f4_local19 = 0
    local f4_local20 = 0
    local f4_local21 = 0
    for f4_local22 = arg0:GetMemberNum() - 1, 0, -1 do
        local f4_local25 = arg0:GetMemberAI(f4_local22)
        if f4_local25 ~= nill then
            if f4_local22 == 0 then
                f4_local14[f4_local22 + 1] = 9999
                if f4_local13 == 0 then
                    arg0:SetNumber(0, 0)
                end
            else
                local f4_local26 = f4_local25:GetDist(TARGET_TEAM_FORMATION)
                local f4_local27 = f4_local25:GetDist(TARGET_ENE_0)
                f4_local11 = f4_local11 + 1
                if f4_local9 < f4_local26 then
                    f4_local12 = f4_local12 + 1
                end
                if (f4_local22 == 1 or f4_local22 == 2) and f4_local25:GetHpRate(TARGET_SELF) < f4_local10 then
                    f4_local19 = 1
                end
                if (f4_local25:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 1 or f4_local25:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2) and (f4_local25:GetDamageLastFrame() > 0 or f4_local25:IsBattleState()) and f4_local25:GetHpRate(TARGET_SELF) ~= 0 then
                    f4_local13 = f4_local13 + 1
                    f4_local14[f4_local22 + 1] = f4_local27
                    if f4_local27 < 5 or f4_local25:GetDamageLastFrame() > 0 then
                        arg0:SetNumber(0, 1)
                    end
                end
                if f4_local22 == 5 or f4_local22 == 6 or f4_local22 == 30 or f4_local22 == 31 then
                    f4_local15 = f4_local15 + 1
                    if f4_local25:GetHpRate(TARGET_SELF) <= 0 then
                        f4_local16 = f4_local16 + 1
                    end
                end
                if f4_local25:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2 then
                    f4_local17 = f4_local17 + 1
                    if f4_local25:GetHpRate(TARGET_SELF) <= 0 then
                        f4_local18 = f4_local18 + 1
                    end
                end
            end
        end
    end
    if f4_local17 > 0 and f4_local17 == f4_local18 then
        f4_local20 = 1
    end
    if f4_local20 == 1 and f4_local15 == f4_local16 then
        f4_local21 = 1
    end
    local f4_local22 = arg0:GetMemberNum()
    for f4_local22 = f4_local22 - 1, 0, -1 do
        local f4_local25 = arg0:GetMemberAI(f4_local22)
        if f4_local25 ~= nill then
            if f4_local22 == 0 then
                if f4_local12 == f4_local11 then
                    arg0:SendCommand(f4_local22, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local19 == 1 or f4_local20 == 1 then
                    arg0:SendCommand(f4_local22, PLAN_PLATOON_COMMAND__WAIT)
                    arg0:SetEnableDeactiveMove(false)
                elseif f4_local11 == 0 then
                    arg0:SendCommand(f4_local22, PLAN_PLATOON_COMMAND__WAIT)
                else
                    arg0:SetMoveRate(f4_local22, 1)
                    arg0:SendCommand(f4_local22, f4_local0)
                end
            else
                local f4_local26 = f4_local25:GetDist(TARGET_TEAM_FORMATION)
                local f4_local27 = 0
                if f4_local25:HasSpecialEffectId(TARGET_SELF, 5002) then
                    arg0:SetMoveRate(f4_local22, 1)
                elseif f4_local4 < f4_local26 then
                    arg0:SetMoveRate(f4_local22, f4_local7)
                elseif f4_local5 < f4_local26 then
                    f4_local27 = 1 + (f4_local26 - f4_local5) / (f4_local4 - f4_local5) * (f4_local7 - 1)
                    arg0:SetMoveRate(f4_local22, f4_local27)
                elseif f4_local26 < f4_local6 then
                    f4_local27 = 1 + (f4_local6 - f4_local26) / f4_local6 * (f4_local8 - 1)
                    arg0:SetMoveRate(f4_local22, f4_local27)
                else
                    arg0:SetMoveRate(f4_local22, 1)
                end
                if f4_local22 == 1 or f4_local22 == 2 then
                    local f4_local28 = f4_local25:GetHpRate(TARGET_SELF)
                    if f4_local28 < f4_local10 or f4_local20 == 1 then
                        arg0:SendCommand(f4_local22, f4_local3)
                    else
                        arg0:SendCommand(f4_local22, f4_local0)
                    end
                elseif f4_local22 == 3 then
                    if f4_local19 == 1 or f4_local20 == 1 then
                        arg0:SendCommand(f4_local22, f4_local3)
                    else
                        arg0:SendCommand(f4_local22, f4_local0)
                    end
                elseif f4_local21 == 1 then
                    arg0:SendCommand(f4_local22, f4_local3)
                elseif f4_local25:IsBattleState() == false and f4_local25:IsCautionState() == false then
                    arg0:SendCommand(f4_local22, f4_local0)
                elseif f4_local25:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 1 or f4_local25:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2 then
                    if arg0:GetNumber(0) == 1 then
                        arg0:SendCommand(f4_local22, f4_local1)
                    else
                        arg0:SendCommand(f4_local22, f4_local2)
                    end
                else
                    arg0:SendCommand(f4_local22, f4_local1)
                end
            end
        end
    end
    
end


