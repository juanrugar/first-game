
--this is the exec file for the project

_G.love = require("love")   --imports love module

--need three main functions for THREE STAGES to run the game

function love.load()    --loads up all the date we need
    --_G.number = 0
    love.graphics.setBackgroundColor(0.5, 0.2, 1)           --sets the backgorund color. Since is a constant feature is initialized in the load()
end

function love.update(dt)   --this runs 60 frames per second; dt stands for Delta Time
    --number = number + 1
end

function love.draw()    --draws all on the screen
    --love.graphics.print(number)  --print the graphics
    love.graphics.setColor(1,0,0)  --uses RGB values, but with values between 0 and 1 instead of 0 and 255
    love.graphics.rectangle("line", 50, 50 , 50, 50)   --[[
                                                        draws a rectangle specifying a line 
                                                        and the position and dimensions (x coord, y coords) from the upper left corner of the  
                                                        ]]

end
