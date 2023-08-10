g_FormationTable = {}
Formation = nil
function RegisterFormation(arg0, arg1)
    Formation = {}
    g_FormationTable[arg0] = Formation
    
end

function TeamAiFormationExec(arg0, arg1, arg2, arg3)
    local f2_local0 = g_FormationTable[arg0]
    if f2_local0 ~= nil then
        local f2_local1 = arg3:GetParamNum()
        if f2_local1 == 0 then
            f2_local0.Exec(arg1, arg2)
        elseif f2_local1 == 1 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0))
        elseif f2_local1 == 2 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1))
        elseif f2_local1 == 3 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2))
        elseif f2_local1 == 4 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3))
        elseif f2_local1 == 5 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4))
        elseif f2_local1 == 6 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5))
        elseif f2_local1 == 7 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5), arg3:GetParam(6))
        elseif f2_local1 == 8 then
            f2_local0.Exec(arg1, arg2, arg3:GetParam(0), arg3:GetParam(1), arg3:GetParam(2), arg3:GetParam(3), arg3:GetParam(4), arg3:GetParam(5), arg3:GetParam(6), arg3:GetParam(7))
        end
        return true
    end
    return false
    
end

RegisterFormation(FORMATION_TYPE__CIRCLE, "FORMATION_TYPE__CIRCLE")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local f3_local0 = arg1:GetMemberNum()
    for f3_local1 = 0, f3_local0 - 1, 1 do
        local f3_local4 = 360 * f3_local1 / f3_local0
        arg0:AddCirclePoint(arg1:GetMember(f3_local1), arg2, f3_local4, arg3, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    
end

RegisterFormation(FORMATION_TYPE__PROCESSION, "FORMATION_TYPE__PROCESSION")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local f4_local0 = arg1:GetMemberNum()
    for f4_local1 = 0, f4_local0 - 1, 1 do
        arg0:AddProcessionPoint(arg1:GetMember(f4_local1), arg2, math.mod(f4_local1, arg3) * 4 - 4 * 2 * 0.5, math.floor(f4_local1 / arg3) * 4 + 2, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    
end

RegisterFormation(FORMATION_TYPE__TEST, "FORMATION_TYPE__TEST")
Formation.Exec = function (arg0, arg1, arg2, arg3)
    local f5_local0 = arg1:GetMemberNum()
    for f5_local1 = 0, f5_local0 - 1, 2 do
        arg0:AddProcessionPoint(arg1:GetMember(f5_local1), arg2, 0.5, -1.5 - f5_local1 * 1.5, TEAM_FMT_BASE_DIR__TARGET_DIR)
        arg0:AddProcessionPoint(arg1:GetMember(f5_local1), arg2, -0.5, -1.5 - f5_local1 * 1.5 - 0.5, TEAM_FMT_BASE_DIR__TARGET_DIR)
    end
    
end


