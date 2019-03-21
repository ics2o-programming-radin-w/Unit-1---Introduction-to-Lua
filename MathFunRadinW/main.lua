 --Title: MathFun
-- Name: RadinW
-- Course: ICS2O/3C
-- This program...-----------------------------------------------------------------------------------------
-------------------------------

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 0/255, 0/255, 102/255)

--create local variables
local questionObject
local correctObject
local incorrectObject
local NumericField
local randomNumber1
local randomNumber2
local randomNumber3
local randomNumber4
local userAnswer
local correctAnswer

local function AskQuestion()
	-- generate 2 random numbers numbers between a max. and a min. number
	randomNumber1 = math.random(1, 12)
	randomNumber2 = math.random(1, 12)
    randomNumber3 = math.random(1, 12)
    randomNumber4 = math.random(1, 12)
    correctAnswer = randomNumber1 + randomNumber2 
 
    -- create question in text object
    questionObject.text = randomNumber1 .. " + " .. randomNumber1
    questionObject.text = randomNumber2 .. " * " .. randomNumber2
    questionObject.text = randomNumber3 .. " / " .. randomNumber3
    questionObject.text = randomNumber4 .. " - " .. randomNumber4
end

  local function HideCorrect()

    correctObject.isVisible = false
    AskQuestion()
end

local function Hideincorrect()
    incorrectObject.isVisible = false
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
        else

        end
    end
end    

-- display a question and sets the coulor
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)

correctObject = display.newText( "Correct!", display.contentWidth/4, display.contentHeight/3, nil, 60)
correctObject.isVisible = false

incorrectObject = display.newText("incorrect!", display.contentWidth/4, 250, nil,160)
incorrectObject.isVisible = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)



-- call the function to ask the question
AskQuestion()

