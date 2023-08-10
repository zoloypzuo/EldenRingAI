function Platoon000440_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, -1, -1)
    arg0:SetFormationParam(2, 1, -3)
    arg0:SetFormationParam(3, -1, -5)
    arg0:SetFormationParam(4, 1, -7)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon000440_Activate(arg0)
    
end

function Platoon000440_Deactivate(arg0)
    
end

function Platoon000440_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


