
--this is the exec file for the project

_G.love = require("love")   --imports love module

--need three main functions for THREE STAGES to run the game

function love.load()    --loads up all the date we need
    --_G.number = 0
    love.graphics.setBackgroundColor(0.5, 0.2, 1)           --sets the backgorund color. Since is a constant feature is initialized in the load()

    _G.pacman = {}  --pacman is a table, aka an object
    pacman.x = 200
    pacman.y = 250
    pacman.angle1 = 1
    pacman.angle2 = 5
    
    --another object for the rectangle
    _G.food = {
        x = 600,
        eaten = false
    }    

end

function love.update(dt)   --this runs 60 frames per second; dt stands for Delta Time

    --pacman.x = pacman.x + 1  --makes pacman "move" horizontally 1 pixel 

    if pacman.x >= food_x + 20 then
        pacman.eat = true
    end
    
end

function love.draw()    --draws all on the screen
    --love.graphics.print(number)  --print the graphics  
    --All graphics units are PIXELS
    --this makes pacman check if "eats" the rectangle

    if not food.eaten then 
        love.graphics.setColor(1,1,1)  --uses RGB values, but with values between 0 and 1 instead of 0 and 255
        love.graphics.rectangle("line", food.x, 200 , 50, 50)   --[[
                                                        draws a rectangle specifying a line 
                                                        and the position and dimensions (x coord, y coords) from the upper left corner of the  
                                                        ]]
    end

    love.graphics.setColor(0,0,0) 
    --love.graphics.circle("line", 200, 500, 50) --center_X_coord, center_y_coord, radius 

    love.graphics.arc("fill", pacman.x, pacman.y, 60, pacman.angle1, pacman.angle2) --center_X_coord, center_y_coord, radius, intial angle, final angle

end
