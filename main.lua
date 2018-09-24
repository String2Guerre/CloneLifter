io.stdout:setvbuf('no')

local copter = {}
copter.x = 0
copter.y = 0
copter.vx = 0
copter.vy = 0
copter.angle = 270
copter.img = love.graphics.newImage("img/ship.png")

function love.load()
  sWidth = love.graphics.getWidth()
  sHeight = love.graphics.getHeight()
  
  copter.x = sWidth / 2
  copter.y = sHeight / 2
  
  rad = math.rad(copter.angle)
end

function love.update(dt)
  copter.vy = copter.vy + 0.01
  
  if love.keyboard.isDown("up") then
    
  end
  
  copter.y = copter.y + copter.vy
end

function love.draw()
  love.graphics.draw(copter.img, copter.x, copter.y, rad, 1, 1, copter.img:getWidth()/2, copter.img:getHeight()/2)
end
