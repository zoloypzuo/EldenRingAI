function _COMMON_GetEzStateAnimId(arg0, arg1)
    ret = {}
    local f1_local0 = 1
    for f1_local1 = 1, 30, 1 do
        local f1_local4 = ret
        f1_local4[f1_local1] = arg0:GetEzStateAnimId(arg1, f1_local1 - 1)
    end
    local f1_local1 = ret
    return f1_local1
    
end

function _COMMON_GetMinDist(arg0, arg1)
    ret = {}
    local f2_local0 = 1
    for f2_local1 = 1, 30, 1 do
        local f2_local4 = ret
        f2_local4[f2_local1] = arg0:GetMinDist(arg1, f2_local1 - 1)
    end
    local f2_local1 = ret
    return f2_local1
    
end

function _COMMON_GetMaxDist(arg0, arg1)
    ret = {}
    local f3_local0 = 0
    for f3_local1 = 0, 29, 1 do
        local f3_local4 = ret
        f3_local4[f3_local1] = arg0:GetMaxDist(arg1, f3_local1 - 1)
    end
    local f3_local1 = ret
    return f3_local1
    
end

function _COMMON_GetAtkDistType(arg0, arg1)
    ret = {}
    local f4_local0 = 1
    for f4_local1 = 1, 30, 1 do
        local f4_local4 = ret
        f4_local4[f4_local1] = arg0:GetAtkDistType(arg1, f4_local1 - 1)
        if ret[f4_local1] == 0 then
            ret[f4_local1] = DIST_Near
        elseif ret[f4_local1] == 1 then
            ret[f4_local1] = DIST_Middle
        elseif ret[f4_local1] == 2 then
            ret[f4_local1] = DIST_Far
        elseif ret[f4_local1] == 3 then
            ret[f4_local1] = DIST_Out
        elseif ret[f4_local1] == 4 then
            ret[f4_local1] = DIST_None
        end
    end
    local f4_local1 = ret
    return f4_local1
    
end

function _COMMON_GetOddsParam(arg0, arg1)
    ret = {}
    local f5_local0 = arg0:GetOddsParamIdOffset(100)
    local f5_local1 = 0
    for f5_local2 = 0, 99, 1 do
        local f5_local5 = ret
        f5_local5[f5_local2] = arg0:GetOddsParam(f5_local0 + arg1, f5_local2)
    end
    local f5_local2 = ret
    return f5_local2
    
end

function _COMMON_MulOddsXWeight(arg0, arg1)
    local f6_local0 = 0
    local f6_local1 = true
    local f6_local2 = table.getn(arg1)
    if f6_local2 == 0 then
        f6_local1 = false
    end
    f6_local2 = 0
    local f6_local3 = 0
    for f6_local4 = 0, 99, 1 do
        if f6_local1 == false then
            arg1[f6_local4] = 1
        end
        arg0[f6_local4] = arg0[f6_local4] * arg1[f6_local4]
        if arg0[f6_local4] < 0 then
            arg0[f6_local4] = 0
        end
        arg0[f6_local4] = arg0[f6_local4] + f6_local2
        f6_local2 = arg0[f6_local4]
        if f6_local3 < arg0[f6_local4] then
            f6_local3 = arg0[f6_local4]
        end
    end
    return f6_local3
    
end

function _COMMON_MulWeightParam(arg0, arg1, arg2)
    local f7_local0 = false
    if table.getn(arg1) == 0 then
        f7_local0 = true
    end
    local f7_local1 = arg0:GetOddsParamIdOffset(100)
    local f7_local2 = 0
    for f7_local3 = 0, 99, 1 do
        if f7_local0 then
            arg1[f7_local3] = 1
        end
        arg1[f7_local3] = arg1[f7_local3] * arg0:GetOddsParam(f7_local1 + arg2, f7_local3)
    end
    
end

function _COMMON_SetEnemyActRate(arg0, arg1, arg2, arg3)
    arg1:SetStringIndexedNumber("ActRate01", arg3)
    arg1:SetStringIndexedNumber("ActRate02", arg3)
    arg1:SetStringIndexedNumber("ActRate03", arg3)
    arg1:SetStringIndexedNumber("ActRate04", arg3)
    arg1:SetStringIndexedNumber("ActRate05", arg3)
    arg1:SetStringIndexedNumber("ActRate06", arg3)
    arg1:SetStringIndexedNumber("ActRate07", arg3)
    arg1:SetStringIndexedNumber("ActRate08", arg3)
    arg1:SetStringIndexedNumber("ActRate09", arg3)
    arg1:SetStringIndexedNumber("ActRate10", arg3)
    arg1:SetStringIndexedNumber("ActRate11", arg3)
    arg1:SetStringIndexedNumber("ActRate12", arg3)
    arg1:SetStringIndexedNumber("ActRate13", arg3)
    arg1:SetStringIndexedNumber("ActRate14", arg3)
    arg1:SetStringIndexedNumber("ActRate15", arg3)
    arg1:SetStringIndexedNumber("ActRate16", arg3)
    arg1:SetStringIndexedNumber("ActRate17", arg3)
    arg1:SetStringIndexedNumber("ActRate18", arg3)
    arg1:SetStringIndexedNumber("ActRate19", arg3)
    arg1:SetStringIndexedNumber("ActRate20", arg3)
    
end


