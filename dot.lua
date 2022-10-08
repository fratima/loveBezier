local dot = {}

 dot.position = {}

 dot.stars = {}
 

function dot.create(x,y)
    dot.position[1] = x
    dot.position[2] = y
end

function dot.update(dt)
    dot.position[1] = (dot.position[1] + 1) 
    dot.position[2] = (dot.position[2] + 1)  
    table.insert(dot.stars, {dot.position[1],dot.position[2]})
    if #dot.stars > 50 then 
        table.remove(dot.stars, 1)
    end
end

function dot.draw(dt)
   -- local screen_width, screen_height = love.graphics.getDimensions()
    love.graphics.setColor(255, 255, 255) -- Red point.
    love.graphics.points(dot.stars) 
        --love.graphics.points(dot.position[1],dot.position[2]) 
end

return dot
