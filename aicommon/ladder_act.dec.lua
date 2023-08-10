REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_LadderAct, true)
function _GetId(arg0, arg1)
    local f1_local0 = false
    if not not arg1:IsNpcPlayer() or arg1:IsLocalPlayer() then
        f1_local0 = true
    end
    local f1_local1 = arg0
    if f1_local0 == true then
        if arg0 == 7210 then
            f1_local1 = NPC_ATK_LadderUp
        elseif arg0 == 7220 then
            f1_local1 = NPC_ATK_LadderDown
        end
    end
    return f1_local1
    
end

local f0_local0 = -1
local f0_local1 = 0
local f0_local2 = 1
local f0_local3 = 2
local f0_local4 = 3
local f0_local5 = 4
local f0_local6 = 5
local f0_local7 = 6
local f0_local8 = 7
local f0_local9 = 8
local f0_local10 = 9
local f0_local11 = 23
local f0_local12 = 7210
local f0_local13 = 7220
local f0_local14 = 7230
function LadderAct_Activate(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(2)
    local f2_local3 = f2_local2
    local f2_local4 = 0
    local f2_local5 = arg0:CalcGetNearestLadderActDmyIdByLadder()
    if f2_local5 == 191 then
        f2_local4 = _GetId(7210, arg0)
    else
        f2_local4 = _GetId(7220, arg0)
    end
    local f2_local6 = arg0:GetLadderActState(TARGET_SELF)
    if f2_local6 == f0_local0 then
        if arg0:IsChrAroundLadderEdge(2, f2_local5) == false then
            local f2_local7 = arg0:CanStartLadderAttach()
            if f2_local7 then
                arg1:AddSubGoal(GOAL_COMMON_HoverAdjust, -1)
                arg1:AddSubGoal(GOAL_COMMON_LadderMove, -1, 3000, TARGET_SELF, arg0:GetLadderDirMove(TARGET_SELF))
            end
        else
            arg0:RequestLadderWait()
            if f2_local5 == 192 then

            elseif f2_local5 == 191 then

            else

            end
        end
    end
    
end

function LadderAct_Update(arg0, arg1)
    arg1:AddLifeParentSubGoal(0.3)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function LadderAct_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_LadderAct, true)
function LadderAct_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        return false
    end
    return false
    
end


