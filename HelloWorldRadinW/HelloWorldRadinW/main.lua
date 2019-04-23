---- Title: HelloWorld
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
---------------------------------------------------------------------------------------
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--print "Hello, World" to the command terminal
print ("HelloWorld")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create a local variable
local textObject

-- display text on screen at position x = 500 with
-- a default font style and font size 50
textObject = display.newText("Hello, Radin.W!", 500, 500, nil, 50)
--sets the color of text
textObject:setTextColor(0/255, 0/255, 0/255)
