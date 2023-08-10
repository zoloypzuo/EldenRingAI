function Platoon000100_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 0.5, -1)
    arg0:SetFormationParam(3, -0.5, -2)
    arg0:SetBaseMoveRate(0, 1.5)
    arg0:SetBaseMoveRate(1, 0.7)
    arg0:SetBaseMoveRate(2, 1)
    arg0:SetBaseMoveRate(3, 1)
    
end

function Platoon000100_Activate(arg0)
    
end

function Platoon000100_Deactivate(arg0)
    
end

function Platoon000100_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


