function COMMON_Initialize(arg0)
    local f1_local0 = true
    if not not arg0:IsBattleState() or not not arg0:IsCautionState() or not not arg0:IsSearchHighState() or not not arg0:IsSearchLowState() or arg0:IsMemoryState() then
        f1_local0 = false
    end
    COMMON_SoundBehavior_FlagInitialize(arg0)
    COMMON_PatrolBehavior_FlagInitialize(arg0)
    if arg0:IsChangeState() and f1_local0 == true then
        arg0:SetStringIndexedNumber("COMMON_WAA__isPointCreated", 0)
    end
    arg0:SetStringIndexedNumber("NeglectTarget", 0)
    arg0:SetStringIndexedNumber("IsEnableFadeWarp_OnFailedPath", 0)
    if arg0:GetTimer(15) <= 0 then
        arg0:SetNumber(15, 0)
    end
    if f1_local0 == true then
        arg0:SetStringIndexedNumber("DisableFearOfFire", 0)
    end
    if arg0:GetStringIndexedNumber("IsIgnore_Sideway_onFailedPath") == 1 then
        if arg0:IsBattleState() then
            if arg0:GetDist(TARGET_ENE_0) >= 8 then
                arg0:SetStringIndexedNumber("IsIgnore_Sideway_onFailedPath", 0)
            end
        else
            arg0:SetStringIndexedNumber("IsIgnore_Sideway_onFailedPath", 0)
        end
    end
    if arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") >= 1 then
        arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") - 1)
    else
        arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 0)
    end
    if not not arg0:IsOmissionLevel30() or f1_local0 == false then
        arg0:ClearMoveToSomewhereSmoothMemory()
    end
    return false
    
end

function COMMON_EasySetup_Initial(arg0)
    if arg0:IsLadderAct(TARGET_SELF) then
        arg0:AddTopGoal(GOAL_COMMON_LadderMove, -1, 3000, TARGET_SELF, arg0:GetLadderDirMove(TARGET_SELF))
        return true
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5019) then
        arg0:SetAIFixedMoveTargetSpecifyAngle(TARGET_SELF, 180, 3, AI_SPA_DIR_TYPE_TargetF)
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(0.5, 4), POINT_AI_FIXED_POS, 0, TARGET_SELF, true, -1)
        return true
    end
    if arg0:IsAiJumping() then
        arg0:AddTopGoal(GOAL_COMMON_JumpEndWait, 10)
        return true
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_COLLECTSLEEPING) then
        arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_SELF, 0, 0, 0)
        return true
    end
    if arg0:IsRiding(TARGET_SELF) == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_SLEEPING) == false then
            if arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) and arg0:HasSpecialEffectId(TARGET_SELF, 5851) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5852) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5853) == false then
                arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, true)
                return true
            end
        elseif arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, true)
            return true
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_FACILITY_RIDE) == true and arg0:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
        return true
    end
    if arg0:IsRiding(TARGET_SELF) == false and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_SLEEPING) == true then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_NIGHT) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MIDNIGHT)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_MORNING) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MORNING) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_DAYTIME)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_DAYTIME) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MORNING) or not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_DAYTIME) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_EVENING)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        else
            local f2_local0 = PLAN_ANIMEID_SLEEP_END
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f2_local0, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        end
    end
    if arg0:IsRiding(TARGET_SELF) == false then
        local f2_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__surpriseAnimId)
        if f2_local0 > 0 and arg0:IsChangeState() == true and arg0:GetPrevTargetState() == AI_TARGET_STATE__NONE and arg0:GetCurrTargetState() == AI_TARGET_STATE__BATTLE then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, f2_local0, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        end
    end
    if arg0:IsRiding(TARGET_SELF) == false then
        local f2_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__enableWeaponOnOff)
        local f2_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffSpecialEffectId)
        local f2_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOnSpecialEffectId)
        local f2_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOffAnimId)
        local f2_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__weaponOnAnimId)
        if f2_local0 > 0 then
            if arg0:HasSpecialEffectId(TARGET_SELF, f2_local2) == true then
                if arg0:IsBattleState() == false and arg0:IsCautionState() == false and arg0:IsSearchHighState() == false and arg0:IsSearchLowState() == false and arg0:IsMemoryState() == false then
                    arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f2_local3, TARGET_SELF, 9999, 0, 0, 0, 0)
                    return true
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, f2_local1) == true and (arg0:IsBattleState() == true or arg0:IsCautionState() == true or arg0:IsSearchHighState() == true or arg0:IsSearchLowState() == true or arg0:IsMemoryState() == true) then
                arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f2_local4, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            end
        end
    end
    if arg0:IsRiding(TARGET_SELF) == false and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_ANIME_SLEEPING) == false then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_NIGHT) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MIDNIGHT)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_MORNING) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MORNING) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_DAYTIME)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_DAYTIME) and (not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_MORNING) or not not IsTargetTimeZone(arg0, PLAN_TIME_TYPE_DAYTIME) or IsTargetTimeZone(arg0, PLAN_TIME_TYPE_EVENING)) and (arg0:GetCurrTargetState() == AI_TARGET_STATE__NONE or arg0:GetCurrTargetState() == AI_TARGET_STATE__AWARE) and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_NATURAL_SLEEP_GUARD) == false then
            arg0:AddTopGoal(GOAL_COMMON_Fall_Asleep, 10, false)
            return true
        end
    end
    if arg0:IsRiding(TARGET_SELF) == true and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_FACILITY_RIDE) and arg0:GetTimer(12) <= 0 then
        if arg0:IsBattleState() == true then
            local f2_local0 = arg0:GetDist(TARGET_ENE_0)
            if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 999) then
                arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
                return true
            end
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_FLAMETHROWER_RIDE) then
                if f2_local0 <= 1.5 and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, 180, 99) == false then
                    arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
                    return true
                end
            elseif arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_L_BARISTA_RIDE) then
                if f2_local0 <= 3 then
                    arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
                    return true
                end
            elseif f2_local0 <= 3 and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 20, 180, 99) == false then
                arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
                return true
            end
        elseif (arg0:IsCautionState() == true or arg0:IsSearchHighState() == true or arg0:IsSearchLowState() == true) and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 6) then
            arg0:AddTopGoal(GOAL_COMMON_Dismount, 10)
            return true
        end
    end
    return false
    
end

function COMMON_EasySetup3(arg0)
    COMMON_EzSetup(arg0)
    
end

function COMMON_EzSetup(arg0)
    local f4_local0 = arg0:GetLatestSoundBehaviorID()
    if arg0:GetLatestSoundTargetRank() == AI_SOUND_RANK__BEHAVIOR and COMMON_SoundBehavior(arg0, f4_local0) ~= false then
        return true
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        _COMMON_SetBuddyBattleActLogic(arg0)
    else
        _COMMON_SetBattleActLogic(arg0)
    end
    
end

function _COMMON_SetBattleActLogic(arg0)
    local f5_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
    local f5_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
    local f5_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
    local f5_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
    local f5_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival)
    local f5_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backToHomeStuckAct)
    local f5_local6 = 1
    local f5_local7 = arg0:IsSearchTarget(TARGET_ENE_0)
    local f5_local8 = arg0:GetMovePointEffectRange()
    local f5_local9 = TARGET_ENE_0
    local f5_local10 = arg0:GetDist(TARGET_ENE_0)
    if not not arg0:IsSearchHighState() or arg0:IsSearchLowState() then
        f5_local9 = TARGET_SEARCH
        f5_local10 = arg0:GetDist(TARGET_SEARCH)
    end
    if f5_local7 == true and arg0:HasSpecialEffectId(TARGET_ENE_0, 13945) == true then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_HOSTPLAYER, 10, TARGET_SELF, false, -1)
        return true
    end
    if arg0:GetFlyRouteState() ~= AI_FLY_ROUTE_STATE_NOT_USE_FLY_ROUTE then
        if arg0:IsBattleState() and arg0:GetFlyRouteState() == AI_FLY_ROUTE_STATE_ON_GROUND then
            _COMMON_AddBattleGoal(arg0)
        else
            _COMMON_AddNonBattleGoal(arg0, 30, 0, false)
        end
    elseif arg0:TeamHelp_IsValidReply() then
        arg0:AddTopGoal(GOAL_COMMON_TeamReplyHelp, f5_local4)
        return true
    elseif arg0:IsForceBattleGoal() then
        arg0:ClearForceBattleGoal()
        arg0:ReqPlatoonState(PLATOON_STATE_Battle)
        _COMMON_AddBattleGoal(arg0)
    elseif f5_local7 == true or not not arg0:IsSearchLowState() or arg0:IsSearchHighState() then
        if f5_local0 < f5_local8 then
            if f5_local5 == f5_local6 then
                local f5_local11 = arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhereSmooth, 1.5, POINT_INITIAL, AI_DIR_TYPE_CENTER, 0, TARGET_SELF, true)
                f5_local11:SetLifeEndSuccess(true)
                arg0:AddTopGoal(GOAL_COMMON_FadeWarpToInitPos, 10, 2, 4)
                arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 1)
                return true
            else
                local f5_local11 = 2
                if f5_local10 < f5_local11 then
                    _COMMON_AddBattleGoal(arg0)
                    return true
                else
                    _COMMON_AddNonBattleGoal(arg0, f5_local3, 2, false)
                    return true
                end
            end
        elseif f5_local1 < f5_local8 then
            if f5_local10 < f5_local2 then
                arg0:ReqPlatoonState(PLATOON_STATE_Battle)
                _COMMON_AddBattleGoal(arg0)
                return true
            else
                local f5_local11 = arg0:GetActTypeOnFailedPathEnd()
                local f5_local12 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__failedPath_AttackId)
                local f5_local13 = arg0:GetMovePointNumber()
                local f5_local14 = 0
                local f5_local15 = false
                if arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false then
                    local f5_local16 = arg0:GetPlatoonCommand()
                    local f5_local17 = f5_local16:GetCommandNo()
                    if f5_local17 == PLAN_PLATOON_COMMAND__MOVE or f5_local17 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR or f5_local17 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET or f5_local17 == PLAN_PLATOON_COMMAND__DEF or f5_local17 == PLAN_PLATOON_COMMAND__SCOUT_MOVE then
                        f5_local15 = true
                    end
                end
                if f5_local15 == true then
                    f5_local14 = arg0:GetDistAtoB(f5_local9, TARGET_TEAM_FORMATION)
                elseif f5_local13 >= 0 then
                    f5_local14 = arg0:GetDistAtoB(f5_local9, POINT_MOVE_POINT)
                else
                    f5_local14 = arg0:GetDistAtoB(f5_local9, POINT_INITIAL)
                end
                if arg0:GetMovePointEffectRange() < f5_local14 then
                    _COMMON_AddReturnLimitGoal(arg0)
                    return true
                else
                    _COMMON_AddBattleGoal(arg0)
                    return true
                end
            end
        else
            _COMMON_AddBattleGoal(arg0)
            return true
        end
    else
        if f5_local5 == f5_local6 then
            arg0:SetStringIndexedNumber("IsEnableFadeWarp_OnFailedPath", 1)
        end
        _COMMON_AddNonBattleGoal(arg0, 30, -1, true)
        return true
    end
    return false
    
end

function _COMMON_SetBuddyBattleActLogic(arg0)
    local f6_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
    local f6_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeDist)
    local f6_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
    local f6_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__nonBattleActLife)
    local f6_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_ForgetTimeByArrival)
    local f6_local5 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__IsGuard_Act)
    local f6_local6 = arg0:IsSearchTarget(TARGET_ENE_0)
    local f6_local7 = arg0:GetMovePointEffectRange()
    local f6_local8 = arg0:GetDist(TARGET_ENE_0)
    local f6_local9 = arg0:GetDist(TARGET_HOSTPLAYER)
    local f6_local10 = 23
    local f6_local11 = false
    local f6_local12 = arg0:GetBuddyFollowType()
    local f6_local13 = false
    local f6_local14 = -1
    if f6_local5 > 0 then
        f6_local14 = 9910
    end
    if f6_local6 == true or not not arg0:IsSearchHighState() or arg0:IsSearchLowState() then
        f6_local11 = true
    end
    if f6_local11 == true and (arg0:HasSpecialEffectId(TARGET_ENE_0, 297800) == true or arg0:HasSpecialEffectId(TARGET_ENE_0, 297810) == true) then
        f6_local11 = false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg0:GetBuddyActiveRange() >= 0 then
        f6_local1 = arg0:GetBuddyActiveRange() + 10
        f6_local0 = arg0:GetBuddyActiveRange() + 30
    end
    if f6_local12 == PLAN_BUDDYFOLLOWTYPE_FOLLOW and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE) == false and arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_AGGRESSIVE_DEMIHUMAN) == false then
        f6_local13 = true
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_NO_FOLLOW) then
        if f6_local11 == true then
            _COMMON_AddBattleGoal(arg0)
        else
            _COMMON_AddNonBattleGoal(arg0, 30, -1, true)
            return true
        end
    elseif f6_local0 < f6_local7 then
        arg0:AddTopGoal(GOAL_COMMON_BackToHome, 2, 0, false, 0, 0, TARGET_SELF)
        return true
    elseif f6_local1 < f6_local7 then
        local f6_local15 = arg0:GetDistAtoB(TARGET_HOSTPLAYER, POINT_INITIAL)
        if f6_local10 <= f6_local9 and f6_local15 < arg0:GetMovePointEffectRange() and f6_local13 == true then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, f6_local10 - 3, TARGET_SELF, false, -1)
            return true
        elseif f6_local11 == true then
            if f6_local8 < f6_local2 then
                _COMMON_AddBattleGoal(arg0)
                return true
            else
                local f6_local16 = arg0:GetDistAtoB(TARGET_ENE_0, POINT_INITIAL)
                if f6_local16 < arg0:GetMovePointEffectRange() then
                    _COMMON_AddBattleGoal(arg0)
                    return true
                else
                    _COMMON_AddReturnLimitGoal(arg0)
                    return true
                end
            end
        elseif f6_local15 < arg0:GetMovePointEffectRange() then
            _COMMON_AddNonBattleGoal(arg0, 30, -1, true)
            return true
        else
            arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_HOSTPLAYER)
            return true
        end
    elseif f6_local11 == true then
        if f6_local13 == false then
            _COMMON_AddBattleGoal(arg0)
            return true
        elseif f6_local10 <= f6_local9 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_HOSTPLAYER, f6_local10 - 3, TARGET_SELF, false, -1)
            return true
        else
            local f6_local15 = true
            local f6_local16 = 5
            if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_INTERCEPT_LONGRANGE) == true then

            elseif f6_local10 + f6_local16 < arg0:GetDistAtoB(TARGET_HOSTPLAYER, TARGET_ENE_0) then
                f6_local15 = false
            end
            if f6_local15 == true then
                _COMMON_AddBattleGoal(arg0)
                return true
            else
                local f6_local17 = 3
                local f6_local18 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, f6_local17)
                local f6_local19 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, f6_local17)
                local f6_local20 = 0
                if f6_local18 == false and f6_local19 == false then
                    arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Float(2, 4), TARGET_HOSTPLAYER, 2, TARGET_ENE_0, true, f6_local14)
                else
                    if f6_local18 == true and f6_local19 == true then
                        f6_local20 = arg0:GetRandam_Int(0, 1)
                    elseif f6_local18 == true then
                        f6_local20 = 1
                    else
                        f6_local20 = 0
                    end
                    arg0:AddTopGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 3), TARGET_ENE_0, f6_local20, arg0:GetRandam_Int(30, 45), true, true, f6_local14, GUARD_GOAL_DESIRE_RET_Failed, true)
                    if f6_local5 > 0 then
                        arg0:AddTopGoal(GOAL_COMMON_Guard, arg0:GetRandam_Float(0.7, 1.5), f6_local14, TARGET_ENE_0, GUARD_GOAL_DESIRE_RET_Failed, false)
                    else
                        arg0:AddTopGoal(GOAL_COMMON_Stay, arg0:GetRandam_Float(0.7, 1.5), f6_local16, TARGET_ENE_0)
                    end
                    return true
                end
            end
        end
    else
        _COMMON_AddNonBattleGoal(arg0, 30, -1, true)
        return true
    end
    return true
    
end

function _COMMON_AddReturnLimitGoal(arg0)
    local f7_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backToHomeStuckAct)
    local f7_local1 = 1
    if f7_local0 == f7_local1 then
        arg0:SetStringIndexedNumber("IsEnableFadeWarp_OnFailedPath", 1)
    end
    local f7_local2 = arg0:GetActTypeOnFailedPathEnd()
    local f7_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__rangedAttackId)
    local f7_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__IsGuard_Act)
    local f7_local5 = -1
    if f7_local4 > 0 then
        f7_local5 = 9910
    end
    local f7_local6 = arg0:HasSpecialEffectId(TARGET_SELF, 13799)
    if f7_local6 then
        f7_local6 = POINT_INITIAL
        local f7_local7 = arg0:GetMovePointNumber()
        local f7_local8 = false
        if arg0:IsValidPlatoon() == true and arg0:IsPlatoonLeader() == false then
            local f7_local9 = arg0:GetPlatoonCommand()
            local f7_local10 = f7_local9:GetCommandNo()
            if f7_local10 == PLAN_PLATOON_COMMAND__MOVE or f7_local10 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR or f7_local10 == PLAN_PLATOON_COMMAND__PATROL_BEHAVIOR_RESET or f7_local10 == PLAN_PLATOON_COMMAND__DEF or f7_local10 == PLAN_PLATOON_COMMAND__SCOUT_MOVE then
                f7_local8 = true
            end
        end
        if f7_local8 == true then
            f7_local6 = TARGET_TEAM_FORMATION
        elseif f7_local7 >= 0 then
            f7_local6 = POINT_MOVE_POINT
        end
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 45, f7_local6, 10, TARGET_SELF, false, -1, 0, 0)
        arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0)
        return true
    end
    if f7_local2 == 0 then
        arg0:AddTopGoal(GOAL_COMMON_BackToHome, 10, 0, false, 0, 0, TARGET_ENE_0)
    elseif f7_local2 == 1 then
        arg0:AddTopGoal(GOAL_COMMON_BackToHome, 10, 0, false, 0, 0, TARGET_ENE_0)
    elseif f7_local2 == 2 then
        arg0:AddTopGoal(GOAL_COMMON_SideWay_On_FailedPath, 30, 1, f7_local3, 10, 8, 8, f7_local5, true)
    elseif f7_local2 == 3 then
        arg0:AddTopGoal(GOAL_COMMON_SideWay_On_FailedPath, 30, 1, -1, 3, 8, 8, f7_local5, true)
    end
    return true
    
end

function _COMMON_AddBattleGoal(arg0)
    local f8_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__battleGoalID)
    local f8_local1 = arg0:GetPrevTargetState()
    local f8_local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 5015) then
        arg0:AddTopGoal(f8_local0, -1)
    elseif arg0:IsBattleState() then
        arg0:ReqPlatoonState(PLATOON_STATE_Battle)
        local f8_local3 = nil
        if arg0:HasSpecialEffectId(TARGET_SELF, 5060) == true and arg0:HasSpecialEffectId(TARGET_SELF, 5061) == false then
            arg0:Replaning()
        elseif arg0:IsValidPlatoon() == true then
            local f8_local4 = arg0:GetPlatoonCommand()
            local f8_local5 = f8_local4:GetCommandNo()
            local f8_local6 = arg0:GetDist(TARGET_TEAM_FORMATION)
            if f8_local5 == PLAN_PLATOON_COMMAND__ATK then
                f8_local3 = arg0:AddTopGoal(f8_local0, -1)
            elseif f8_local5 == PLAN_PLATOON_COMMAND__DEF then
                _COMMON_AddNonBattleGoal(arg0, -1, -1, true)
            elseif f8_local5 == PLAN_PLATOON_COMMAND__RUN then
                if arg0:GetDist(TARGET_ENE_0) <= 4 then
                    f8_local3 = arg0:AddTopGoal(f8_local0, -1)
                else
                    arg0:AddTopGoal(GOAL_COMMON_LeaveTargetToPathEnd, -1, TARGET_TEAM_LEADER, 80, TARGET_SELF, false, -1, GOAL_RESULT_Continue, false, 2)
                end
            elseif f8_local5 == PLAN_PLATOON_COMMAND__STOP then
                f8_local3 = arg0:AddTopGoal(f8_local0, -1)
            else
                f8_local3 = arg0:AddTopGoal(f8_local0, -1)
            end
        else
            f8_local3 = arg0:AddTopGoal(f8_local0, -1)
        end
        if f8_local3 then
            f8_local3:SetManagementGoal()
        end
    elseif arg0:IsCautionState() then
        arg0:ReqPlatoonState(PLATOON_STATE_Caution)
        f8_local2 = 1
        _COMMON_AddCautionAndFindGoal(arg0, f8_local2)
    elseif arg0:IsSearchHighState() then
        f8_local2 = 4
        _COMMON_AddCautionAndFindGoal(arg0, f8_local2)
    elseif arg0:IsSearchLowState() then
        f8_local2 = 3
        _COMMON_AddCautionAndFindGoal(arg0, f8_local2)
    elseif arg0:IsMemoryState() then
        f8_local2 = 0
        _COMMON_AddCautionAndFindGoal(arg0, f8_local2)
    else
        _COMMON_AddNonBattleGoal(arg0, -1, -1, true)
    end
    
end

function _COMMON_AddChangeStateActionGoal(arg0, arg1)
    local f9_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__changeStateAction_ToNormal)
    local f9_local1 = 0
    local f9_local2 = 1
    local f9_local3 = 2
    local f9_local4 = 0
    local f9_local5 = TARGET_NONE
    local f9_local6 = 1810
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = arg0:GetDist(TARGET_ENE_0)
    if arg1 == 0 then
        f9_local4 = f9_local0
        f9_local5 = POINT_INITIAL
    else
        f9_local4 = 0
        f9_local5 = TARGET_ENE_0
    end
    if f9_local4 == f9_local2 then
        if f9_local8 >= 10 or f9_local8 == -1 then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local6, f9_local5, DIST_NONE, 0, -1)
        else
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f9_local5)
        end
    elseif f9_local4 == f9_local3 then
        if f9_local8 >= 10 or f9_local8 == -1 then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 3, f9_local5)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local6, f9_local5, DIST_NONE, 0, -1)
        else
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f9_local5)
        end
    end
    
end

function _COMMON_AddCautionAndFindGoal(arg0, arg1)
    local f10_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCaution)
    local f10_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToCautionImportant)
    local f10_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToDisappear)
    local f10_local3 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToSearchLv1)
    local f10_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__goalAction_ToSearchLv2)
    local f10_local5 = 0
    local f10_local6 = 1
    local f10_local7 = 2
    local f10_local8 = 3
    local f10_local9 = 4
    local f10_local10 = 5
    local f10_local11 = 6
    local f10_local12 = 7
    local f10_local13 = 8
    local f10_local14 = 9
    local f10_local15 = 10
    local f10_local16 = 11
    local f10_local17 = 12
    local f10_local18 = 13
    local f10_local19 = 14
    local f10_local20 = 15
    local f10_local21 = 16
    local f10_local22 = 0
    local f10_local23 = 10
    local f10_local24 = arg0:GetLatestSoundTargetRank()
    local f10_local25 = 1.2
    local f10_local26 = 1.2
    local f10_local27 = 20
    local f10_local28 = 3500
    local f10_local29 = 3501
    local f10_local30 = 3502
    local f10_local31 = TARGET_ENE_0
    local f10_local32 = false
    if arg1 == 0 then
        f10_local22 = f10_local2
        f10_local32 = arg0:IsForgettingMemoryTarget()
    elseif arg1 == 1 and f10_local24 == AI_SOUND_RANK__IMPORTANT then
        f10_local22 = f10_local1
        f10_local32 = arg0:IsForgettingSoundTarget()
    elseif arg1 == 1 then
        f10_local22 = f10_local0
        f10_local32 = arg0:IsForgettingSoundTarget()
    elseif arg1 == 3 then
        f10_local22 = f10_local3
        f10_local32 = arg0:IsForgettingTopSearchTarget()
        f10_local31 = TARGET_SEARCH
    elseif arg1 == 4 then
        f10_local22 = f10_local4
        f10_local32 = arg0:IsForgettingTopSearchTarget()
        f10_local31 = TARGET_SEARCH
    end
    local f10_local33 = arg0:GetDist(f10_local31)
    if f10_local22 == f10_local6 then
        arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
    elseif f10_local22 == f10_local7 then
        if f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
        else
            arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local25, TARGET_SELF, true)
        end
    elseif f10_local22 == f10_local8 then
        if f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
        else
            arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local25, TARGET_SELF, false)
        end
    elseif f10_local22 == f10_local9 then
        arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
    elseif f10_local22 == f10_local10 then
        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget_Continuous, 10, f10_local31, 15, TARGET_SELF, false, -1, GUARD_GOAL_DESIRE_RET_Continue, false, 2)
    elseif f10_local22 == f10_local11 then
        arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local25, TARGET_SELF, false)
        arg0:AddTopGoal(GOAL_COMMON_WalkAround_On_FailedPath, 1000)
    elseif f10_local22 == f10_local12 then
        if f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
        else
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, f10_local23, f10_local31, f10_local25, f10_local31, true, 9910)
        end
    elseif f10_local22 == 99 then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3008, TARGET_ENE_0, DIST_NONE, 0, 90)
    elseif f10_local22 == 98 then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, DIST_NONE, 0, 90)
    elseif f10_local22 == f10_local13 then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, 3503, TARGET_SELF, 9999, 0, 90)
    elseif f10_local22 == f10_local14 then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, f10_local28, f10_local31, 9999, 0, 90)
        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), f10_local31, 0, 0, 0)
    elseif f10_local22 == f10_local15 then
        arg0:AddTopGoal(GOAL_COMMON_Turn, 3, f10_local31)
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, f10_local28, f10_local31, 9999, 0, 90)
        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), f10_local31, 0, 0, 0)
    elseif f10_local22 == f10_local16 then
        if f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, f10_local28, f10_local31, 9999, 0, 90)
            arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), f10_local31, 0, 0, 0)
        else
            arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local26, TARGET_SELF, true)
        end
    elseif f10_local22 == f10_local17 then
        if f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, f10_local28, f10_local31, 9999, 0, 90)
            arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), f10_local31, 0, 0, 0)
        else
            arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local26, TARGET_SELF, false)
        end
    elseif f10_local22 == f10_local18 then
        arg0:AddTopGoal(GOAL_COMMON_LeaveTarget, f10_local23, f10_local31, f10_local27, f10_local31, true, -1)
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, -1, f10_local28, f10_local31, 9999, 0, 90)
        arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Int(2, 5), f10_local31, 0, 0, 0)
    elseif f10_local22 == f10_local19 then
        arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local29, f10_local31, 9999, 0, 90)
    elseif f10_local22 == f10_local20 then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_DETECT_ANIM_COOLTIME) == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local30, f10_local31, 9999, 0, 90)
        else
            arg0:AddTopGoal(GOAL_COMMON_Turn, 3, f10_local31)
        end
    elseif f10_local22 == f10_local21 then
        if arg0:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_DETECT_ANIM_COOLTIME) == false then
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local30, f10_local31, 9999, 0, 90)
        elseif f10_local32 == true then
            arg0:AddTopGoal(GOAL_COMMON_Stay, 1, 0, f10_local31)
        else
            arg0:AddTopGoal(GOAL_COMMON_MoveToSomewhere, f10_local23, f10_local31, AI_DIR_TYPE_CENTER, f10_local25, TARGET_SELF, true)
        end
    else
        arg0:SetStringIndexedNumber("NeglectTarget", 1)
        _COMMON_AddNonBattleGoal(arg0, 5, -1, false)
    end
    
end

function _COMMON_AddNonBattleGoal(arg0, arg1, arg2, arg3)
    arg0:TeamHelp_ValidateCall()
    arg0:TeamHelp_ValidateReply()
    if arg0:IsChangeState() and not arg0:IsBattleState() and not arg0:IsCautionState() then
        local f11_local0 = 0
        f11_local0 = 0
        _COMMON_AddChangeStateActionGoal(arg0, f11_local0)
    end
    arg0:AddTopGoal(GOAL_COMMON_NonBattleAct, arg1, arg2, arg3, false, POINT_INIT_POSE, 0, 0)
    
end

function COMMON_Interrupt(arg0, arg1)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    end
    if arg0:IsInterupt(INTERUPT_FindUnfavorableFailedPoint) and arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") == 0 and (arg0:IsBattleState() == true or arg0:IsSearchHighState() == true or arg0:IsSearchLowState() == true or arg0:IsCautionState() == true) then
        local f12_local0 = arg0:GetActTypeOnFailedPathEnd()
        if arg0:GetStringIndexedNumber("IsIgnore_Sideway_onFailedPath") == 1 then
            f12_local0 = 0
        end
        if f12_local0 ~= 0 then
            if arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) then
                arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 2)
                arg1:ClearSubGoal()
                arg0:Replaning()
            elseif arg0:CalcSetPointWaitAndSee() then
                local f12_local1 = true
                if arg0:IsRiding(TARGET_SELF) == true then
                    f12_local1 = false
                end
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_MoveToWaitandSee, 30, 2, TARGET_SELF, f12_local1, 1, -1)
                _COMMON_Add_On_FailedPathGoal(arg0, arg1)
            else
                arg1:ClearSubGoal()
                _COMMON_Add_On_FailedPathGoal(arg0, arg1)
            end
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg0:GetStringIndexedNumber("RepCount_Disable_FailedPath") == 0 then
        if arg0:IsBattleState() == true and arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_CENTER, 0) == true then
            arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 2)
            arg1:ClearSubGoal()
            return true
        else
            local f12_local0 = arg0:GetActTypeOnFailedPathEnd()
            if arg0:GetStringIndexedNumber("IsEnableFadeWarp_OnFailedPath") == 1 then
                arg1:ClearSubGoal()
                arg0:SetStringIndexedNumber("RepCount_Disable_FailedPath", 1)
                arg1:AddSubGoal(GOAL_COMMON_FadeWarpToInitPos, 10, 2, 4)
                return true
            end
            if arg0:GetStringIndexedNumber("IsIgnore_Sideway_onFailedPath") == 1 then
                f12_local0 = 0
            end
            if f12_local0 ~= 0 then
                arg1:ClearSubGoal()
                _COMMON_Add_On_FailedPathGoal(arg0, arg1)
                return true
            end
        end
    end
    return false
    
end

function _COMMON_Add_On_FailedPathGoal(arg0, arg1)
    arg0:DecideWalkAroundPos()
    local f13_local0 = arg0:GetActTypeOnFailedPathEnd()
    local f13_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__rangedAttackId)
    local f13_local2 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__IsGuard_Act)
    local f13_local3 = -1
    if f13_local2 > 0 then
        f13_local3 = 9910
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13799) then
        arg1:AddSubGoal(GOAL_COMMON_Guard_On_FailedPath, 30, 1, 15)
        return true
    end
    if f13_local0 == 0 then

    elseif f13_local0 == 1 then
        arg1:AddSubGoal(GOAL_COMMON_BackToHome_On_FailedPath, 100, 1)
    elseif f13_local0 == 2 then
        arg1:AddSubGoal(GOAL_COMMON_SideWay_On_FailedPath, 30, 1, f13_local1, 10, 8, 8, f13_local3, false)
    elseif f13_local0 == 3 then
        arg1:AddSubGoal(GOAL_COMMON_SideWay_On_FailedPath, 30, 1, -1, 3, 8, 8, f13_local3, false)
    end
    
end


