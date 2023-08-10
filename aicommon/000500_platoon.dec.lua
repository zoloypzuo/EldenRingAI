function Platoon000500_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    local f1_local0 = 0
    for f1_local1 = 1, arg0:GetMemberNum() - 1, 1 do
        f1_local0 = f1_local1
        arg0:SetFormationParam(f1_local1, 0, -(f1_local0 * 3))
    end
    arg0:SetBaseMoveRate(0, 1.5)
    local f1_local1 = 1
    for f1_local2 = arg0:GetMemberNum(), f1_local2 - 1, 1 do
        arg0:SetBaseMoveRate(f1_local1, 1)
    end
    f1_local1 = arg0:GetMemberNum()
    if f1_local1 > 7 then
        f1_local1 = arg0:GetMemberNum()
        f1_local1 = f1_local1 - 2
        for f1_local2 = arg0:GetMemberNum(), f1_local2 - 1, 1 do
            arg0:SetBaseMoveRate(f1_local1, 3)
        end
    end
    
end

function Platoon000500_Activate(arg0)
    
end

function Platoon000500_Deactivate(arg0)
    
end

function Platoon000500_Update(arg0)
    local f4_local0 = arg0:GetMemberAI(0)
    local f4_local1 = f4_local0:GetEventRequest()
    if f4_local1 == 4599 then
        for f4_local2 = 0, arg0:GetMemberNum() - 1, 1 do
            arg0:SetBaseMoveRate(f4_local2, 5)
        end
    end
    Platoon_Common_Act(arg0, 1)
    
end


