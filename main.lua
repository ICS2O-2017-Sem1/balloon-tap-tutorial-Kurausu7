-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local background = display.newImageRect( "background.png", 360, 570 )
background.x = display.contentCenterX
background.y = display.contentCenterY
local platform = display.newImageRect( "ssbS.jpg", 300, 50 )
platform.x = display.contentCenterX
platform.y = display.contentHeight-25

local Mario = display.newImageRect( "Mario.png", 112, 112 )
Mario.x = display.contentCenterX
Mario.y = display.contentCenterY
Mario.alpha = 0.8

local physics = require( "physics" )
physics.start( )
physics.addBody(platform, "static" )
physics.addBody(Mario, "dynamic", { radius=50, bounce=0.3} )

local function pushMario()
    Mario:applyLinearImpulse( 0, -0.75, Mario.x, Mario.y)
end

Mario:addEventListener( "tap", pushMario )
