-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on kangmin
-- created by may 7
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)
 
centerX = display.contentWidth * .5
centerY = display.contentHeight * .5

local sheetOptionsIdle =
{
    width = 290,
    height = 500,
    numFrames = 10
}

local sheetIdleninja = graphics.newImageSheet( "./assets/spritesheets/ninjaGirlIdle.png", sheetOptionsIdle )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleninja
    },
}
local ninja = display.newSprite( sheetIdleninja, sequence_data )
ninja.x = centerX 
ninja.y = centerY

ninja:play()

local sheetOptionsIdle =
{
	width = 230,
    height = 439,
    numFrames = 10
}

local sheetIdleninjaBoy = graphics.newImageSheet( "./assets/spritesheets/ninjaBoyIdle.png", sheetOptionsIdle )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleninjaBoy
    },
}
local ninjaBoy = display.newSprite( sheetIdleninjaBoy, sequence_data )
ninjaBoy.x = centerX + 100
ninjaBoy.y = centerY - 500

ninjaBoy:play()