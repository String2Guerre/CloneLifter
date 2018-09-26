io.stdout:setvbuf('no')

local copter = {}
copter.x = 0
copter.y = 0
copter.vx = 0
copter.vy = 0
copter.speed = 6
copter.img = love.graphics.newImage("img/copter.png")

function love.load()
  love.graphics.setBackgroundColor(1,1,1,1)
  sWidth = love.graphics.getWidth()
  sHeight = love.graphics.getHeight()
  
  copter.x = sWidth / 2
  copter.y = sHeight / 2
  
end

function love.update(dt)
  copter.vy = copter.vy + (3 * dt)
  
  if love.keyboard.isDown("left") then
    copter.x = copter.x - 1
  end
  if love.keyboard.isDown("right") then
    copter.x = copter.x + 1
  end
  if love.keyboard.isDown("up") then
    local rad = math.rad(270)
    local forceY = math.sin(rad) * (copter.speed * dt)
    
    copter.vy = copter.vy + forceY
  end
  
  copter.y = copter.y + copter.vy
end

function love.draw()
  love.graphics.draw(copter.img, copter.x, copter.y, rad, 1, 1, copter.img:getWidth(), copter.img:getHeight()/2)
end
