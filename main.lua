-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Amin Zeina
-- Created on Mar 2018
--
-- shows if person pays student price or not
-----------------------------------------------------------------------------------------

local dayEntered
local age

local instructionsDay = display.newText( 'Enter the day of the week:', 750, 200, native.systemFont, 128 )
instructionsDay.id = "instructions for Day"

local dayTextField = native.newTextField( 1765 , 200, 500, 128 )
dayTextField.id = "enter day of the week"

local instructionsAge = display.newText( 'Enter your age:', 443, 400, native.systemFont, 128 )
instructionsAge.id = "instructions for age"

local ageTextField = native.newTextField( 1150 , 400, 500, 128 )
ageTextField.id = "enter age"

local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 650, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 700
enterButton.id = "Enter Button"

function onEnterClicked( event )
	-- figures out if, based on age and day, the user pays student price or not
	dayEntered = dayTextField.text
	age = tonumber(ageTextField.text)

	if (dayEntered == "Tuesday" or dayEntered == "Thursday") or (age > 12 and age < 21) then
		local studentPriceText = display.newText( 'You pay student price!', display.contentCenterX, 1000, native.systemFont, 128 )
	else 
		local regularPriceText = display.newText( 'You pay regular price', display.contentCenterX, 1000, native.systemFont, 128 )
	end
end

enterButton:addEventListener( 'touch', onEnterClicked)