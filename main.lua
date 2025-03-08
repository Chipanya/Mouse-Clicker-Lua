function love.load()
    love.window.setMode(600,400)
    love.window.setTitle("Mouse Clicker")

    score = {}
    score.x = 300
    score.y = 300
    score.val = 0

    circle = {}
    circle.x = 300
    circle.y = 100
    circle .radius = 10

    timer = 30
    timerX = 400
    timerY = 300

end

function love.update(dt)

    timer = timer - 1 * dt

    if timer <= 0 then
        resetGame()
    end

    if math.floor(timer) % 3 == 0 then
        circle.x = circle.x - 10 * dt
        circle.y = circle.y - 10 * dt
    end

    if love.mouse.isDown(1) then
        score.val = score.val + 1 
    end
end

function love.draw()
    love.graphics.print("Counter: " ..score.val, score.x, score.y)
    love.graphics.print("Timer" ..math.floor(timer), timerX, timerY)
    love.graphics.circle("fill", circle.x, circle.y, circle.radius)
end

function resetGame()
    score = 0
    timer = 30
end