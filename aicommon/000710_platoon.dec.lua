function Platoon000710_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, -7)
    arg0:SetFormationParam(2, 3, -11)
    arg0:SetFormationParam(3, -2, -13)
    arg0:SetFormationParam(4, 1, -16)
    arg0:SetFormationParam(5, -4, -20)
    arg0:SetFormationParam(6, 3.5, -22)
    arg0:SetFormationParam(7, -0.5, -25)
    arg0:SetBaseMoveRate(0, 10)
    arg0:SetBaseMoveRate(1, 0.6)
    arg0:SetBaseMoveRate(2, 1.2)
    arg0:SetBaseMoveRate(3, 1.2)
    arg0:SetBaseMoveRate(4, 1.2)
    arg0:SetBaseMoveRate(5, 1.2)
    arg0:SetBaseMoveRate(6, 1.2)
    arg0:SetBaseMoveRate(7, 1.2)
    
end

function Platoon000710_Activate(arg0)
    
end

function Platoon000710_Deactivate(arg0)
    
end

function Platoon000710_Update(arg0)
    Platoon_Common_Act(arg0, 1, 2)
    
end


