function Platoon001010_Initialize(arg0)
    
end

function Platoon001010_Activate(arg0)
    
end

function Platoon001010_Deactivate(arg0)
    
end

function Platoon001010_Update(arg0)
    local f4_local0 = arg0:GetMemberAI(0)
    f4_local0:SetNumber(15, 10)
    if f4_local0:IsEventFlag(13002821) == false then
        local f4_local1 = f4_local0:HasSpecialEffectId(TARGET_SELF, 15259)
        local f4_local2 = false
        if f4_local1 == f4_local2 then
            f4_local1 = 0
            f4_local2 = 0
            f4_local0:SetNumber(15, 11)
            local f4_local3 = {}
            local f4_local4 = 1
            local f4_local5 = 3
            local f4_local6 = nil
            for f4_local7 = f4_local4, f4_local5, 1 do
                f4_local0 = arg0:GetMemberAI(f4_local7)
                if f4_local0 ~= nil then
                    f4_local6 = f4_local0:GetDist(TARGET_TEAM_LEADER)
                    if f4_local6 >= 3 and f4_local0:IsInsideTargetCustom(TARGET_TEAM_LEADER, TARGET_SELF, AI_DIR_TYPE_B, 180, -1, 16) then
                        f4_local3[f4_local7] = 1
                    else
                        f4_local3[f4_local7] = 0
                    end
                end
            end
            local f4_local7 = arg0:GetMemberAI(0)
            f4_local0 = f4_local7
            f4_local7 = f4_local3[1]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002822)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002822, true)
                    f4_local0:SetEventFlag(13002821, true)
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002822)
                local f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002822, false)
                    f4_local0:SetEventFlag(13002821, true)
                end
            end
            f4_local7 = f4_local3[2]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002823)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002823, true)
                    f4_local0:SetEventFlag(13002821, true)
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002823)
                f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002823, false)
                    f4_local0:SetEventFlag(13002821, true)
                end
            end
            f4_local7 = f4_local3[3]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002824)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002824, true)
                    f4_local0:SetEventFlag(13002821, true)
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002824)
                f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002824, false)
                    f4_local0:SetEventFlag(13002821, true)
                end
            end
            f4_local7 = f4_local3[4]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002825)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002825, true)
                    f4_local0:SetEventFlag(13002821, true)
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002825)
                f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002825, false)
                    f4_local0:SetEventFlag(13002821, true)
                end
            end
            f4_local7 = f4_local3[5]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002826)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002826, true)
                    f4_local0:SetEventFlag(13002821, true)
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002826)
                f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002826, false)
                    f4_local0:SetEventFlag(13002821, true)
                end
            end
            f4_local7 = f4_local3[6]
            if f4_local7 == 1 then
                f4_local7 = f4_local0:IsEventFlag(13002827)
                f4_local8 = false
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002827, true)
                    f4_local0:SetEventFlag(13002821, true)
                else
                    
                end
            else
                f4_local7 = f4_local0:IsEventFlag(13002827)
                f4_local8 = true
                if f4_local7 == f4_local8 then
                    f4_local0:SetEventFlag(13002827, false)
                    f4_local0:SetEventFlag(13002821, true)
                else
                    
                end
            end
        end
    end
    
end


