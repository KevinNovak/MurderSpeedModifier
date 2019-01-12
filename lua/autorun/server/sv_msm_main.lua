-- Murderer speeds
local cfgMurdererWalkSpeed = CreateConVar("msm_murderer_walk_speed", 250, FCVAR_NOTIFY, "Murderer Walk Speed")
local cfgMurdererCanRun = CreateConVar("msm_murderer_can_run", 1, FCVAR_NOTIFY, "Murderer Can Run")
local cfgMurdererRunSpeed = CreateConVar("msm_murderer_run_speed", 310, FCVAR_NOTIFY, "Murderer Run Speed")

-- Bystander speeds
local cfgBystanderWalkSpeed = CreateConVar("msm_bystander_walk_speed", 250, FCVAR_NOTIFY, "Bystander Walk Speed")
local cfgBystanderCanRun = CreateConVar("msm_bystander_can_run", 1, FCVAR_NOTIFY, "Bystander Can Run")
local cfgBystanderRunSpeed = CreateConVar("msm_bystander_run_speed", 290, FCVAR_NOTIFY, "Bystander Run Speed")

local murdererWalkSpeed = cfgMurdererWalkSpeed:GetInt()
local murdererCanRun = cfgMurdererCanRun:GetBool()
local murdererRunSpeed = cfgMurdererRunSpeed:GetInt()

local bystanderWalkSpeed = cfgBystanderWalkSpeed:GetInt()
local bystanderCanRun = cfgBystanderCanRun:GetBool()
local bystanderRunSpeed = cfgBystanderRunSpeed:GetInt()

hook.Add(
    "Initialize",
    "MurderSpeedModifier",
    function()
        local plyMeta = FindMetaTable("Player")

        function plyMeta:CalculateSpeed()
            local walkSpeed = nil
            local runSpeed = nil
            local jumpPower = 200

            if self:GetMurderer() then
                walkSpeed = murdererWalkSpeed
                if murdererCanRun then
                    runSpeed = murdererRunSpeed
                else
                    runSpeed = murdererWalkSpeed
                end
            else
                walkSpeed = bystanderWalkSpeed
                if bystanderCanRun then
                    runSpeed = bystanderRunSpeed
                else
                    runSpeed = bystanderWalkSpeed
                end
            end

            if self:GetTKer() then
                walkSpeed = walkSpeed * 0.5
                runSpeed = runSpeed * 0.5
                jumpPower = jumpPower * 0.5
            end

            local weapon = self:GetActiveWeapon()
            if IsValid(weapon) then
                if weapon.GetCarrying and weapon:GetCarrying() then
                    walkSpeed = walkSpeed * 0.3
                    runSpeed = runSpeed * 0.3
                    jumpPower = jumpPower * 0.3
                end
            end

            self:SetWalkSpeed(walkSpeed)
            self:SetRunSpeed(runSpeed)
            self:SetJumpPower(jumpPower)
        end
    end
)
