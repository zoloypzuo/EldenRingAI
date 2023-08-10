function Platoon000700_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -5)
    arg0:SetFormationParam(2, 3, -6)
    arg0:SetFormationParam(3, -2, -8)
    arg0:SetFormationParam(4, 1, -11)
    arg0:SetFormationParam(5, -4, -15)
    arg0:SetFormationParam(6, 2, -17)
    arg0:SetBaseMoveRate(0, 8)
    
end

function Platoon000700_Activate(arg0)
    
end

function Platoon000700_Deactivate(arg0)
    
end

function Platoon000700_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


