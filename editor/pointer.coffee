Tool = require "./tool"

module.exports = (I={}) ->
  selectedObject = undefined
  initialObjectPosition = undefined
  startPoint = undefined

  I.name = "Pointer"

  self = Tool(I).extend
    pressed: (worldPoint) ->
      startPoint = worldPoint
      
      wall = engine.first("Wall")
      
      distances = wall.lines().map (line) ->
        distance = line.containsPoint(startPoint)

        [distance, line]

      # TODO: Select closest line within threshold

      console.log distances

    released: (worldPoint) ->
      startPoint = undefined

  self.on "draw", (canvas) ->

  self.on "updatePosition", (worldPoint) ->

  return self
