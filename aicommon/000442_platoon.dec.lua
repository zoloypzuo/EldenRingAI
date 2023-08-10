function Platoon000442_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -1)
    arg0:SetFormationParam(2, -0.5, -4)
    arg0:SetFormationParam(3, 0.5, -5)
    arg0:SetFormationParam(4, 0, -8)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon000442_Activate(arg0)
    
end

function Platoon000442_Deactivate(arg0)
    
end

function Platoon000442_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


