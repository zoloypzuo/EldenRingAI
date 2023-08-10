function HorriblenessVarlet400000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local f1_local0 = arg0:GetRandam_Int(1, 100)
        local f1_local1 = arg0:GetEventRequest()
        local f1_local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local f1_local3 = arg0:GetDist(POINT_INITIAL)
        local f1_local4 = GetCurrentTimeType(arg0)
        local f1_local5 = arg0:GetPrevTargetState()
        local f1_local6 = arg0:GetCurrTargetState()
        local f1_local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10700)
        local f1_local8 = arg0:HasSpecialEffectId(TARGET_SELF, 10702)
        local f1_local9 = arg0:IsBattleState()
        local f1_local10 = arg0:IsCautionState()
        COMMON_EasySetup3(arg0)
    end
    
end

function HorriblenessVarlet400000_Interupt(arg0, arg1)
    
end


