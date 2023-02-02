luz = game.Lighting
tempo = 0
while true do
	tempo = tempo + 10
	luz:SetMinutesAfterMidnight(tempo)
	wait(1)
	--print("Tempo = ", tempo)
end