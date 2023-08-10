REGISTER_GOAL_NO_UPDATE(GOAL_COMMON_UseItem, true)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_UseItem, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_UseItem, 0, "?A?C?e???C???f?b?N?X", 0)
function UseItem_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg0:ChangeEquipItem(f1_local0, ITEM_SLOTTYPE_SHORTCUT)
    arg1:AddSubGoal(GOAL_COMMON_Attack, 5, NPC_ATK_Item, TARGET_NONE, DIST_None)
    
end

function UseItem_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function UseItem_Terminate(arg0, arg1)
    
end

function UseItem_Interupt(arg0, arg1)
    return false
    
end


