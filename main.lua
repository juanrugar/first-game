
_G.love = require("love")   --imports love module


function love.load()    --loads up all the data we need
   
   _G.jack = {
    x = 0,     --initial position of Jack
    y = 0,
    sprite = love.graphics.newImage("sprites/spritesheet.png"),
    animation = {
      direction = "right",
      idle = true,
      frame = 1,
      max_frames = 8, --the amount of quads of the sprite we're using 
      speed = 20,
      timer = 0.1       --the time character changes frames
    }
   
   }

   -- set sprite dimensions; we use the real width & height of sprite in the file (5352 x 569 pixels)
   SPRITE_WIDTH, SPRITE_HEIGHT = 5352, 569
   -- specify the quad dimensions (in pixels)
   QUAD_WIDTH = 669
   QUAD_HEIGHT = SPRITE_HEIGHT

   -- need to use each quad of the sprite by pinpointing it;  
   -- create a table containing the 8 quads of the sprite and use a for loop to define them
   
   quads = {}

   for i = 1, jack.animation.max_frames do
      quads[i] = love.graphics.newQuad((QUAD_WIDTH *(i-1)),0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)
   end


end


function love.update(dt)  
   --keys for Jack's moves
   if love.keyboard.isDown("d") then  --moves to the right
      jack.animation.idle = false
      jack.animation.direction = "right"
   elseif love.keyboard.isDown("a") then  --moves to the left
      jack.animation.idle = false
      jack.animation.direction = "left"
   else
      jack.animation.idle = true
      jack.animation.frame = 1  --return tu the "idle frame" (first quad) when no key is down
   end

   --sprites animation
    if not jack.animation.idle then
      jack.animation.timer = jack.animation.timer + dt  --adjust drawing to update
      
      if jack.animation.timer > 0.2 then
         jack.animation.timer = 0.1

         jack.animation.frame = jack.animation.frame + 1
         
         --set the direction
         if jack.animation.direction == "right" then  
            jack.x = jack.x + jack.animation.speed
         elseif  jack.animation.direction == "left" then
            jack.x = jack.x - jack.animation.speed
         end 

         if jack.animation.frame > jack.animation.max_frames then
            jack.animation.frame = 1
         end
      end

   end
      
end

function love.draw()    --draws all on the screen

   --scale Jack's sprite
   love.graphics.scale(0.3)
   
   --draw Jack according to the direction
   if jack.animation.direction == "right" then
      love.graphics.draw(jack.sprite, quads[jack.animation.frame], jack.x, jack.y) --points the character (jack), the first quad to draw and its position
   else
      love.graphics.draw(jack.sprite, quads[jack.animation.frame], jack.x, jack.y, 0, -1, 1, QUAD_WIDTH, 0) --see video 3:19 for parameters' specs
   end
 
end
