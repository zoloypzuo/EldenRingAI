RegisterTableGoal(GOAL_COMMON_MoveToPossibleDirection, "MoveToPossibleDirection")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_MoveToPossibleDirection, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 0, "?õT?^?[?Q?b?g", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 1, "????^?[?Q?b?g", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 2, "??????????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 3, "????????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 4, "?p?x????x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 5, "????m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 6, "?K?[?h????m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPossibleDirection, 7, "???B???•c??", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = arg2:GetParam(3)
    local f1_local4 = arg2:GetParam(4)
    local f1_local5 = arg2:GetParam(5)
    local f1_local6 = arg2:GetParam(6)
    local f1_local7 = arg2:GetParam(7)
    local f1_local8 = arg2:GetParam(7)
    local f1_local9, f1_local10, f1_local11 = nil
    local f1_local12 = 10
    local f1_local13 = {}
    local f1_local14 = {}
    local f1_local15 = nil
    local f1_local16 = 1
    if f1_local0 == TARGET_SELF then
        f1_local10 = AI_SPA_DIR_TYPE_TargetF
    else
        f1_local10 = AI_SPA_DIR_TYPE_TargetF
        f1_local8 = f1_local8 + arg1:GetToTargetAngle(f1_local0)
    end
    for f1_local17 = 0, f1_local3, f1_local4 do
        for f1_local20 = 1, 2, 1 do
            if f1_local20 == 1 then
                f1_local9 = f1_local8 - 180 + f1_local17
            else
                f1_local9 = f1_local8 + 180 - f1_local17
            end
            f1_local16 = table.getn(f1_local13) + 1
            f1_local15 = math.floor(arg1:GetExistMeshOnLineDistSpecifyAngle(f1_local0, f1_local9, f1_local2 + 0.5, f1_local10))
            if f1_local2 < f1_local15 then
                f1_local15 = f1_local2
            end
            for f1_local23 = 1, table.getn(f1_local13), 1 do
                if f1_local13[f1_local23] < f1_local15 then
                    f1_local16 = f1_local23
                    break
                end
            end
            local f1_local23 = table
            f1_local23 = f1_local23.insert
            local f1_local24 = f1_local13
            f1_local23(f1_local24, f1_local16, f1_local15)
            f1_local23 = table
            f1_local23 = f1_local23.insert
            f1_local24 = f1_local14
            f1_local23(f1_local24, f1_local16, f1_local9)
        end
    end
    local f1_local17 = table
    f1_local17 = f1_local17.getn
    local f1_local18 = f1_local14
    f1_local17 = f1_local17(f1_local18)
    f1_local18 = false
    for f1_local19 = 1, f1_local17, 1 do
        if not arg1:IsExistChrOnLineSpecifyAngle(f1_local0, f1_local14[f1_local19], f1_local2, f1_local10) then
            f1_local18 = true
            arg1:SetAIFixedMoveTargetSpecifyAngle(f1_local0, f1_local14[f1_local19], f1_local13[f1_local19], f1_local10)
            break
        end
    end
    if f1_local17 > 1 and not f1_local18 then
        f1_local18 = true
        arg1:SetAIFixedMoveTargetSpecifyAngle(f1_local0, f1_local14[1], f1_local13[1], f1_local10)
    end
    local f1_local19 = true
    local f1_local20 = false
    local f1_local21 = arg1:GetRandam_Int(0, 100)
    if f1_local21 <= f1_local5 then
        f1_local19 = false
    end
    f1_local21 = -1
    if arg1:GetRandam_Int(0, 100) <= f1_local6 then
        f1_local21 = 9910
    end
    if arg1:GetDist(f1_local0) < f1_local2 then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), POINT_AI_FIXED_POS, f1_local7, f1_local1, f1_local19, f1_local21)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


