function Platoon003661_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(1, 1, -3)
    arg0:SetFormationParam(2, -2, -4)
    arg0:SetFormationParam(3, 5, -5)
    arg0:SetFormationParam(4, -1, -6)
    arg0:SetFormationParam(5, 1, -6)
    arg0:SetFormationParam(6, -2, -7)
    arg0:SetFormationParam(7, 3, -8)
    arg0:SetFormationParam(8, 1, -8)
    arg0:SetFormationParam(9, -1, -9)
    arg0:SetFormationParam(10, -5, -10)
    arg0:SetFormationParam(11, 0, -10)
    arg0:SetFormationParam(12, 1, -12)
    arg0:SetFormationParam(13, -2, -13)
    arg0:SetFormationParam(14, 5, -14)
    arg0:SetFormationParam(15, -1, -15)
    arg0:SetFormationParam(16, 1, -16)
    arg0:SetFormationParam(17, -2, -18)
    arg0:SetFormationParam(18, 2, -19)
    arg0:SetFormationParam(19, 1, -20)
    arg0:SetFormationParam(20, -5, -22)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon003661_Activate(arg0)
    
end

function Platoon003661_Deactivate(arg0)
    
end

function Platoon003661_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


