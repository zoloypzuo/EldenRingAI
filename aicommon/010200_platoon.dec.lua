function Platoon010200_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 1, -2)
    arg0:SetFormationParam(2, -1, -2)
    arg0:SetFormationParam(3, 0.8, -4)
    arg0:SetFormationParam(4, -0.8, -4)
    arg0:SetBaseMoveRate(0, 2.5)
    
end

function Platoon010200_Activate(arg0)
    
end

function Platoon010200_Deactivate(arg0)
    
end

function Platoon010200_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


