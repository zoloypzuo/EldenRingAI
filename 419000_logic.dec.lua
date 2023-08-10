function ScarabLarge419000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:SetEnableUsePath(true)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        if arg0:HasSpecialEffectId(TARGET_SELF, 12604) == true then
            if arg0:IsBattleState() == true then
                COMMON_EasySetup3(arg0)
            else
                arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.25), TARGET_NONE, 0, 0, 0)
            end
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function ScarabLarge419000_Interupt(arg0, arg1)
    
end


