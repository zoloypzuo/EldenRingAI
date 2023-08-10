function CWolf407100_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        arg0:GetStringIndexedNumber("NonCombat_FirstSet")
        arg0:GetStringIndexedNumber("MorningAction")
        arg0:GetStringIndexedNumber("HowlingFlag")
        arg0:GetStringIndexedNumber("BarkFlag")
        if arg0:GetStringIndexedNumber("NonCombat_FirstSet") == 0 and arg0:HasSpecialEffectId(TARGET_SELF, 10416) then
            local f1_local2 = arg0:GetRandam_Int(7, 30)
            local f1_local3 = arg0:GetRandam_Int(40, 70)
            arg0:SetTimer(10, f1_local2)
            arg0:SetStringIndexedNumber("HowlingFlag", 1)
            arg0:SetStringIndexedNumber("NonCombat_FirstSet", 1)
        end
        if arg0:IsFinishTimer(10) == true and arg0:HasSpecialEffectId(TARGET_SELF, 10416) then
            local f1_local2 = arg0:GetRandam_Int(120, 200)
            arg0:SetTimer(10, f1_local2)
            arg0:SetStringIndexedNumber("HowlingFlag", 0)
        end
        if arg0:GetStringIndexedNumber("HowlingFlag") == 0 and arg0:HasSpecialEffectId(TARGET_SELF, 10416) then
            arg0:SetStringIndexedNumber("HowlingFlag", 1)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
        if f1_local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif f1_local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        elseif RideRequest(arg0, 10, -1) then
            arg0:AddTopGoal(GOAL_COMMON_Mount, 10, 1.2)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function CWolf407100_Interupt(arg0, arg1)
    
end


