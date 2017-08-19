local mapbox = require "plugin.mapbox"
local json = require "json"
mapbox.init("pk.eyJ1Ijoic2NvdHRydWxlczQ0IiwiYSI6ImNqNmZqOWprdzBoZDEyd2w5ZTkyZ3Fhc24ifQ.0s3OCQ5XczkeqNvW9Nr9jg")

local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 0, .5, 0)
local title = display.newText( "Mapbox Plugin", display.contentCenterX, 40, native.systemFontBold, 20 )

local mapview
local function showInterface()

end

mapbox.newView({x= display.contentCenterX, y = display.contentCenterY, width = 200, height = 200, listener =    function (e)
    
    end
})

if (system.getInfo("environment") == "simulator") then
    local notSupported = display.newText( "Not supported on this plaform", display.contentCenterX, display.contentCenterY, native.systemFont, 13 )
end
