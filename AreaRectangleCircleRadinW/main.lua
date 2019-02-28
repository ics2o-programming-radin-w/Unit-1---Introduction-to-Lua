-----------------------------------------------------------------------------------------
--
-- main.lua
--here is the commenting code to add:
-- Title: HelloWorld
-- Name: Radin.W
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
----------------------------------------------------------------------------

-- Your code here 


local areaText
local textsize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200

-- set the background colour of my screen.Remember that colors are between 0 and 1.
display.setDefault("background" , 153/255, 51/255, 255/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect (0,0) widthOfRectangle, heightOfRectangle

--draw the rectangle is half the width and height of the screen size.
myRectangle = display.newRect(0,0) widthOfRectangle, heightOfRectangle

--anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1 0.3)

-- set the color of border
myRectangle:setFillColor(0, 1, 0)

--calculate the area 
areaofRectangle:setStrokeColor(0, 1, 0)

--calculate the area
areaofRectangle = widthOfRectangle = heightOfRectangle

--write the area on the screen. take into consideration the size of font when positoning it on the screen
areaText = display.newText("The area of this rectangle with a width of /n" ..
widthOfRectangle .. " and a height of " .. heightOfRectangle "is " ..
areaofRectangle .. "pixles.", 0,0 Arial, textsize)
--anchor the text and set its (x,y) position 
areaText. anchorX = 0
areaText. anchorY = 0
areaText.x = 20
areaText.y = display. contentHeight/2

--sets the colour of the newText 
areaText:setTextColor(1, 1, 1)