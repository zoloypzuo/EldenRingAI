RegisterTableGoal(GOAL_AliveStone_443000_Battle, "AliveStone_443000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AliveStone_443000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14905)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14906)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 14907)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5401) == true then
        if f2_local3 >= 5 then
            if arg1:GetHpRate(TARGET_SELF) < 0.99 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[10] = 100
                    f2_local0[23] = 0
                else
                    f2_local0[10] = 100
                    f2_local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 0
                f2_local0[11] = 100
                f2_local0[23] = 0
            else
                f2_local0[10] = 0
                f2_local0[11] = 100
                f2_local0[23] = 0
            end
        elseif arg1:GetHpRate(TARGET_SELF) < 0.99 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[10] = 100
                f2_local0[23] = 0
            else
                f2_local0[10] = 100
                f2_local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[10] = 100
            f2_local0[23] = 0
        else
            f2_local0[10] = 100
            f2_local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5400) == true then
        if f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 50
                f2_local0[21] = 50
            else
                f2_local0[21] = 50
                f2_local0[22] = 50
            end
        elseif f2_local7 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 50
                f2_local0[21] = 50
            else
                f2_local0[21] = 50
                f2_local0[22] = 50
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14907) == true then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 50
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 40
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 80
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 60
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 20
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14906) == true then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 80
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 80
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 80
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 50
                    f2_local0[4] = 0
                    f2_local0[5] = 50
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 50
                f2_local0[4] = 0
                f2_local0[5] = 50
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 60
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14905) == true then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 80
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 80
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 80
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 60
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14907) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14906) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14905) == false then
            if f2_local3 >= 20 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 40
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 10
                    f2_local0[5] = 10
                    f2_local0[6] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 40
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 10
                    f2_local0[5] = 10
                    f2_local0[6] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 40
                    f2_local0[6] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 10
                    f2_local0[5] = 10
                    f2_local0[6] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif f2_local3 >= 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 40
                    f2_local0[4] = 40
                    f2_local0[5] = 10
                    f2_local0[6] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 10
                    f2_local0[5] = 10
                    f2_local0[6] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 60
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 40
                f2_local0[5] = 10
                f2_local0[6] = 40
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 10
                f2_local0[6] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 60
            end
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3010, 25, f2_local0[4], 0)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3015, 20, f2_local0[5], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[6], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act1)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act2)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act3)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act4)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act5)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act6)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, AliveStone_443000_Act23)
    local f2_local8 = REGIST_FUNC(arg1, arg2, AliveStone_443000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function AliveStone_443000_Act1(arg0, arg1, arg2)
    local f3_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 0
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 2
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3000
    local f3_local8 = 3002
    local f3_local9 = 3003
    local f3_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f3_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f3_local13 = 0
    local f3_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local7, TARGET_ENE_0, f3_local10, f3_local13, f3_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, f3_local8, TARGET_ENE_0, f3_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f3_local9, TARGET_ENE_0, f3_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act2(arg0, arg1, arg2)
    local f4_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 50
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 2
    local f4_local6 = 2
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3001
    local f4_local8 = 3003
    local f4_local9 = 3002
    local f4_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f4_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 7
    local f4_local13 = 0
    local f4_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 15, f4_local7, TARGET_ENE_0, f4_local10, f4_local13, f4_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 15, f4_local8, TARGET_ENE_0, f4_local11, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f4_local9, TARGET_ENE_0, f4_local12, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act3(arg0, arg1, arg2)
    local f5_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 50
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 2
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3005
    local f5_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f5_local7, TARGET_ENE_0, f5_local8, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act4(arg0, arg1, arg2)
    local f6_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 2
    local f6_local6 = 2
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3010
    local f6_local8 = 3011
    local f6_local9 = 3012
    local f6_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local11 = 0
    local f6_local12 = 0
    local f6_local13 = arg0:GetRandam_Int(1, 100)
    if f6_local13 <= 35 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, f6_local7, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f6_local9, TARGET_ENE_0, f6_local10, 0, 0, 0, 0)
    elseif f6_local13 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, f6_local7, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f6_local9, TARGET_ENE_0, f6_local10, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 30, f6_local7, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 15, f6_local9, TARGET_ENE_0, f6_local10, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act5(arg0, arg1, arg2)
    local f7_local0 = 18 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 50
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 2
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3015
    local f7_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, f7_local7, TARGET_ENE_0, f7_local8, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act6(arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 50
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 2
    local f8_local6 = 2
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3020
    local f8_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local9 = 0
    local f8_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local7, TARGET_ENE_0, f8_local8, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act10(arg0, arg1, arg2)
    local f9_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 50
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 2
    local f9_local6 = 2
    local f9_local7 = 3000
    local f9_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local9 = 0
    local f9_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local7, TARGET_ENE_0, f9_local8, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act11(arg0, arg1, arg2)
    local f10_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 50
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 2
    local f10_local6 = 2
    local f10_local7 = 3001
    local f10_local8 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local9 = 0
    local f10_local10 = 360
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f10_local7, TARGET_ENE_0, f10_local8, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(1, 1.5), TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function AliveStone_443000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_AliveStone_443000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetDist(TARGET_ENE_0)
    local f18_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f18_local2 = arg1:GetRandam_Int(1, 100)
    local f18_local3 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    return false
    
end

RegisterTableGoal(GOAL_AliveStone_443000_AfterAttackAct, "AliveStone_443000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_AliveStone_443000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


