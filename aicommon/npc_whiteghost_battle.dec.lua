RegisterTableGoal(GOAL_NPC_WhiteGhost_Battle, "GOAL_NPC_WhiteGhost_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_NPC_WhiteGhost_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetRandam_Int(1, 100)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:IsSearchTarget(TARGET_ENE_0)
    local f2_local6 = arg1:GetEventRequest()
    local f2_local7 = arg1:GetEventRequest(3)
    local f2_local8 = arg1:GetDist(TARGET_ENE_0)
    local f2_local9 = arg1:GetDist(TARGET_LOCALPLAYER)
    local f2_local10 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsTargetWeakSoulCoin(TARGET_ENE_0) then
        f2_local0[4] = 100
    elseif f2_local6 == 10 then
        if f2_local9 <= 5 then
            f2_local0[2] = 100
        else
            f2_local0[3] = 100
        end
    elseif f2_local9 >= 70 then
        if f2_local5 == false then
            f2_local0[1] = 100
        elseif f2_local8 >= 25 then
            f2_local0[1] = 100
        else
            f2_local0[1] = 100
        end
    elseif f2_local9 >= 5 then
        if f2_local5 == false then
            f2_local0[1] = 100
        elseif f2_local8 >= 30 then
            f2_local0[1] = 100
        else
            f2_local0[4] = 100
        end
    elseif f2_local9 >= 2 then
        if f2_local5 == false then
            f2_local0[5] = 100
        elseif f2_local8 >= 45 then
            f2_local0[5] = 100
        else
            f2_local0[4] = 100
        end
    elseif f2_local5 == false then
        f2_local0[2] = 100
    elseif f2_local8 >= 15 then
        f2_local0[2] = 100
    else
        f2_local0[4] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, GOAL_NPC_WhiteGhost_Battle_Act10)
    local f2_local11 = REGIST_FUNC(arg1, arg2, WhiteGhost_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local11, f2_local2)
    
end

function GOAL_NPC_WhiteGhost_Battle_Act01(arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_LOCALPLAYER)
    if f3_local0 <= 4 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 2, TARGET_SELF, true, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_LOCALPLAYER, -1, 0, 0)
    else
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_LOCALPLAYER, 2, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_LOCALPLAYER, -1, 0, 0)
    end
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act02(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_LOCALPLAYER, 999, TARGET_SELF, true, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act03(arg0, arg1, arg2)
    local f5_local0 = arg0:GetStringIndexedNumber("NPC_PointFrontWall")
    local f5_local1 = POINT_EVENT
    arg0:SetEventMoveTarget(f5_local0)
    if f5_local1 <= 0.3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, POINT_EVENT, 0.3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    end
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act04(arg0, arg1, arg2)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act05(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act06(arg0, arg1, arg2)
    local f8_local0 = arg0:GetStringIndexedNumber("NPC_PointFrontWall")
    local f8_local1 = POINT_EVENT
    arg0:SetEventMoveTarget(f8_local0)
    if f8_local1 <= 0.3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.3, 141, TARGET_SELF, -1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, 0.3, TARGET_SELF, false, -1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.1, 141, TARGET_SELF, -1, 0, 0)
    end
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act07(arg0, arg1, arg2)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act08(arg0, arg1, arg2)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act09(arg0, arg1, arg2)
    return 0
    
end

function GOAL_NPC_WhiteGhost_Battle_Act10(arg0, arg1, arg2)
    return 0
    
end

function WhiteGhost_ActAfter_AdjustSpace(arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


