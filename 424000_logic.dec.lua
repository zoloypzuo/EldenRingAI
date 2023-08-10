function FingerSpider424000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetEventRequest()
        local f1_local1 = arg0:GetDist(TARGET_ENE_0)
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetDist(POINT_INITIAL)
        local f1_local4 = GetCurrentTimeType(arg0)
        local f1_local5 = arg0:GetPrevTargetState()
        local f1_local6 = arg0:GetCurrTargetState()
        local f1_local7 = arg0:IsBattleState()
        local f1_local8 = arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_INITIAL_STANDBY)
        local f1_local9 = arg0:HasSpecialEffectId(TARGET_SELF, 5090)
        arg0:SetStringIndexedNumber("_Timer_0", arg0:GetIdTimer(0))
        if f1_local7 == false and f1_local8 == true and f1_local9 == true then

        else
            COMMON_EasySetup3(arg0)
        end
    end
    
end

function FingerSpider424000_Interupt(arg0, arg1)
    
end


