function Platoon000451_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -1)
    arg0:SetFormationParam(2, -3, -6.1)
    arg0:SetFormationParam(3, 0, -5.8)
    arg0:SetFormationParam(4, 3, -6.1)
    arg0:SetFormationParam(5, 0, -11)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon000451_Activate(arg0)
    
end

function Platoon000451_Deactivate(arg0)
    
end

function Platoon000451_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


