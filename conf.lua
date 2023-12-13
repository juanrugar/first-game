function love.conf(t)
    t.identity = "data/saves" --to save file
    --t.version = "1.0.0"         --the version of the game; it's up to me to increased as changes are introduced
    t.console = false 
    t.externalstorage = true    --ANDROID only
    t.gammacorrect = true       --enables gamma correction 
    t.window.title = "Video Game" --adds a title to the game screen 
    t.window.icon = "icon/game_icon.jpg"  --adds an icon to the game screen
    t.window.width = 1200        --sets the width of game screen
    t.window.height = 700       --sets the height of game screen
    
    t.window.minwidth = 900        --sets the min width of game screen
    t.window.minheight = 300       --sets the min height of game screen
    
    t.window.resizable = true  --allows to resize the game screen
    t.window.display = 2      
    --t.window.fullscreen = true      --allows fullscreen
    --t.window.x = 100        --x starting position for game screen (counting from the left edge of the screen)
    --t.window.y = 100        -- idem for y coord

end


