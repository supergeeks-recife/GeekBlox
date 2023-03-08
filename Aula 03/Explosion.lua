function ExplodePart(part)
	if part.BrickColor == BrickColor.Red() then
		explosion = Instance.new("Explosion", game.Workspace)
		explosion.Position = part.Position
		part.BrickColor = BrickColor.White()
	else
		number = math.random(1,4)
		if number == 1 then
			part.BrickColor = BrickColor.Red()
		end
	end
end

children = game.Workspace:GetChildren()

while true do
	for _, child in ipairs(children) do
		if child.Name == "ExplosionPart" then
			ExplodePart(child)
		end
	end
	wait(2)
end