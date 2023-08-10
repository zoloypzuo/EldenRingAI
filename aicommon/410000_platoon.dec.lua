function Platoon410000_Initialize(arg0)
    arg0:SetEnablePlatoonMove(false)
    
end

function Platoon410000_Activate(arg0)
    
end

function Platoon410000_Deactivate(arg0)
    
end

function Platoon410000_Update(arg0)
    local f4_local0 = 100
    local f4_local1 = 101
    local f4_local2 = 0
    for f4_local3 = arg0:GetMemberNum() - 1, 0, -1 do
        local f4_local6 = arg0:GetMemberAI(f4_local3)
        if f4_local6 ~= nill and f4_local6:GetHpRate(TARGET_SELF) <= 0 then
            f4_local2 = f4_local2 + 1
        end
    end
    local f4_local3 = arg0:GetMemberNum()
    f4_local3 = f4_local3 / 2
    local f4_local4 = math
    f4_local4 = f4_local4.floor
    f4_local4 = f4_local4(arg0:GetMemberNum() / 2)
    if f4_local4 <= f4_local2 then
        arg0:SendCommandAll(f4_local1)
    else
        arg0:SendCommandAll(f4_local0)
    end
    
end


