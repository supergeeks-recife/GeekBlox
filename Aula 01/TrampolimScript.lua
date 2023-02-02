print("configurando o trampolim")

local trampolim = script.Parent

local function onHit(colisor)
	print(colisor.Name)
	
	local objeto = colisor.Parent
	local humano = colisor.Parent:FindFirstChild("Humanoid")
	
	if humano then
		trampolim.Transparency = 0.2
		humano.JumpPower = 100
		humano.Jump = true
		wait(2)
		humano.JumpPower = 50
		trampolim.Transparency = 0.0
	end
end

trampolim.Touched:Connect(onHit)