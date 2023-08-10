function Platoon001000_Initialize(arg0)
    
end

function Platoon001000_Activate(arg0)
    
end

function Platoon001000_Deactivate(arg0)
    
end

function Platoon001000_Update(arg0)
    local f4_local0 = arg0:GetMemberAI(0)
    local f4_local1 = false
    local f4_local2 = 0
    local f4_local3 = 0
    if f4_local0 ~= nil then
        if f4_local0:HasSpecialEffectId(TARGET_SELF, 13600) == true and arg0:GetNumber(0) ~= 1 then
            f4_local1 = true
            if f4_local0:HasSpecialEffectId(TARGET_SELF, 13601) == true then
                f4_local2 = 1
                f4_local3 = 7
            elseif f4_local0:HasSpecialEffectId(TARGET_SELF, 13602) == true then
                f4_local2 = 8
                f4_local3 = 14
            elseif f4_local0:HasSpecialEffectId(TARGET_SELF, 13603) == true then
                f4_local2 = 15
                f4_local3 = 21
            elseif f4_local0:HasSpecialEffectId(TARGET_SELF, 13604) == true then
                f4_local2 = 22
                f4_local3 = 28
            elseif f4_local0:HasSpecialEffectId(TARGET_SELF, 5024) == true then
                f4_local2 = 29
                f4_local3 = 31
            else
                f4_local2 = 0
                f4_local3 = 0
            end
            arg0:SetNumber(0, 1)
        elseif f4_local0:HasSpecialEffectId(TARGET_SELF, 13600) == false then
            arg0:SetNumber(0, 0)
        end
    end
    local f4_local4 = true
    if f4_local1 == f4_local4 then
        f4_local4 = 0
        local f4_local5 = 0
        local f4_local6 = 0
        local f4_local7 = 0
        local f4_local8 = {}
        local f4_local9 = 0
        local f4_local10 = {}
        local f4_local11 = 0
        for f4_local12 = f4_local2, f4_local3, 1 do
            f4_local0 = arg0:GetMemberAI(f4_local12)
            if f4_local0 ~= nil and f4_local0:HasSpecialEffectId(TARGET_SELF, 13605) == true and f4_local0:GetHp(TARGET_SELF) > 0 then
                f4_local5 = f4_local0:GetDist(TARGET_TEAM_LEADER)
                f4_local8[f4_local9] = f4_local12
                f4_local9 = f4_local9 + 1
                if f4_local0:HasSpecialEffectId(TARGET_TEAM_LEADER, 13602) == true then
                    if f4_local0:GetDist(TARGET_LOCALPLAYER) > 30 and f4_local0:GetDist(TARGET_LOCALPLAYER) < 60 then
                        f4_local10[f4_local11] = f4_local12
                        f4_local11 = f4_local11 + 1
                    end
                elseif f4_local0:GetDist(TARGET_LOCALPLAYER) > 15 and f4_local0:GetDist(TARGET_LOCALPLAYER) < 30 then
                    f4_local10[f4_local11] = f4_local12
                    f4_local11 = f4_local11 + 1
                end
            end
        end
        local f4_local12 = arg0:GetMemberAI(0)
        f4_local0 = f4_local12
        if f4_local0 ~= nil then
            if f4_local11 > 0 then
                f4_local12 = f4_local0:GetRandam_Int(0, f4_local11 - 1)
                f4_local7 = f4_local10[f4_local12]
            else
                f4_local12 = f4_local0:GetRandam_Int(0, f4_local9 - 1)
                f4_local7 = f4_local8[f4_local12]
            end
        end
        f4_local12 = nil
        if f4_local7 == 1 then
            f4_local12 = 12092870
        elseif f4_local7 == 2 then
            f4_local12 = 12092871
        elseif f4_local7 == 3 then
            f4_local12 = 12092872
        elseif f4_local7 == 4 then
            f4_local12 = 12092873
        elseif f4_local7 == 5 then
            f4_local12 = 12092874
        elseif f4_local7 == 6 then
            f4_local12 = 12092875
        elseif f4_local7 == 7 then
            f4_local12 = 12092876
        elseif f4_local7 == 8 then
            f4_local12 = 12092877
        elseif f4_local7 == 9 then
            f4_local12 = 12092878
        elseif f4_local7 == 10 then
            f4_local12 = 12092879
        elseif f4_local7 == 11 then
            f4_local12 = 12092880
        elseif f4_local7 == 12 then
            f4_local12 = 12092881
        elseif f4_local7 == 13 then
            f4_local12 = 12092882
        elseif f4_local7 == 14 then
            f4_local12 = 12092883
        elseif f4_local7 == 15 then
            f4_local12 = 12092884
        elseif f4_local7 == 16 then
            f4_local12 = 12092885
        elseif f4_local7 == 17 then
            f4_local12 = 12092886
        elseif f4_local7 == 18 then
            f4_local12 = 12092887
        elseif f4_local7 == 19 then
            f4_local12 = 12092888
        elseif f4_local7 == 20 then
            f4_local12 = 12092889
        elseif f4_local7 == 21 then
            f4_local12 = 12092890
        elseif f4_local7 == 22 then
            f4_local12 = 12092891
        elseif f4_local7 == 23 then
            f4_local12 = 12092892
        elseif f4_local7 == 24 then
            f4_local12 = 12092893
        elseif f4_local7 == 25 then
            f4_local12 = 12092894
        elseif f4_local7 == 26 then
            f4_local12 = 12092895
        elseif f4_local7 == 27 then
            f4_local12 = 12092896
        elseif f4_local7 == 28 then
            f4_local12 = 12092897
        elseif f4_local7 == 29 then
            f4_local12 = 12092898
        elseif f4_local7 == 30 then
            f4_local12 = 12092899
        elseif f4_local7 == 31 then
            f4_local12 = 12092900
        else
            f4_local12 = 12092901
        end
        if f4_local12 ~= 0 then
            f4_local0:SetEventFlag(f4_local12, true)
        else
            
        end
    end
    
end


