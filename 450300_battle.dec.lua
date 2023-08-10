RegisterTableGoal(GOAL_IceWyvern450300_Battle, "IceWyvern450300_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_IceWyvern450300_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:GetHpRate(TARGET_SELF) <= 0.7 then
        if f2_local3 > 50 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 30
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 40
                f2_local0[10] = 40
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 30 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 40
                f2_local0[10] = 40
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 30
                f2_local0[10] = 20
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 20
                    f2_local0[6] = 0
                    f2_local0[7] = 0
                    f2_local0[9] = 20
                    f2_local0[10] = 20
                    f2_local0[13] = 20
                    f2_local0[14] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[18] = 0
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 0
                    f2_local0[30] = 20
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 20
                    f2_local0[2] = 0
                    f2_local0[3] = 20
                    f2_local0[4] = 20
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 20
                    f2_local0[14] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[18] = 0
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 100
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 50
                    f2_local0[14] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[18] = 0
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 0
                    f2_local0[30] = 20
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 30
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 50
                    f2_local0[14] = 0
                    f2_local0[15] = 0
                    f2_local0[16] = 0
                    f2_local0[18] = 0
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 0
                    f2_local0[30] = 20
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            else
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[22] = 0
                f2_local0[30] = 30
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 0 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 10
                    f2_local0[2] = 0
                    f2_local0[3] = 10
                    f2_local0[4] = 10
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 10
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 20
                    f2_local0[14] = 0
                    f2_local0[15] = 20
                    f2_local0[16] = 20
                    f2_local0[18] = 0
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 100
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 30
                    f2_local0[14] = 0
                    f2_local0[15] = 30
                    f2_local0[16] = 0
                    f2_local0[18] = 20
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 10204) == false then
                    f2_local0[21] = 100
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 10204) == true then
                    f2_local0[1] = 0
                    f2_local0[2] = 0
                    f2_local0[3] = 0
                    f2_local0[4] = 0
                    f2_local0[5] = 0
                    f2_local0[6] = 0
                    f2_local0[7] = 20
                    f2_local0[9] = 0
                    f2_local0[10] = 0
                    f2_local0[13] = 30
                    f2_local0[14] = 0
                    f2_local0[15] = 30
                    f2_local0[16] = 0
                    f2_local0[18] = 20
                    f2_local0[19] = 0
                    f2_local0[20] = 0
                    f2_local0[22] = 0
                    f2_local0[30] = 0
                    f2_local0[31] = 0
                    f2_local0[32] = 0
                end
            else
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 30
                f2_local0[20] = 20
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > -5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 40
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 30
                f2_local0[18] = 10
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 30
                f2_local0[18] = 10
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 40
                f2_local0[20] = 40
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 20
            f2_local0[15] = 20
            f2_local0[16] = 20
            f2_local0[18] = 0
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 30
            f2_local0[15] = 10
            f2_local0[16] = 0
            f2_local0[18] = 10
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 30
            f2_local0[15] = 10
            f2_local0[16] = 0
            f2_local0[18] = 10
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[18] = 20
            f2_local0[19] = 40
            f2_local0[20] = 40
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10205) == true then
        if f2_local3 > 50 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 30
                f2_local0[10] = 50
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 40 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 40
                f2_local0[10] = 40
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 30 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 40
                f2_local0[10] = 40
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 20 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 30
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 30
                f2_local0[10] = 20
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 10 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 20
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 20
                f2_local0[10] = 20
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[30] = 100
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 20
                f2_local0[2] = 0
                f2_local0[3] = 20
                f2_local0[4] = 20
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 50
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 30
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 50
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 20
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 70
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 30
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > 0 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 10
                f2_local0[2] = 0
                f2_local0[3] = 10
                f2_local0[4] = 10
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 20
                f2_local0[14] = 0
                f2_local0[15] = 20
                f2_local0[16] = 20
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 30
                f2_local0[14] = 0
                f2_local0[15] = 30
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 20
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 30
                f2_local0[14] = 0
                f2_local0[15] = 30
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 30
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 30
                f2_local0[20] = 20
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif f2_local3 > -5 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 40
                f2_local0[18] = 0
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 100
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 30
                f2_local0[18] = 10
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 10
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 10
                f2_local0[14] = 30
                f2_local0[15] = 10
                f2_local0[16] = 30
                f2_local0[18] = 10
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            else
                f2_local0[1] = 0
                f2_local0[2] = 0
                f2_local0[3] = 0
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[6] = 0
                f2_local0[7] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[13] = 0
                f2_local0[14] = 0
                f2_local0[15] = 0
                f2_local0[16] = 0
                f2_local0[18] = 20
                f2_local0[19] = 40
                f2_local0[20] = 40
                f2_local0[21] = 0
                f2_local0[22] = 0
                f2_local0[30] = 0
                f2_local0[31] = 0
                f2_local0[32] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 20
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 20
            f2_local0[15] = 20
            f2_local0[16] = 20
            f2_local0[18] = 0
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 100
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 30
            f2_local0[15] = 10
            f2_local0[16] = 0
            f2_local0[18] = 10
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 30
            f2_local0[7] = 10
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 10
            f2_local0[14] = 30
            f2_local0[15] = 10
            f2_local0[16] = 0
            f2_local0[18] = 10
            f2_local0[19] = 0
            f2_local0[20] = 0
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 0
            f2_local0[7] = 0
            f2_local0[9] = 0
            f2_local0[10] = 0
            f2_local0[13] = 0
            f2_local0[14] = 0
            f2_local0[15] = 0
            f2_local0[16] = 0
            f2_local0[18] = 20
            f2_local0[19] = 40
            f2_local0[20] = 40
            f2_local0[21] = 0
            f2_local0[22] = 0
            f2_local0[30] = 0
            f2_local0[31] = 0
            f2_local0[32] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10205) == false then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            f2_local0[25] = 100
        else
            f2_local0[19] = 40
            f2_local0[20] = 40
            f2_local0[31] = 20
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10285) then
        f2_local0[11] = 0
        f2_local0[13] = 0
        f2_local0[18] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10286) then
        f2_local0[32] = 1000
    end
    local f2_local5 = arg1:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_F, 50)
    local f2_local6 = arg1:GetExistMeshOnLineDist(TARGET_SELF, AI_DIR_TYPE_F, 80)
    local f2_local7 = arg1:GetExistMeshOnLineDistSpecifyAngle(TARGET_SELF, 44, 100, AI_SPA_DIR_TYPE_TargetF)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3002, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3016, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[4], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[6], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3001, 30, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3016, 30, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[14], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3032, 30, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3033, 15, f2_local0[16], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3034, 40, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[19], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3018, 15, f2_local0[20], 1)
    f2_local0[21] = SetCoolTime(arg1, arg2, 20022, 30, f2_local0[21], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 20024, 15, f2_local0[22], 1)
    f2_local0[22] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[22], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act22)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act25)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act32)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, IceWyvern450300_Act36)
    local f2_local8 = REGIST_FUNC(arg1, arg2, IceWyvern450300_ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

function IceWyvern450300_Act01(arg0, arg1, arg2)
    local f3_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = f3_local0 + 0
    local f3_local2 = f3_local0 + 10
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    local f3_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local f3_local8 = 3002
    local f3_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act02(arg0, arg1, arg2)
    local f4_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = f4_local0 + 0
    local f4_local2 = f4_local0 + 10
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    local f4_local7 = arg0:GetRandam_Int(1, 100)
    local f4_local8 = 3004
    local f4_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local10 = 0
    local f4_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act03(arg0, arg1, arg2)
    local f5_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = f5_local0 + 0
    local f5_local2 = f5_local0 + 10
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    local f5_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local8 = 3005
    local f5_local9 = 3006
    local f5_local10 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f5_local11 = 0
    local f5_local12 = 0
    local f5_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local8, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local9, TARGET_ENE_0, f5_local10, f5_local11, f5_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act04(arg0, arg1, arg2)
    local f6_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = f6_local0 + 0
    local f6_local2 = f6_local0 + 0
    local f6_local3 = 0
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 3007
    local f6_local9 = 3008
    local f6_local10 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f6_local11 = 0
    local f6_local12 = 0
    local f6_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local8, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f6_local9, TARGET_ENE_0, f6_local10, f6_local11, f6_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act05(arg0, arg1, arg2)
    local f7_local0 = 40 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = f7_local0 + 0
    local f7_local2 = f7_local0 + 10
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local8 = 3009
    local f7_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f7_local10 = 0
    local f7_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act06(arg0, arg1, arg2)
    local f8_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = f8_local0 + 0
    local f8_local2 = f8_local0 + 10
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 3
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    local f8_local8 = 3010
    local f8_local9 = 3011
    local f8_local10 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f8_local11 = 0
    local f8_local12 = 0
    local f8_local13 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local9, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f8_local8, TARGET_ENE_0, f8_local10, f8_local11, f8_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act07(arg0, arg1, arg2)
    local f9_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = f9_local0 + 0
    local f9_local2 = f9_local0 + 10
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = 3012
    local f9_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local10 = 0
    local f9_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act08(arg0, arg1, arg2)
    local f10_local0 = 3004
    local f10_local1 = 3001
    local f10_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local0, TARGET_ENE_0, f10_local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local1, TARGET_ENE_0, f10_local2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act09(arg0, arg1, arg2)
    local f11_local0 = 45 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = f11_local0 + 0
    local f11_local2 = f11_local0 + 10
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local8 = 3000
    local f11_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f11_local10 = 0
    local f11_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f11_local8, TARGET_ENE_0, f11_local9, f11_local10, f11_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act10(arg0, arg1, arg2)
    local f12_local0 = 50 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = f12_local0 + 0
    local f12_local2 = f12_local0 + 10
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 3
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local8 = 3001
    local f12_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f12_local10 = 0
    local f12_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f12_local8, TARGET_ENE_0, f12_local9, f12_local10, f12_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act11(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act12(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act13(arg0, arg1, arg2)
    local f15_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = f15_local0 + 0
    local f15_local2 = f15_local0 + 10
    local f15_local3 = 0
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    local f15_local7 = arg0:GetRandam_Int(1, 100)
    local f15_local8 = 3016
    local f15_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f15_local10 = 0
    local f15_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f15_local8, TARGET_ENE_0, f15_local9, f15_local10, f15_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act14(arg0, arg1, arg2)
    local f16_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = f16_local0 + 0
    local f16_local2 = f16_local0 + 10
    local f16_local3 = 0
    local f16_local4 = 0
    local f16_local5 = 3
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    local f16_local8 = 3030
    local f16_local9 = 3031
    local f16_local10 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f16_local11 = 0
    local f16_local12 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local9, TARGET_ENE_0, f16_local10, f16_local11, f16_local12, 0, 0)
    elseif arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f16_local8, TARGET_ENE_0, f16_local10, f16_local11, f16_local12, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act15(arg0, arg1, arg2)
    local f17_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = f17_local0 + 0
    local f17_local2 = f17_local0 + 10
    local f17_local3 = 0
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    local f17_local8 = 3032
    local f17_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f17_local10 = 0
    local f17_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f17_local8, TARGET_ENE_0, f17_local9, f17_local10, f17_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act16(arg0, arg1, arg2)
    local f18_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = f18_local0 + 0
    local f18_local2 = f18_local0 + 10
    local f18_local3 = 0
    local f18_local4 = 0
    local f18_local5 = 3
    local f18_local6 = 3
    local f18_local7 = arg0:GetRandam_Int(1, 100)
    local f18_local8 = 3033
    local f18_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f18_local10 = 0
    local f18_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f18_local8, TARGET_ENE_0, f18_local9, f18_local10, f18_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act17(arg0, arg1, arg2)
    local f19_local0 = 5
    local f19_local1 = 3035
    local f19_local2 = TARGET_ENE_0
    local f19_local3 = 10
    local f19_local4 = 0
    local f19_local5 = 0
    local f19_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, f19_local0, f19_local1, f19_local2, f19_local3, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act18(arg0, arg1, arg2)
    local f20_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f20_local1 = f20_local0 + 0
    local f20_local2 = f20_local0 + 10
    local f20_local3 = 0
    local f20_local4 = 0
    local f20_local5 = 3
    local f20_local6 = 3
    local f20_local7 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f20_local8 = 3034
    local f20_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f20_local10 = 0
    local f20_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f20_local8, TARGET_ENE_0, f20_local9, f20_local10, f20_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act19(arg0, arg1, arg2)
    local f21_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f21_local1 = f21_local0 + 0
    local f21_local2 = f21_local0 + 10
    local f21_local3 = 0
    local f21_local4 = 0
    local f21_local5 = 3
    local f21_local6 = 3
    local f21_local7 = arg0:GetRandam_Int(1, 100)
    local f21_local8 = 3017
    local f21_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f21_local10 = 0
    local f21_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f21_local8, TARGET_ENE_0, f21_local9, f21_local10, f21_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act20(arg0, arg1, arg2)
    local f22_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f22_local1 = f22_local0 + 0
    local f22_local2 = f22_local0 + 10
    local f22_local3 = 0
    local f22_local4 = 0
    local f22_local5 = 3
    local f22_local6 = 3
    local f22_local7 = arg0:GetRandam_Int(1, 100)
    local f22_local8 = 3018
    local f22_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f22_local10 = 0
    local f22_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f22_local8, TARGET_ENE_0, f22_local9, f22_local10, f22_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act21(arg0, arg1, arg2)
    local f23_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f23_local1 = f23_local0 + 0
    local f23_local2 = f23_local0 + 10
    local f23_local3 = 0
    local f23_local4 = 0
    local f23_local5 = 3
    local f23_local6 = 3
    local f23_local7 = arg0:GetRandam_Int(1, 100)
    local f23_local8 = 20022
    local f23_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f23_local10 = 0
    local f23_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f23_local8, TARGET_ENE_0, f23_local9, f23_local10, f23_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act22(arg0, arg1, arg2)
    local f24_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f24_local1 = f24_local0 + 0
    local f24_local2 = f24_local0 + 10
    local f24_local3 = 0
    local f24_local4 = 0
    local f24_local5 = 3
    local f24_local6 = 3
    local f24_local7 = arg0:GetRandam_Int(1, 100)
    local f24_local8 = 20024
    local f24_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f24_local10 = 0
    local f24_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f24_local8, TARGET_ENE_0, f24_local9, f24_local10, f24_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act25(arg0, arg1, arg2)
    local f25_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f25_local1 = f25_local0 + 0
    local f25_local2 = f25_local0 + 10
    local f25_local3 = 0
    local f25_local4 = 0
    local f25_local5 = 3
    local f25_local6 = 3
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f25_local0, f25_local1, f25_local2, f25_local3, f25_local4, f25_local5, f25_local6)
    local f25_local8 = 3022
    local f25_local9 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f25_local10 = 0
    local f25_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f25_local8, TARGET_ENE_0, f25_local9, f25_local10, f25_local11, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act30(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act31(arg0, arg1, arg2)
    local f27_local0 = 1
    local f27_local1 = TARGET_ENE_0
    local f27_local2 = 45
    local f27_local3 = GUARD_GOAL_DESIRE_RET_Continue
    local f27_local4 = true
    local f27_local5 = 0
    local f27_local6 = arg0:GetRandam_Int(1, 100)
    local f27_local7 = -1
    if f27_local6 <= f27_local5 then
        f27_local7 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, f27_local0, f27_local1, f27_local2, f27_local7, f27_local3, f27_local4)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act32(arg0, arg1, arg2)
    local f28_local0 = arg0:GetRandam_Int(1, 3)
    local f28_local1 = TARGET_ENE_0
    local f28_local2 = 10
    local f28_local3 = TARGET_ENE_0
    local f28_local4 = true
    local f28_local5 = arg0:GetDist(TARGET_ENE_0)
    local f28_local6 = 0
    local f28_local7 = arg0:GetRandam_Int(1, 100)
    local f28_local8 = -1
    if f28_local7 <= f28_local6 then
        f28_local8 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f28_local0, f28_local1, f28_local2, f28_local3, f28_local4, f28_local8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act35(arg0, arg1, arg2)
    local f29_local0 = 10
    local f29_local1 = 3036
    local f29_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local3 = 0
    local f29_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f29_local0, f29_local1, TARGET_ENE_0, f29_local2, f29_local3, f29_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_Act36(arg0, arg1, arg2)
    local f30_local0 = 10
    local f30_local1 = 3037
    local f30_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local3 = 0
    local f30_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, f30_local0, f30_local1, TARGET_ENE_0, f30_local2, f30_local3, f30_local4, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

function IceWyvern450300_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_IceWyvern450300_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetDist(TARGET_ENE_0)
    local f34_local1 = 20 - arg1:GetMapHitRadius(TARGET_SELF)
    local f34_local2 = 0
    local f34_local3 = 0
    local f34_local4 = arg1:GetRandam_Int(1, 100)
    local f34_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_SLEEP) == true then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ForgetTarget) and arg1:GetAttackPassedTime(3023) >= 12 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3023, TARGET_ENE_0, DIST_None, 0, 90)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) and f34_local0 < 0 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            return true
        elseif f34_local4 <= 90 then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3030, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) and f34_local0 < 0 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if f34_local4 <= 90 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 15, 3031, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        else
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        arg2:ClearSubGoal()
        local f34_local6 = arg1:GetDist(TARGET_ENE_0)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and f34_local6 >= 20 then
            local f34_local7 = 5
            local f34_local8 = 3001
            local f34_local9 = TARGET_ENE_0
            local f34_local10 = TARGET_SELF
            local f34_local11 = 10
            local f34_local12 = 0
            local f34_local13 = 0
            local f34_local14 = 0
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, f34_local7, f34_local8, f34_local9, successDist2)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 17.5) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    end
    return false
    
end

RegisterTableGoal(GOAL_IceWyvern450300_AfterAttackAct, "IceWyvern450300_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_IceWyvern450300_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


