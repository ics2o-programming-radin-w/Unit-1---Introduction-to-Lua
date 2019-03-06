-- Title: TouchAndDrag
-- Name: Radin.W
-- Course: ICS2O/3C
-- This program -----------------------------------------------------------------------------------------
--has two images on the screen. when I click and drag on each, the image it moves with my finger
-- main.lua
--
-----------------------------------------------------------------------------------------

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/YellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/BlueGirl.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false

-- set the x and y position of myImage
yellowGirl.x = 400
yellowGirl.y = 250

blueGirl.x = 800 
blueGirl.y = 500

-- Function: BlueGirlListener
--Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadyTouchedBlueGirl = true
		end
	end
	if  ( ( touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
	    blueGirl.x = touch.x
	    blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedYellowGirl = false
	end 
end

--adds the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)	  
-----------------------------------------------------------------
-- Function: BlueGirlListener
--Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function YellowGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) then
		end
	end
	if  ( ( touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
	    yellowGirl.x = touch.x
	    yellowGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedYellowGirl = false
	    alreadyTouchedBlueGirl = false
	end 
end

--adds the respective listeners to each object
yellowGirl:addEventListener("touch", YellowGirlListener)	  

-----------------------------------------------------------------
local pinkGirl = display.newImageRect("Images/pinkGirl.png", 150, 150)
local pinkGirlWidth = pinkGirl.width
local pinkGirlHeight = pinkGirl.height
local alreadyTouchedpinkGirl = false
yellowGirl.x = 1000
yellowGirl.y = 600

-- Function: PinkGirlListener
--Input: touch listener
-- Output: none
-- Description: when blue girl is touched, move her
local function PinkGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedPinkGirl == false) then
		end
	end
	if  ( ( touch.phase == "moved") and (alreadyTouchedPinkGirl == true) ) then
	    PinkGirl.x = touch.x
	    PinkGirl.y = touch.y
	end

	if (touch.phase == "ended") then
	    alreadyTouchedPinkGirl = false
	    alreadyTouchedPinkGirl = false
	end 
end

--adds the respective listeners to each object
PinkGirl:addEventListener("touch", pinkGirlListener)	  
