function Platoon004450_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 45, -2.5)
    arg0:SetFormationParam(2, 47, -2.5)
    arg0:SetFormationParam(3, 45, -4.5)
    arg0:SetFormationParam(4, 47, -4.5)
    arg0:SetFormationParam(5, -45, -2.5)
    arg0:SetFormationParam(6, -47, -2.5)
    arg0:SetFormationParam(7, -45, -4.5)
    arg0:SetFormationParam(8, -47, -4.5)
    arg0:SetFormationParam(9, -1.5, -50)
    arg0:SetFormationParam(10, 1.5, -50)
    arg0:SetFormationParam(11, -1.5, -52)
    arg0:SetFormationParam(12, 1.5, -52)
    arg0:SetFormationParam(13, -1.5, -54)
    arg0:SetFormationParam(14, 1.5, -54)
    arg0:SetBaseMoveRate(0, 1)
    
end

function Platoon004450_Activate(arg0)
    
end

function Platoon004450_Deactivate(arg0)
    
end

function Platoon004450_Update(arg0)
    Platoon_Common_Act(arg0, 0)
    
end


