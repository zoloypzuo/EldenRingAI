function WalkShrine445000_Logic(arg0)
    local f1_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
    local f1_local1 = nil
    f1_local1 = arg0:AddTopGoal(f1_local0, -1)
    if f1_local1 then
        f1_local1:SetManagementGoal()
    end
    
end

function WalkShrine445000_Interupt(arg0, arg1)
    
end


