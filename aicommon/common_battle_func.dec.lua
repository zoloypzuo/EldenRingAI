function Common_Clear_Param(arg0, arg1)
    local f1_local0 = 1
    for f1_local1 = 1, 50, 1 do
        arg0[f1_local1] = 0
        arg1[f1_local1] = nil
    end
    
end

function Common_Battle_Activate(arg0, arg1, arg2, arg3, arg4)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = 0
    local f2_local3 = 1
    for f2_local4 = 1, 50, 1 do
        if arg3[f2_local4] ~= nil then
            f2_local0[f2_local4] = arg3[f2_local4]
        else
            f2_local0[f2_local4] = REGIST_FUNC(arg0, arg1, errorAct)
        end
        f2_local1[f2_local4] = arg2[f2_local4]
        f2_local2 = f2_local2 + f2_local1[f2_local4]
    end
    local f2_local4 = 0
    local f2_local5 = arg0:DbgGetForceActIdx()
    if 0 < f2_local5 and f2_local5 <= 50 then
        f2_local4 = f2_local0[f2_local5]()
        arg0:DbgSetLastActIdx(f2_local5)
    else
        local f2_local6 = arg0:GetRandam_Int(1, f2_local2)
        local f2_local7 = 0
        local f2_local8 = 1
        for f2_local9 = 1, 50, 1 do
            f2_local7 = f2_local7 + f2_local1[f2_local9]
            if f2_local6 <= f2_local7 then
                f2_local4 = f2_local0[f2_local9]()
                arg0:DbgSetLastActIdx(f2_local9)
                local f2_local9 = 50
            end
        end
    end
    f2_local6 = arg0:GetRandam_Int(1, 100)
    if f2_local4 == nil or arg4 == nil then
        f2_local4 = 0
    end
    if f2_local6 <= f2_local4 then
        arg4()
    end
    
end

function errorAct(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ErrorNotification, 5, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function Common_Battle_Activate_ForCommonNPC(arg0, arg1, arg2, arg3, arg4)
    local f4_local0 = {}
    local f4_local1 = {}
    local f4_local2 = 0
    local f4_local3 = 1
    for f4_local4 = 1, 500, 1 do
        if arg3[f4_local4] ~= nil then
            f4_local0[f4_local4] = arg3[f4_local4]
        else
            f4_local0[f4_local4] = REGIST_FUNC(arg0, arg1, errorAct)
        end
        if arg2[f4_local4] ~= nil then
            if arg2[f4_local4] < 0 then
                f4_local1[f4_local4] = 0
            else
                f4_local1[f4_local4] = arg2[f4_local4]
                f4_local2 = f4_local2 + f4_local1[f4_local4]
            end
        end
    end
    local f4_local4 = 0
    local f4_local5 = arg0:DbgGetForceActIdx()
    if 0 < f4_local5 and f4_local5 <= 500 then
        f4_local4 = f4_local0[f4_local5]()
        arg0:DbgSetLastActIdx(f4_local5)
    else
        local f4_local6 = arg0:GetRandam_Int(1, f4_local2)
        local f4_local7 = 0
        local f4_local8 = 1
        for f4_local9 = 1, 500, 1 do
            if f4_local1[f4_local9] ~= nil then
                f4_local7 = f4_local7 + f4_local1[f4_local9]
                if f4_local6 <= f4_local7 then
                    f4_local4 = f4_local0[f4_local9]()
                    arg0:DbgSetLastActIdx(f4_local9)
                    local f4_local9 = 500
                end
            end
        end
    end
    f4_local6 = arg0:GetRandam_Int(1, 100)
    if f4_local4 == nil or arg4 == nil then
        f4_local4 = 0
    end
    if f4_local6 <= f4_local4 then
        arg4()
    end
    
end

function ResetActPerArr_ForCommonNPC(arg0)
    local f5_local0 = 1
    for f5_local1 = 1, 500, 1 do
        if arg0[f5_local1] ~= nil then
            arg0[f5_local1] = 0
        end
    end
    return arg0
    
end


