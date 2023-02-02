
local bullet = script.Parent

local function onHit(other)
	local parent = other.Parent
	if game.Players:GetPlayerFromCharacter(parent)then
		local explosion = Instance.new("Explosion")
		explosion.Parent = game.Workspace	
		explosion.Position = bullet.Position
	end
end

bullet.Touched:Connect(onHit)
wait(5)
bullet:Destroy()