function Platoon000900_Initialize(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 4, 13)
    arg0:SetFormationParam(2, -4, 13)
    arg0:SetFormationParam(3, 0, -1)
    arg0:SetFormationParam(4, 0, -15)
    arg0:SetFormationParam(5, -7, -10)
    arg0:SetFormationParam(6, 7, -10)
    arg0:SetFormationParam(30, 4.5, -13)
    arg0:SetFormationParam(31, -4.5, -13)
    arg0:SetFormationParam(28, -7, -10)
    arg0:SetFormationParam(29, 7, -10)
    arg0:SetFormationParam(7, 5, -1)
    arg0:SetFormationParam(8, -5, -1)
    arg0:SetFormationParam(9, 5, -5)
    arg0:SetFormationParam(10, -5, -5)
    arg0:SetFormationParam(11, 5, -9)
    arg0:SetFormationParam(12, -5, -9)
    arg0:SetFormationParam(13, 1, -18)
    arg0:SetFormationParam(14, -2, -19)
    arg0:SetFormationParam(15, 5, -20)
    arg0:SetFormationParam(16, -1, -21)
    arg0:SetFormationParam(17, 1, -21)
    arg0:SetFormationParam(18, -2, -23)
    arg0:SetFormationParam(19, 2, -24)
    arg0:SetFormationParam(20, 1, -25)
    arg0:SetFormationParam(21, 0, -26)
    arg0:SetFormationParam(22, -5, -30)
    arg0:SetFormationParam(23, 0, -30)
    arg0:SetFormationParam(24, 5, 3)
    arg0:SetFormationParam(25, -5, 3)
    arg0:SetFormationParam(26, 6.5, -2)
    arg0:SetFormationParam(27, -6.5, -2)
    arg0:SetBaseMoveRate(0, 16)
    
end

function Platoon000900_Activate(arg0)
    
end

function Platoon000900_Deactivate(arg0)
    
end

function Platoon000900_Update(arg0)
    Platoon_Common_Act(arg0, 1)
    
end


