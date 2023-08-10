function Platoon_Common_Act(arg0, arg1, arg2)
    local f1_local0 = 10
    local f1_local1 = 5
    local f1_local2 = 5
    local f1_local3 = 1.5
    local f1_local4 = 0.7
    local f1_local5 = 4
    if arg2 ~= nil then
        f1_local0 = f1_local0 * arg2
        f1_local1 = f1_local1 * arg2
        f1_local2 = f1_local2 * arg2
        f1_local5 = f1_local5 * arg2
    end
    local f1_local6 = 0
    local f1_local7 = 0
    local f1_local8 = -1
    local f1_local9 = 0
    for f1_local10 = arg0:GetMemberNum() - 1, 0, -1 do
        local f1_local13 = arg0:GetMemberAI(f1_local10)
        if f1_local13 ~= nill then
            if f1_local10 == 0 then
                local f1_local14 = f1_local13:GetPrevMovePointNumber()
                if arg0:GetNumber(50) ~= f1_local14 then
                    f1_local9 = 1
                end
                arg0:SetNumber(50, f1_local14)
                f1_local8 = f1_local13:GetMovePointActionId(f1_local14)
            else
                local f1_local14 = f1_local13:GetDist(TARGET_TEAM_FORMATION)
                f1_local6 = f1_local6 + 1
                if f1_local5 < f1_local14 then
                    f1_local7 = f1_local7 + 1
                end
            end
        end
    end
    local f1_local10 = arg0:GetMemberNum()
    for f1_local10 = f1_local10 - 1, 0, -1 do
        local f1_local13 = arg0:GetMemberAI(f1_local10)
        if f1_local13 ~= nill then
            if f1_local10 == 0 then
                if f1_local7 == f1_local6 and arg1 == 1 then
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__WAIT)
                elseif f1_local6 == 0 and arg1 == 1 then
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__WAIT)
                else
                    arg0:SetMoveRate(f1_local10, 1)
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__MOVE)
                end
            else
                local f1_local14 = f1_local13:GetDist(TARGET_TEAM_FORMATION)
                local f1_local15 = 0
                if f1_local13:HasSpecialEffectId(TARGET_SELF, 5002) then
                    arg0:SetMoveRate(f1_local10, 1)
                elseif f1_local0 < f1_local14 then
                    arg0:SetMoveRate(f1_local10, f1_local3)
                elseif f1_local1 < f1_local14 then
                    f1_local15 = 1 + (f1_local14 - f1_local1) / (f1_local0 - f1_local1) * (f1_local3 - 1)
                    arg0:SetMoveRate(f1_local10, f1_local15)
                elseif f1_local14 < f1_local2 then
                    f1_local15 = 1 + (f1_local2 - f1_local14) / f1_local2 * (f1_local4 - 1)
                    arg0:SetMoveRate(f1_local10, f1_local15)
                else
                    arg0:SetMoveRate(f1_local10, 1)
                end
                if f1_local9 == 1 then
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET, f1_local8)
                elseif f1_local8 ~= -1 then
                    math.randomseed(f1_local10 + arg0:GetNumber(50) + f1_local8)
                    local f1_local16 = math.random()
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR, f1_local8, f1_local16)
                else
                    arg0:SendCommand(f1_local10, PLAN_PLATOON_COMMAND__MOVE, f1_local8)
                end
            end
        end
    end
    
end

function Platoon_Common_SpeedControl(arg0, arg1)
    for f2_local0 = arg0:GetMemberNum() - 1, 0, -1 do
        local f2_local3 = arg0:GetMemberAI(f2_local0)
        if f2_local3 ~= nill then
            if f2_local0 == 0 then
                if distantChara == activeChara then
                    arg0:SetMoveRate(f2_local0, 0)
                elseif 0 == activeChara then
                    arg0:SetMoveRate(f2_local0, 0)
                elseif arg1 then
                    arg0:SetMoveRate(f2_local0, 0)
                else
                    arg0:SetMoveRate(f2_local0, 1)
                end
            else
                local f2_local4 = f2_local3:GetDist(TARGET_TEAM_FORMATION)
                local f2_local5 = 0
                if f2_local3:HasSpecialEffectId(TARGET_SELF, 5002) then
                    arg0:SetMoveRate(f2_local0, 1)
                elseif f2_local4 > maxMoveRateThresholdDist then
                    arg0:SetMoveRate(f2_local0, maxMoveRate)
                elseif f2_local4 > increaseMoveRateThresholdDist then
                    f2_local5 = 1 + (f2_local4 - increaseMoveRateThresholdDist) / (maxMoveRateThresholdDist - increaseMoveRateThresholdDist) * (maxMoveRate - 1)
                    arg0:SetMoveRate(f2_local0, f2_local5)
                elseif f2_local4 < decreaseMoveRateThresholdDist then
                    f2_local5 = 1 + (decreaseMoveRateThresholdDist - f2_local4) / decreaseMoveRateThresholdDist * (minMoveRate - 1)
                    arg0:SetMoveRate(f2_local0, f2_local5)
                else
                    arg0:SetMoveRate(f2_local0, 1)
                end
            end
        end
    end
    
end


