RegisterTableGoal(GOAL_FeralDog_416000_Battle, "GOAL_FeralDog_416000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FeralDog_416000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE)
    local f2_local1 = true
    if f2_local0 == f2_local1 then
        return 
    end
    f2_local0 = {}
    f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 30)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local5 = arg1:GetHpRate(TARGET_SELF)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetDist(TARGET_FRI_0)
    local f2_local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12400) == true then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[4] = 60
                    f2_local0[20] = 15
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 15
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[4] = 60
                    f2_local0[20] = 15
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 15
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[4] = 70
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 10
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 90
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 80
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 80
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12400) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[4] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
            end
        end
    elseif f2_local8 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if arg1:HasSpecialEffectId(TARGET_SELF, 12400) == true then
            if f2_local3 > 15 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 20
                    f2_local0[10] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 10 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 20
                    f2_local0[10] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 8 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 10
                    f2_local0[5] = 5
                    f2_local0[6] = 0
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 20
                    f2_local0[10] = 20
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 10
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                end
            elseif f2_local3 > 7.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 0
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 30
                    f2_local0[10] = 10
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 6.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 0
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 10
                    f2_local0[10] = 30
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 6 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 25
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 15
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 5.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 20
                    f2_local0[7] = 5
                    f2_local0[8] = 30
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 4 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 30
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 3.5 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 20
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif f2_local3 > 2 then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 25
                    f2_local0[2] = 5
                    f2_local0[3] = 15
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 80
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 0
                f2_local0[5] = 40
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 80
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12400) == false and f2_local3 < 100 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[4] = 100
            else
                f2_local0[20] = 100
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 0
            end
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 10
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 30
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 6.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 10
                f2_local0[10] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 25
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 5.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 4 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 30
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 3.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 2 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 80
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 5
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 0
            f2_local0[7] = 5
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 70
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 70
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 80
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12400) == true then
        if f2_local3 > 15 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 8 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 10
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 10
                f2_local0[24] = 0
                f2_local0[25] = 10
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            end
        elseif f2_local3 > 7.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 30
                f2_local0[10] = 10
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 6.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 10
                f2_local0[10] = 30
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 25
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 15
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 5.5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 20
                f2_local0[7] = 5
                f2_local0[8] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 4 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12409) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 0
                    f2_local0[3] = 5
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 30
                    f2_local0[8] = 20
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 30
                f2_local0[8] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 3.5 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12409) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 5
                    f2_local0[2] = 20
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 0
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 30
                    f2_local0[25] = 60
                else
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 90
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 5
                f2_local0[2] = 20
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 30
                f2_local0[25] = 60
            else
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 90
            end
        elseif f2_local3 > 2 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 12409) == true then
                if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                    f2_local0[1] = 25
                    f2_local0[2] = 5
                    f2_local0[3] = 15
                    f2_local0[4] = 20
                    f2_local0[5] = 5
                    f2_local0[6] = 5
                    f2_local0[7] = 5
                    f2_local0[8] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[11] = 100
                    f2_local0[20] = 0
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 10
                elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 70
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 10
                    f2_local0[25] = 10
                else
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[8] = 80
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[20] = 10
                    f2_local0[21] = 0
                    f2_local0[22] = 0
                    f2_local0[23] = 0
                    f2_local0[24] = 0
                    f2_local0[25] = 10
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 25
                f2_local0[2] = 5
                f2_local0[3] = 15
                f2_local0[4] = 20
                f2_local0[5] = 5
                f2_local0[6] = 5
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 80
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 12409) == true then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 5
                f2_local0[4] = 0
                f2_local0[5] = 40
                f2_local0[6] = 0
                f2_local0[7] = 5
                f2_local0[8] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[11] = 100
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 70
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 10
                f2_local0[25] = 10
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[8] = 80
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[20] = 10
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[23] = 0
                f2_local0[24] = 0
                f2_local0[25] = 10
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 20
            f2_local0[2] = 0
            f2_local0[3] = 5
            f2_local0[4] = 0
            f2_local0[5] = 40
            f2_local0[6] = 0
            f2_local0[7] = 5
            f2_local0[8] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 70
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 70
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 10
            f2_local0[25] = 10
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[8] = 80
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[20] = 10
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 10
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 12400) == false and f2_local3 < 100 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[4] = 100
        else
            f2_local0[20] = 100
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3012, 10, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3013, 10, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[11], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[23], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[24], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6000, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6001, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6002, 5, f2_local0[25], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 6003, 5, f2_local0[25], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act11)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, FeralDog_416000_Act25)
    local f2_local9 = REGIST_FUNC(arg1, arg2, FeralDog_416000_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

function FeralDog_416000_Act01(arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 20
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local f3_local8 = 3000
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act02(arg0, arg1, arg2)
    local f4_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 20
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    local f4_local8 = 3002
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act03(arg0, arg1, arg2)
    local f5_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 20
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local10 = 0
    local f5_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act04(arg0, arg1, arg2)
    local f6_local0 = 30 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 20
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = 3005
    local f6_local8 = 3006
    local f6_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local10 = 0
    local f6_local11 = 0
    local f6_local12 = arg0:GetRandam_Int(1, 100)
    if f6_local12 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local7, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local8, TARGET_ENE_0, f6_local9, f6_local10, f6_local11, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act05(arg0, arg1, arg2)
    local f7_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 20
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f7_local8 = 3007
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act06(arg0, arg1, arg2)
    local f8_local0 = 6.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 20
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = 3008
    local f8_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local10 = 0
    local f8_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f8_local8, TARGET_ENE_0, f8_local9, f8_local10, f8_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act07(arg0, arg1, arg2)
    local f9_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 20
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local8 = 3009
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act08(arg0, arg1, arg2)
    local f10_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = f10_local0 + 0
    local f10_local2 = f10_local0 + 20
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local8 = 3010
    local f10_local9 = 3011
    local f10_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f10_local11 = 0
    local f10_local12 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local9, TARGET_ENE_0, f10_local10, f10_local11, f10_local12, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f10_local8, TARGET_ENE_0, f10_local10, f10_local11, f10_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act09(arg0, arg1, arg2)
    local f11_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 20
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local8 = 3012
    local f11_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act10(arg0, arg1, arg2)
    local f12_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 20
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local8 = 3013
    local f12_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act11(arg0, arg1, arg2)
    local f13_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = f13_local0 + 0
    local f13_local2 = f13_local0 + 20
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    local f13_local8 = 3015
    local f13_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f13_local10 = 0
    local f13_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f13_local8, TARGET_ENE_0, f13_local9, f13_local10, f13_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act21(arg0, arg1, arg2)
    local f15_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    if arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, f15_local0, 0) >= 2 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, 1, -1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act24(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, 1, -1, -1, TARGET_ENE_0, 0, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_Act25(arg0, arg1, arg2)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, -1, TARGET_ENE_0, 0, 0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, -1, 1, TARGET_ENE_0, 0, 0, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function FeralDog_416000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_FeralDog_416000_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f23_local0 = arg1:GetDist(TARGET_ENE_0)
    local f23_local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local f23_local2 = 0
    local f23_local3 = 0
    local f23_local4 = arg1:GetRandam_Int(1, 100)
    local f23_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, f23_local2, f23_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4) then
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 999, f23_local2, f23_local3, 0, 0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 3.5) then
        if f23_local4 <= 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_StepSafety, 2, -1, -1, 1, 1, TARGET_ENE_0, 0, 0, true)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if f23_local4 <= 70 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
                return true
            else
                return true
            end
        elseif f23_local4 <= 70 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_ENE_0, false, -1)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_ENE_0, 30) == true and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 2) then
            if f23_local4 <= 40 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3007, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 180, 3.5) then
            if f23_local4 <= 40 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3000, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    return false
    
end

RegisterTableGoal(GOAL_FeralDog_416000_AfterAttackAct, "GOAL_FeralDog_416000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_FeralDog_416000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


