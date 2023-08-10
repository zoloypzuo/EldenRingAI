function Platoon000310_Initialize(arg0)
    local f1_local0 = 0
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 3, 8)
    arg0:SetFormationParam(2, -3, 8)
    arg0:SetFormationParam(3, 0, -6)
    arg0:SetFormationParam(4, 0, -15)
    arg0:SetFormationParam(5, -7, -10)
    arg0:SetFormationParam(6, 7, -10)
    arg0:SetFormationParam(30, 4.5, -13)
    arg0:SetFormationParam(31, -4.5, -13)
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
    arg0:SetFormationParam(28, 7, -6)
    arg0:SetFormationParam(29, -7, -6)
    arg0:SetBaseMoveRate(0, 1)
    arg0:SetBaseMoveRate(1, 0.4)
    arg0:SetBaseMoveRate(2, 0.4)
    arg0:SetBaseMoveRate(4, 0.5)
    arg0:SetBaseMoveRate(5, 0.26)
    arg0:SetBaseMoveRate(6, 0.26)
    arg0:SetBaseMoveRate(30, 0.35)
    arg0:SetBaseMoveRate(31, 0.35)
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
    arg0:SetBaseMoveRate(28, 0.5)
    arg0:SetBaseMoveRate(29, 0.5)
    
end

function Platoon000310_Activate(arg0)
    
end

function Platoon000310_Deactivate(arg0)
    
end

function Platoon000310_Update(arg0)
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
    local f4_local22 = 0
    for f4_local23 = arg0:GetMemberNum() - 1, 0, -1 do
        local f4_local26 = arg0:GetMemberAI(f4_local23)
        if f4_local26 ~= nill then
            if f4_local23 == 0 then
                f4_local14[f4_local23 + 1] = 9999
                if f4_local13 == 0 then
                    isBattleMode = 0
                end
            else
                local f4_local27 = f4_local26:GetDist(TARGET_TEAM_FORMATION)
                local f4_local28 = f4_local26:GetDist(TARGET_ENE_0)
                f4_local11 = f4_local11 + 1
                if f4_local9 < f4_local27 then
                    f4_local12 = f4_local12 + 1
                    if f4_local23 == 3 then
                        f4_local22 = 1
                    end
                end
                if (f4_local23 == 1 or f4_local23 == 2) and f4_local26:GetHpRate(TARGET_SELF) < f4_local10 then
                    f4_local19 = 1
                end
                if (f4_local26:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 1 or f4_local26:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2) and (f4_local26:GetDamageLastFrame() > 0 or f4_local26:IsBattleState()) and f4_local26:GetHpRate(TARGET_SELF) ~= 0 then
                    f4_local13 = f4_local13 + 1
                    f4_local14[f4_local23 + 1] = f4_local28
                    if f4_local28 < 5 or f4_local26:GetDamageLastFrame() > 0 then
                        isBattleMode = 1
                    end
                end
                if f4_local23 == 5 or f4_local23 == 6 or f4_local23 == 30 or f4_local23 == 31 then
                    f4_local15 = f4_local15 + 1
                    if f4_local26:GetHpRate(TARGET_SELF) <= 0 then
                        f4_local16 = f4_local16 + 1
                    end
                end
                if f4_local26:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2 then
                    f4_local17 = f4_local17 + 1
                    if f4_local26:GetHpRate(TARGET_SELF) <= 0 then
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
    local f4_local23 = arg0:GetMemberNum()
    for f4_local23 = f4_local23 - 1, 0, -1 do
        local f4_local26 = arg0:GetMemberAI(f4_local23)
        if f4_local26 ~= nill then
            if f4_local23 == 0 then
                if f4_local12 == f4_local11 then
                    arg0:SendCommand(f4_local23, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local22 == 1 then
                    arg0:SendCommand(f4_local23, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local19 == 1 then
                    arg0:SendCommand(f4_local23, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local11 == 0 then
                    arg0:SendCommand(f4_local23, PLAN_PLATOON_COMMAND__WAIT)
                elseif f4_local20 == 1 then
                    arg0:SendCommand(f4_local23, PLAN_PLATOON_COMMAND__WAIT)
                else
                    arg0:SetMoveRate(f4_local23, 1)
                    arg0:SendCommand(f4_local23, f4_local0)
                end
            else
                if f4_local23 ~= 3 then
                    local f4_local27 = f4_local26:GetDist(TARGET_TEAM_FORMATION)
                    local f4_local28 = 0
                    if f4_local26:HasSpecialEffectId(TARGET_SELF, 5002) then
                        arg0:SetMoveRate(f4_local23, 1)
                    elseif f4_local4 < f4_local27 then
                        arg0:SetMoveRate(f4_local23, f4_local7)
                    elseif f4_local5 < f4_local27 then
                        f4_local28 = 1 + (f4_local27 - f4_local5) / (f4_local4 - f4_local5) * (f4_local7 - 1)
                        arg0:SetMoveRate(f4_local23, f4_local28)
                    elseif f4_local27 < f4_local6 then
                        f4_local28 = 1 + (f4_local6 - f4_local27) / f4_local6 * (f4_local8 - 1)
                        arg0:SetMoveRate(f4_local23, f4_local28)
                    else
                        arg0:SetMoveRate(f4_local23, 1)
                    end
                end
                if f4_local23 == 1 or f4_local23 == 2 then
                    local f4_local27 = f4_local26:GetHpRate(TARGET_SELF)
                    if f4_local27 < f4_local10 or f4_local20 == 1 then
                        arg0:SendCommand(f4_local23, f4_local3)
                    else
                        arg0:SendCommand(f4_local23, f4_local0)
                    end
                elseif f4_local23 == 3 then
                    if f4_local19 == 1 or f4_local20 == 1 then
                        arg0:SendCommand(f4_local23, f4_local3)
                    else
                        arg0:SendCommand(f4_local23, f4_local0)
                    end
                elseif f4_local21 == 1 then
                    arg0:SendCommand(f4_local23, f4_local3)
                elseif f4_local26:IsBattleState() == false and f4_local26:IsCautionState() == false then
                    arg0:SendCommand(f4_local23, f4_local0)
                elseif f4_local26:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 1 or f4_local26:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 2 then
                    if 1 == isBattleMode then
                        arg0:SendCommand(f4_local23, f4_local1)
                    else
                        arg0:SendCommand(f4_local23, f4_local2)
                    end
                else
                    arg0:SendCommand(f4_local23, f4_local1)
                end
            end
        end
    end
    
end


