require "game"
require "moon.all"

function love.load()
  GameSingleton = newGame()
end

function love.draw()
  loveDraw(GameSingleton)
end

function love.keyreleased(key)
  loveKeyreleased(GameSingleton, key)
end
