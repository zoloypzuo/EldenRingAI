function Platoon003000_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -1)
    arg0:SetFormationParam(2, 0, -3)
    arg0:SetFormationParam(3, 0, -5)
    arg0:SetFormationParam(4, 0, -7)
    arg0:SetFormationParam(5, 0, -9)
    arg0:SetFormationParam(6, 0, -11)
    arg0:SetFormationParam(7, 0, -13)
    arg0:SetFormationParam(8, 0, -15)
    arg0:SetFormationParam(9, 0, -17)
    arg0:SetFormationParam(10, 0, -19)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon003000_Activate(arg0)
    
end

function Platoon003000_Deactivate(arg0)
    
end

function Platoon003000_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


