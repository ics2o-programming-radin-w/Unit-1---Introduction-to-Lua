-- Title: MovingImages
-- Name: Radin.W
-- Course: ICS2O/3C
-- This program-moves a beetleship across the screen and then makes it fade out.
-- I added another object that move sin a different direction as well as a background image.
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local rocketship = display.newImageRect("Image/rocketship.png", 200, 200)

-- set the image to be transparent
rocketship.alpha = 0
