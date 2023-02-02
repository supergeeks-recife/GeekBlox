local cannon = script.Parent
local cano = cannon.Cano
local bullet = game.ServerStorage.Bullet

while true do
	local bulletCopy = bullet:Clone()
	bulletCopy.Parent = game.Workspace
	--posiciona a bullet um pouco a frente do canhão
	bulletCopy.Position = Vector3.new(cano.Position.X - 2, cano.Position.Y, cano.Position.Z)
	bulletCopy.AssemblyLinearVelocity = Vector3.new(-50, 0, 0)
	wait(2)
end
