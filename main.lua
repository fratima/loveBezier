local dot = require("dot")

-- Configuration
function love.conf(t)
	t.title = "" -- The title of the window the game is in (string)
	t.version = "0.1"         -- The LÖVE version this game was made for (string)
	t.window.width = 480        -- we want our game to be long and thin.
	t.window.height = 800

	-- For Windows debugging
	t.console = true
end

debug = true

function love.load(arg)
	
	dot.create(0,0)
end

function love.update(dt)
	dot.update()
end

function love.draw(dt)
	dot.draw()
end
