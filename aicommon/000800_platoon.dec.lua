function Platoon000800_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 3, -3)
    arg0:SetFormationParam(3, -2, -6)
    arg0:SetFormationParam(4, 1, -9)
    arg0:SetFormationParam(5, -1, -12)
    arg0:SetBaseMoveRate(0, 7.5)
    
end

function Platoon000800_Activate(arg0)
    
end

function Platoon000800_Deactivate(arg0)
    
end

function Platoon000800_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


