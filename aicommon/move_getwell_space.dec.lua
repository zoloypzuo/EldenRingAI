RegisterTableGoal(GOAL_COMMON_MoveGetwellSpace, "MoveGetwellSpace")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_MoveGetwellSpace, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 0, "???D??x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 1, "??????D??x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 2, "?E????D??x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 3, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 4, "???S?`?F?b?N????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveGetwellSpace, 5, "????s??????????????", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = {}
    local f1_local1 = {}
    local f1_local2 = {AI_DIR_TYPE_B, AI_DIR_TYPE_L, AI_DIR_TYPE_R}
    local f1_local3 = {180, -90, 90}
    local f1_local4 = arg2:GetParam(3)
    local f1_local5 = arg2:GetParam(4)
    local f1_local6 = arg2:GetParam(5)
    local f1_local7 = arg2:GetParam(6)
    for f1_local8 = 0, 2, 1 do
        if arg2:GetParam(f1_local8) >= 0 then
            local f1_local11 = table.getn(f1_local0) + 1
            for f1_local12 = 1, f1_local11 - 1, 1 do
                if f1_local0[f1_local12] < arg2:GetParam(f1_local8) then
                    f1_local11 = f1_local12
                    break
                end
            end
            local f1_local12 = table
            f1_local12 = f1_local12.insert
            local f1_local13 = f1_local0
            f1_local12(f1_local13, f1_local11, arg2:GetParam(f1_local8))
            f1_local12 = table
            f1_local12 = f1_local12.insert
            f1_local13 = f1_local1
            f1_local12(f1_local13, f1_local11, f1_local8 + 1)
        end
    end
    for f1_local8 = 1, 2, 1 do
        for f1_local11 = 1, table.getn(f1_local0), 1 do
            local f1_local14 = f1_local2[f1_local1[f1_local11]]
            if arg1:IsExistMeshOnLine(TARGET_SELF, f1_local14, f1_local5) and (not arg1:IsExistChrOnLineSpecifyAngle(TARGET_SELF, f1_local3[f1_local1[f1_local11]], f1_local5, AI_SPA_DIR_TYPE_TargetF) or f1_local8 == 2) then
                if f1_local14 == AI_DIR_TYPE_B then
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), TARGET_ENE_0, f1_local6, TARGET_ENE_0, true, -1)
                elseif f1_local14 == AI_DIR_TYPE_L then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), TARGET_ENE_0, 0, arg1:GetRandam_Int(30, 45), true, true, -1)
                elseif f1_local14 == AI_DIR_TYPE_R then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), TARGET_ENE_0, 1, arg1:GetRandam_Int(30, 45), true, true, -1)
                end
                return 
            end
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        if arg2:GetParam(5) then
            return GOAL_RESULT_Success
        else
            return GOAL_RESULT_Failed
        end
    end
    return GOAL_RESULT_Continue
    
end


