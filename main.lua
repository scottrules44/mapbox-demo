local mapbox = require "plugin.mapbox"
local json = require "json"
mapbox.init("pk.XXXXXXXXXXX")--replace with you access token

local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
bg:setFillColor( 0, .5, 0)
local title = display.newText( "Mapbox Plugin", display.contentCenterX, 40, native.systemFontBold, 20 )


mapbox.newView({x= display.contentCenterX, y = display.contentCenterY, width = 200, height = 200, listener =    function (e)
        if (e.type == "obj") then
            local mapview =e.obj
               mapview:setZoom(0)
        end
            
    end
})

if (system.getInfo("environment") == "simulator") then
    local notSupported = display.newText( "Not supported on this plaform", display.contentCenterX, display.contentCenterY, native.systemFont, 13 )
end