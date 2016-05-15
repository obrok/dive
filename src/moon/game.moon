love = require "love"

export newGame = () ->
  tileset = love.graphics.newImage('tiles.png')

  tileSize = 32
  tilesetWidth, tilesetHeight = tileset\getWidth(), tileset\getHeight()

  dude = love.graphics.newQuad(4 * tileSize, 2 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)
  floor = love.graphics.newQuad(14 * tileSize, 17 * tileSize, tileSize, tileSize, tilesetWidth, tilesetHeight)

  {characterX: 0, characterY: 0, dude: dude, floor: floor, tileset: tileset}

export loveDraw = (game) ->
  love.graphics.draw(game.tileset, game.floor, 300, 300)
  love.graphics.draw(game.tileset, game.dude, 32 * game.characterX, 32 * game.characterY)

export loveKeyreleased = (game, key) ->
  p(key)
  if key == 'left' then
    game.characterX = game.characterX - 1
  elseif key == 'right' then
    game.characterX = game.characterX + 1
  elseif key == 'down' then
    game.characterY = game.characterY + 1
  elseif key == 'up' then
    game.characterY = game.characterY - 1
