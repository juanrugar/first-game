
_G.love = require("love")   --imports love module


function love.load()    --loads up all the data we need
   
   _G.jack = {
    x = 0,     --initial position of Jack
    y = 0,
    sprite = love.graphics.newImage("sprites/spritesheet.png")
   }

   -- set sprite dimensions; we use the real width & height of sprite in the file (5352 x 569 pixels)
   SPRITE_WIDTH, SPRITE_HEIGHT = 5352, 569
   -- specify the quad dimensions (in pixels)
   QUAD_WIDTH = 669
   QUAD_HEIGHT = SPRITE_HEIGHT

   -- need to use each quad of the sprite by pinpointing it;  
   -- create a table containing the 8 quads of the sprite and use a for loop to define them
   
   quads = {}

   for i = 1, 8 do
      quads[i] = love.graphics.newQuad((QUAD_WIDTH *(i-1)),0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)
   end


end


function love.update(dt)   
    
end

function love.draw()    --draws all on the screen

   love.graphics.draw(jack.sprite, quads[1], jack.x, jack.y) --points the character (jack), the first quad to draw and its position

end
