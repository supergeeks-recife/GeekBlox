print("Configurando a ponte...")

local ponte = script.Parent
local plataforma = ponte.Plataforma
local gatilho = ponte.Gatilho

plataforma.Transparency = 0.9
plataforma.CanCollide = false

local function desativaPonte()
	plataforma.Transparency = 0.9
	plataforma.CanCollide = false
end

local function ativaPonte()
	print("ativando ponte...")
	wait(1)
	plataforma.Transparency = 0
	plataforma.CanCollide = true
	wait(3)
	desativaPonte()
end

local function onHit(collision)
	local isHuman = collision.Parent:FindFirstChild("Humanoid")
	if isHuman then
		ativaPonte()
	end
end

gatilho.Touched:Connect(onHit)