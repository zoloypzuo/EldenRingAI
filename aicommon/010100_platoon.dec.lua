function Platoon010100_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 2, -2)
    arg0:SetFormationParam(3, -2, -3)
    arg0:SetFormationParam(4, 1, -5)
    arg0:SetFormationParam(5, -1, -6)
    arg0:SetBaseMoveRate(0, 4)
    
end

function Platoon010100_Activate(arg0)
    
end

function Platoon010100_Deactivate(arg0)
    
end

function Platoon010100_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


