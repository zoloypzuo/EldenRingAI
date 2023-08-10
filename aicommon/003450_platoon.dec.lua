function Platoon003450_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -2.5)
    arg0:SetFormationParam(2, 1.5, -4.5)
    arg0:SetFormationParam(3, -1.5, -4.5)
    arg0:SetFormationParam(4, 1.5, -6.5)
    arg0:SetFormationParam(5, -1.5, -6.5)
    arg0:SetFormationParam(6, 2.5, -10)
    arg0:SetFormationParam(7, -2.5, -10)
    arg0:SetBaseMoveRate(0, 1)
    arg0:SetBaseMoveRate(1, 2.5)
    arg0:SetBaseMoveRate(2, 1.7)
    arg0:SetBaseMoveRate(3, 1.7)
    arg0:SetBaseMoveRate(4, 1.7)
    arg0:SetBaseMoveRate(5, 1.7)
    arg0:SetBaseMoveRate(6, 0.5)
    arg0:SetBaseMoveRate(7, 0.5)
    
end

function Platoon003450_Activate(arg0)
    
end

function Platoon003450_Deactivate(arg0)
    
end

function Platoon003450_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


