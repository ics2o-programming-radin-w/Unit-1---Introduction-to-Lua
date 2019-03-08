- Title: TouchAndReact
-- Name: RadinW
-- Course: ICS2O/3C
-- This program...
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

display.setDefault ("background" , 200/255, 0/255, 255/255)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display. contentHeight/2
blueButton.isVisible = true 

--create red button, set its position and make it visible
local redbutton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
redbutton.x = display.contentWidth/2
redbutton.y = display.contentHeight/2
redbutton.isVisible =false

--create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!" , 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display contentHeight /3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

--Function: BlueButtonListener
-- Input: touch listener
-- Output: none
--Describe: when blue button is cliked, it will make the text appear the red button, and make the blue button disapear
local function BlueButtonListener(touch)
	if  (touch.phase == "began") then
		 blueButton.isVisible = true
		 redButton.isVisible = false
		 textObject.isVisible = false
    end
end

--add the respective listeners to each object
blue