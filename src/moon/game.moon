export newGame = () ->
  {characterX: 0, characterY: 0}

export loveDraw = () ->
  love.graphics.draw(Tileset, Floor, 300, 300)
  love.graphics.draw(Tileset, Dude, 32 * Game.characterX, 32 * Game.characterY)

export loveKeyreleased = (key) ->
  if key == 'left' then
    Game.characterX = Game.characterX - 1
  elseif key == 'right' then
    Game.characterX = Game.characterX + 1
  elseif key == 'down' then
    Game.characterY = Game.characterY + 1
  elseif key == 'up' then
    Game.characterY = Game.characterY - 1
