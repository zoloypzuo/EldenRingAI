function Platoon000730_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -1)
    arg0:SetFormationParam(2, 0, -1)
    arg0:SetFormationParam(3, -1, -4.5)
    arg0:SetFormationParam(4, 1, -5.5)
    arg0:SetFormationParam(5, 0, -8)
    arg0:SetBaseMoveRate(0, 3)
    arg0:SetBaseMoveRate(1, 0.7)
    arg0:SetBaseMoveRate(2, 0.7)
    arg0:SetBaseMoveRate(3, 0.8)
    arg0:SetBaseMoveRate(4, 0.7)
    
end

function Platoon000730_Activate(arg0)
    
end

function Platoon000730_Deactivate(arg0)
    
end

function Platoon000730_Update(arg0)
    local f4_local0 = 1
    local f4_local1 = 0.9
    Platoon_Common_Act(arg0, 1)
    
end


