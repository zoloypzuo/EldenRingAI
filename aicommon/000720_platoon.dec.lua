function Platoon000720_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, -2.5, -7)
    arg0:SetFormationParam(2, 2.5, -8.5)
    arg0:SetFormationParam(3, 1, -17)
    arg0:SetFormationParam(4, -4, -21)
    arg0:SetFormationParam(5, 4, -22)
    arg0:SetFormationParam(6, -1, -25)
    arg0:SetFormationParam(7, 1, -27)
    arg0:SetBaseMoveRate(0, 40)
    arg0:SetBaseMoveRate(1, 0.7)
    arg0:SetBaseMoveRate(2, 0.7)
    arg0:SetBaseMoveRate(3, 1.5)
    arg0:SetBaseMoveRate(4, 1.5)
    arg0:SetBaseMoveRate(5, 1.5)
    arg0:SetBaseMoveRate(6, 1.5)
    arg0:SetBaseMoveRate(7, 1.5)
    
end

function Platoon000720_Activate(arg0)
    
end

function Platoon000720_Deactivate(arg0)
    
end

function Platoon000720_Update(arg0)
    Platoon_Common_Act(arg0, 0)
    
end


