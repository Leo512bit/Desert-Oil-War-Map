
WorldLoaded = function()
	Media.DisplayMessage("Please go to the briefing tab to read the map rules this map is very different with a new economy. Thank you for playing my map :) (the map is incomplete)")
end

ColorChanger = function()
	if RedLight < DesiredRed then
		RedLight = RedLight + 0.001
	elseif RedLight > DesiredRed then
		RedLight = RedLight - 0.001
	end
	if GreenLight < DesiredGreen then
		GreenLight = GreenLight + 0.001
	elseif GreenLight > DesiredGreen then
		GreenLight = GreenLight - 0.001
	end
	if BlueLight < DesiredBlue then
		BlueLight = BlueLight + 0.001
	elseif BlueLight > DesiredBlue then
		BlueLight = BlueLight - 0.001
	end
	Lighting.Red = RedLight
	Lighting.Green = GreenLight
	Lighting.Blue = BlueLight
	Trigger.AfterDelay(ColorChangeSpeed, function()
		ColorChanger()
	end)
end