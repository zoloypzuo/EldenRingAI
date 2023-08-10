REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 0, "?G????????ûÐ???ym?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 1, "?G??????I???H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 2, "????H", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 3, "????yTYPE?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 4, "????????????ym?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_NonBattleAct, 5, "??@???S?[??", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_NonBattleAct, 0.1, 0.2)
function _IsWalk_ForNonBattleAct(arg0, arg1)
    local f1_local0 = 1
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_SPIRIT_CANDLE) then
        if arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_HIDDEN) then
            f1_local0 = 0
        else
            f1_local0 = 1
        end
        return f1_local0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5000) then
        f1_local0 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5004) then
        if arg0:IsRiding(TARGET_SELF) then
            f1_local0 = 0
        else
            f1_local0 = 1
        end
    elseif arg1:GetParam(2) == 0 then
        f1_local0 = 1
    else
        f1_local0 = 0
    end
    return f1_local0
    
end

function NonBattleAct_Activate(arg0, arg1)
    local f2_local0 = true
    if _IsWalk_ForNonBattleAct(arg0, arg1) == 0 then
        f2_local0 = false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 5011) then
        arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_SELF)
    elseif arg0:GetStringIndexedNumber("NonBattleAct_FailedPathMove") > 0 then
        local f2_local1 = arg0:GetActTypeOnNonBattleFailedPathEnd()
        arg0:SetStringIndexedNumber("NonBattleAct_FailedPathMove", 0)
        if f2_local1 == AI_FAILED_PATH_NONBTL_ACT_TYPE__STAY then
            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_SELF)
        elseif f2_local1 == AI_FAILED_PATH_NONBTL_ACT_TYPE__WALK_AROUND then
            arg1:AddSubGoal(GOAL_COMMON_WalkAround, -1, 0.5, f2_local0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        local f2_local1 = arg0:GetPlatoonCommand()
        local f2_local2 = f2_local1:GetCommandNo()
        local f2_local3 = arg0:GetBuddyFollowType()
        if arg0:GetTeamDefeatEntityId() > 0 then
            local f2_local4 = arg0:IsExistTargetTeamDefeat()
            if f2_local4 == false then
                f2_local4 = 1840
                if arg0:IsNpcPlayer() == true then
                    f2_local4 = NPC_ATK_BuddyReturn
                end
                arg0:NotifyBuddyUnsummon()
                arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF)
                arg1:AddSubGoal(GOAL_COMMON_WaitWithAnime, -1, f2_local4, TARGET_SELF)
            elseif f2_local3 == PLAN_BUDDYFOLLOWTYPE_NOFOLLOW_WAIT then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF)
            elseif f2_local3 == PLAN_BUDDYFOLLOWTYPE_NOFOLLOW_WALKAROUND or not not arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE) or arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE_DEMIHUMAN) then
                arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, arg1:GetLife(), 2, 10, true, -1, arg0:GetRandam_Float(4, 8), -1, false, false, false)
            else
                local f2_local4 = arg0:GetDist(TARGET_HOSTPLAYER)
                local f2_local5 = TARGET_HOSTPLAYER
                local f2_local6 = false
                local f2_local7 = 45
                local f2_local8 = 3
                local f2_local9 = 1.5
                if arg0:IsBattleState() then
                    f2_local5 = TARGET_ENE_0
                end
                if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_WALK_FOLLOW) then
                    f2_local6 = true
                end
                if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_REAR_FOLLOW) then
                    f2_local8 = 1.5
                    f2_local7 = 135
                    f2_local9 = 1
                end
                if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_FLY_FOLLOW) then
                    f2_local8 = 5.5
                    f2_local7 = 60
                    f2_local9 = 0.3
                end
                if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_NO_FOLLOW) then
                    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF)
                    return true
                end
                if f2_local4 < 0.5 then
                    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_SELF)
                    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_HOSTPLAYER, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToB, 4)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ApproachForBuddy, 30, TARGET_HOSTPLAYER, 2, TARGET_SELF, f2_local6, -1, f2_local7, 15, f2_local8)
                end
            end
        end
        elseif f2_local3 == PLAN_BUDDYFOLLOWTYPE_NOFOLLOW_WAIT then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF)
        elseif f2_local3 == PLAN_BUDDYFOLLOWTYPE_NOFOLLOW_WALKAROUND or not not arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE) or arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE_DEMIHUMAN) then
            arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, arg1:GetLife(), 2, 10, true, -1, arg0:GetRandam_Float(4, 8), -1, false, false, false)
        else
            local f2_local4 = arg0:GetDist(TARGET_HOSTPLAYER)
            local f2_local5 = TARGET_HOSTPLAYER
            local f2_local6 = false
            local f2_local7 = 45
            local f2_local8 = 3
            local f2_local9 = 1.5
            if arg0:IsBattleState() then
                f2_local5 = TARGET_ENE_0
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_WALK_FOLLOW) then
                f2_local6 = true
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_REAR_FOLLOW) then
                f2_local8 = 1.5
                f2_local7 = 135
                f2_local9 = 1
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_FLY_FOLLOW) then
                f2_local8 = 5.5
                f2_local7 = 60
                f2_local9 = 0.3
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_NO_FOLLOW) then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF)
                return true
            end
            if f2_local4 < 0.5 then
                arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1.5, 2.5), TARGET_SELF)
                arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 10, TARGET_HOSTPLAYER, 1, TARGET_SELF, true, -1, AI_DIR_TYPE_ToB, 4)
            else
                arg1:AddSubGoal(GOAL_COMMON_ApproachForBuddy, 30, TARGET_HOSTPLAYER, 2, TARGET_SELF, f2_local6, -1, f2_local7, 15, f2_local8)
            end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_STRAGGLER_DEACT) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
    elseif not not arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_STRAGGLER_ACT) or arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_STRAGGLER_ACT_HOSTILE) then
        local f2_local1 = 15
        if f2_local1 <= arg0:GetDist(POINT_StragglerAfterDefeat) then
            local f2_local2 = arg0:GetRandam_Int(0, 5)
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_StragglerAfterDefeat, f2_local1 - f2_local2, TARGET_SELF, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
        end
    elseif arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false then
        local f2_local1 = arg0:GetPlatoonCommand()
        local f2_local2 = f2_local1:GetCommandNo()
        local f2_local3 = arg0:GetDist(TARGET_TEAM_FORMATION)
        local f2_local4 = 1
        if f2_local2 == PLAN_PLATOON_COMMAND__MOVE or f2_local2 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR or f2_local2 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET then
            local f2_local5 = f2_local1:GetParam(0)
            local f2_local6 = f2_local1:GetParam(1)
            if arg0:IsSearchTarget(TARGET_ENE_0) then
                local f2_local7 = arg1:GetParam(6)
                arg1:AddSubGoal(GOAL_COMMON_BackToHome, arg1:GetLife(), 0, f2_local7, 0, 0, TARGET_TEAM_FORMATION)
            elseif arg0:GetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct") ~= 1 and COMMON_PatrolBehavior(arg0, arg1, f2_local5, f2_local6) then
                arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct", 1)
            elseif f2_local3 < f2_local4 then
                arg1:AddSubGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_SELF)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, f2_local4, TARGET_SELF, f2_local0)
            end
        elseif f2_local2 == PLAN_PLATOON_COMMAND__DEF then
            if f2_local3 < f2_local4 then
                arg1:AddSubGoal(GOAL_COMMON_Stay, 0.5, 0, TARGET_SELF)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, f2_local4, TARGET_SELF, f2_local0)
            end
        elseif f2_local2 == PLAN_PLATOON_COMMAND__RUN then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTargetToPathEnd, -1, TARGET_TEAM_LEADER, 80, TARGET_SELF, false, -1, GOAL_RESULT_Continue, false, 2)
            arg1:AddSubGoal(GOAL_COMMON_Stay, 10, 0, TARGET_TEAM_LEADER)
        elseif f2_local2 == PLAN_PLATOON_COMMAND__PATROLEND or f2_local2 == PLAN_PLATOON_COMMAND__PATROLEND_WITHWALKAROUND or f2_local2 == PLAN_PLATOON_COMMAND__STOPEND or f2_local2 == PLAN_PLATOON_COMMAND__STOPEND_WITHWALKAROUND then
            local f2_local5 = arg0:GetDist(TARGET_TEAM_MEMBER_3)
            if f2_local5 < 35 then
                if f2_local2 == PLAN_PLATOON_COMMAND__PATROLEND_WITHWALKAROUND or f2_local2 == PLAN_PLATOON_COMMAND__STOPEND_WITHWALKAROUND then
                    if arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__caravanRole) == 1 then
                        local f2_local6 = arg0:GetToTargetAngle(TARGET_TEAM_MEMBER_3) - 180
                        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, f2_local6, 10, AI_SPA_DIR_TYPE_TargetF)
                        arg1:AddSubGoal(GOAL_COMMON_Stay, 3, 5, POINT_AI_FIXED_POS)
                    else
                        arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, -1, 10, true, -1, -1, -1, false, false, false)
                    end
                else
                    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_TEAM_MEMBER_3, arg0:GetRandam_Float(15, 35), TARGET_SELF, true, -1)
            end
        elseif f2_local2 == PLAN_PLATOON_COMMAND__STOP and arg0:HasSpecialEffectId(TARGET_SELF, 5551) then
            if f2_local3 < 5 then
                arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF)
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), TARGET_TEAM_FORMATION, AI_DIR_TYPE_CENTER, 5, TARGET_SELF, true)
            end
        else
            NonBattleAct_Common(arg0, arg1)
        end
    elseif arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == true then
        local f2_local1 = arg0:GetPlatoonCommand()
        local f2_local2 = f2_local1:GetCommandNo()
        if f2_local2 == PLAN_PLATOON_COMMAND__WAIT or f2_local2 == PLAN_PLATOON_COMMAND__PATROLEND then
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF)
        else
            NonBattleAct_Common(arg0, arg1)
        end
    else
        NonBattleAct_Common(arg0, arg1)
    end
    
end

function NonBattleAct_Common(arg0, arg1)
    local f3_local0 = arg0:GetMovePointNumber()
    local f3_local1 = true
    if _IsWalk_ForNonBattleAct(arg0, arg1) == 0 then
        f3_local1 = false
    end
    if f3_local0 >= 0 then
        if arg0:GetFlyRouteState() ~= AI_FLY_ROUTE_STATE_NOT_USE_FLY_ROUTE then
            local f3_local2 = arg0:GetDist(POINT_MOVE_POINT)
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            if arg0:GetFlyRouteState() == AI_FLY_ROUTE_STATE_ON_GROUND then
                local f3_local3 = 2
                local f3_local4 = 10
                local f3_local5 = true
                local f3_local6 = 3020
                local f3_local7 = 18
                local f3_local8 = -1
                local f3_local9 = false
                local f3_local10 = true
                arg1:AddSubGoal(GOAL_COMMON_WalkAround_Anywhere, -1, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7, f3_local8, f3_local9, f3_local10)
            elseif arg0:GetFlyRouteState() == AI_FLY_ROUTE_STATE_ON_GROUND_TAKEOFF_REQUESTED then
                if f3_local2 < 2 then
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 5, POINT_FlyRoute_CruiseBoundary, 0)
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20008, POINT_FlyRoute_CruiseBoundary, 0, 0, 0, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, false)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmoothFly, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, false, 0, 45)
            end
        elseif arg0:IsSearchTarget(TARGET_ENE_0) and arg0:GetStringIndexedNumber("NeglectTarget") == 0 then
            local f3_local2 = arg1:GetParam(6)
            arg1:AddSubGoal(GOAL_COMMON_BackToHome, arg1:GetLife(), 0, f3_local2, 0, 0)
        elseif arg0:GetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct") ~= 1 and COMMON_PatrolBehavior(arg0, arg1) then
            arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct", 1)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5003) and arg0:IsNpcPlayer() then
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetLife(), POINT_MOVE_POINT, 0, TARGET_SELF, false, NPC_ATK_DashHold)
        elseif not not arg0:HasSpecialEffectId(TARGET_SELF, 5001) or arg0:GetMovePointActionId(f3_local0) ~= -1 and arg0:IsPlatoonLeader() == false then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f3_local1)
        else
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhereSmooth, arg1:GetLife(), POINT_MOVE_POINT, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, f3_local1)
        end
    elseif arg0:GetMovePointType() == 6 then
        local f3_local2 = arg1:GetParam(6)
        if arg0:GetMovePointEffectRange() >= 12 then
            arg1:AddSubGoal(GOAL_COMMON_BackToHome, arg1:GetLife(), 0, f3_local2, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_WalkAround, -1, 0.5, f3_local1)
        end
    else
        local f3_local2 = arg0:GetMovePointEffectRange()
        local f3_local3 = arg1:GetParam(3)
        local f3_local4 = arg1:GetParam(4)
        if f3_local4 == 0 then
            f3_local4 = 2
        end
        if arg0:GetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct") ~= 1 and COMMON_PatrolBehavior(arg0, arg1) then
            arg0:SetStringIndexedNumber("COMMON_PatrolBehavior_DoneAct", 1)
        elseif f3_local4 < f3_local2 and arg0:IsGotHome() == false then
            local f3_local5 = arg1:GetParam(6)
            arg1:AddSubGoal(GOAL_COMMON_BackToHome, arg1:GetLife(), 0, f3_local5, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 11710) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3020, TARGET_NONE)
        elseif arg1:IsExistParam(5) and arg1:GetParam(5) ~= 0 then
            local f3_local5 = arg1:GetParam(5)
            if f3_local5 > 0 then
                arg1:AddSubGoal(f3_local5, arg1:GetLife())
            else
                arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, f3_local3)
            end
        elseif arg0:IsUpdateFirstAnimation() == true then
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_INITIAL_STANDBY) == false then
                if not not arg0:IsBattleState() or not not arg0:IsSearchHighState() or not not arg0:IsSearchLowState() or arg0:IsCautionState() then
                    arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, f3_local3)
                elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_RETURN_INITIAL_STANDBY) then
                    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_INIT_POSE, 0, -1, GUARD_GOAL_DESIRE_RET_Continue, true)
                    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, arg0:GetInitStayId() + 1050, TARGET_SELF, 0, 0, 0, 0, 0)
                else
                    local f3_local5 = 9
                    for f3_local6 = 0, f3_local5, 1 do
                        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_RETURN_INITIAL_STANDBY_WITHANIM + f3_local6) then
                            arg1:AddSubGoal(GOAL_COMMON_Turn, 2, POINT_INIT_POSE, 0, -1, GUARD_GOAL_DESIRE_RET_Continue, true)
                            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, PLAN_ANIMEID_RETURN_INITIAL_STANBY + f3_local6, TARGET_SELF, 0, 0, 0, 0, 0)
                        elseif f3_local6 == f3_local5 then
                            arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, f3_local3)
                        end
                    end
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_Stay, arg1:GetLife(), 0, TARGET_SELF)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_Stay, 0.1, 0, TARGET_SELF)
        end
    end
    
end

function NonBattleAct_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function NonBattleAct_Terminate(arg0, arg1)
    
end

function NonBattleAct_Interupt(arg0, arg1)
    local f6_local0 = false
    if not f6_local0 then
        f6_local0 = arg0:IsInterupt(INTERUPT_Damaged_Stranger)
    end
    if not f6_local0 then
        f6_local0 = arg0:IsInterupt(INTERUPT_Damaged)
    end
    if f6_local0 then
        arg1:SetTimer(1, 99999)
        return true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") == 0 then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF)
            return true
        end
        if arg0:GetStringIndexedNumber("IsEnableFadeWarp_OnFailedPath") == 1 then
            arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 1)
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_FadeWarpToInitPos, 10, 2, 4)
            return true
        end
        arg0:SetStringIndexedNumber("NonBattleAct_FailedPathMove", 1)
        local f6_local1 = arg0:GetActTypeOnNonBattleFailedPathEnd()
        if f6_local1 == AI_FAILED_PATH_NONBTL_ACT_TYPE__WALK_AROUND then
            arg0:SetNonBattleWalkAroundMode(true)
        end
        arg1:ClearSubGoal()
        arg0:Replaning()
        return true
    end
    if arg0:IsInterupt(INTERUPT_PlatoonAiOrder) then
        local f6_local1 = arg0:GetPlatoonCommand()
        local f6_local2 = f6_local1:GetCommandNo()
        if f6_local2 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR then
            arg1:ClearSubGoal()
            arg0:Replaning()
            return true
        elseif f6_local2 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET then
            COMMON_PatrolBehavior_FlagInitialize(arg0, true)
        elseif f6_local2 == PLAN_PLATOON_COMMAND__PATROLEND or f6_local2 == PLAN_PLATOON_COMMAND__PATROLEND_WITHWALKAROUND or f6_local2 == PLAN_PLATOON_COMMAND__STOPEND or f6_local2 == PLAN_PLATOON_COMMAND__STOPEND_WITHWALKAROUND then
            arg1:ClearSubGoal()
            arg0:Replaning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and (not not arg0:GetSpecialEffectActivateInterruptId(5025) or arg0:GetSpecialEffectDeActivateInterruptId(5025)) then
        arg1:ClearSubGoal()
        return true
    end
    return false
    
end


