function Common_NPC_AI_GetItemUseDist(arg0, arg1, arg2, arg3, arg4)
    local f1_local0 = arg1:GetAIUsageParam(1, arg3)
    local f1_local1 = arg1:Mod(f1_local0, 100)
    local f1_local2 = arg4
    if f1_local1 == 0 then
        f1_local2 = arg4
    end
    if f1_local1 == 1 then
        f1_local2 = 7
    end
    if f1_local1 == 2 then
        f1_local2 = 5
    end
    if f1_local1 == 3 then
        f1_local2 = 3
    end
    if f1_local1 == 4 then
        f1_local2 = 1.5
    end
    arg1:SetStringIndexedNumber("Item_ApproachDist", f1_local2)
    
end

function Common_NPC_AI_GetSpellUseDist(arg0, arg1, arg2, arg3)
    local f2_local0 = arg1:GetAIUsageParam(0, arg3)
    local f2_local1 = arg1:Mod(f2_local0, 100)
    local f2_local2 = 10
    if f2_local1 == 0 then
        local f2_local3 = math.floor(f2_local0 / 1000000)
        if f2_local3 == 10 then
            f2_local2 = 10
        elseif f2_local3 == 11 then
            f2_local2 = 6
        elseif f2_local3 == 12 then
            f2_local2 = 2.5
        end
    end
    if f2_local1 == 10 then
        f2_local2 = 20
    end
    if f2_local1 == 20 then
        f2_local2 = 7.5
    end
    if f2_local1 == 21 then
        f2_local2 = 3.5
    end
    if f2_local1 == 30 then
        f2_local2 = 1.5
    end
    arg1:SetStringIndexedNumber("Spell_ApproachDist", f2_local2)
    
end

function Common_NPC_AI_GetArtsUseDist(arg0, arg1, arg2, arg3, arg4)
    local f3_local0 = arg1:GetAIUsageParam(2, arg3)
    local f3_local1 = arg1:Mod(f3_local0, 100)
    local f3_local2 = arg4
    if f3_local1 == 0 then
        f3_local2 = arg4
    end
    if f3_local1 == 1 then
        f3_local2 = 7
    end
    if f3_local1 == 2 then
        f3_local2 = 5
    end
    if f3_local1 == 3 then
        f3_local2 = 3
    end
    if f3_local1 == 4 then
        f3_local2 = 1.5
    end
    if f3_local1 == 5 then
        f3_local2 = -1
    end
    arg1:SetStringIndexedNumber("Arts_ApproachDist", f3_local2)
    
end


