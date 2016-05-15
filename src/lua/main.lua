function newGame()
  return {characterX = 0, characterY = 0}
end

function love.load()
  Tileset = love.graphics.newImage('tiles.png')

  local tileSize = 32
  local tilesetWidth, tilesetHeight = Tileset:getWidth(), Tileset:getHeight()

  Dude = love.graphics.newQuad(4 * tileSize, 2 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)
  Floor = love.graphics.newQuad(14 * tileSize, 17 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)

  Game = newGame()
end

function love.keyreleased(key)
  if key == 'left' then
    Game.characterX = Game.characterX - 1
  elseif key == 'right' then
    Game.characterX = Game.characterX + 1
  elseif key == 'down' then
    Game.characterY = Game.characterY + 1
  elseif key == 'up' then
    Game.characterY = Game.characterY - 1
  end
end

function love.draw()
    love.graphics.draw(Tileset, Floor, 300, 300)
    love.graphics.draw(Tileset, Dude, 32 * Game.characterX, 32 * Game.characterY)
end
