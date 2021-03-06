 --Title: NumericTextFields
-- Name: RadinW
-- Course: ICS2O/3C
-- This program...-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 0/255, 0/255, 102/255)

--create local variables
local questionObject
local correctObject
local NumericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

local function AskQuestion()
	-- generate 2 random numbers numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)
    
    correctAnswer = randomNumber1 + randomNumber2

    -- create question in text object
    questionObject.text = randomNumber1 .. " + " .. randomNumber2
end

local function HideCorrect()
    correctObject.isVisible = false
    AskQuestion()
end

local function NumericFieldListener(event)    

   -- User begins editing "numericField"
    if ( event.phase == "began") then

    	--clear text field
    	event.target.text = ""

    elseif event.phase == "submitted" then

      -- when the answer is submitted (enter key is pressed) set user input to user's answer
       userAnswer = tonumber(event.target.text)

        -- if the users answer and the correct answer are the same
         if (userAnswer == correctAnswer)  then
         	correctObject.isVisible = true
         	timer.performWithDelay(2000, HideCorrect)
        end
    end
end    

-- display a question and sets the coulor
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)
correctObject = display.newText( "Correct!", display.contentWidth/4, display.contentHeight/3, nil, 60)
correctObject.isVisible = true
correctObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)



-- call the function to ask the question
AskQuestion()

