require "game"

function love.load()
  Tileset = love.graphics.newImage('tiles.png')

  local tileSize = 32
  local tilesetWidth, tilesetHeight = Tileset:getWidth(), Tileset:getHeight()

  Dude = love.graphics.newQuad(4 * tileSize, 2 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)
  Floor = love.graphics.newQuad(14 * tileSize, 17 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)

  Game = newGame()
end

love.draw = loveDraw
love.keyreleased = loveKeyreleased
