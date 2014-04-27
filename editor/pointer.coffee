Tool = require "./tool"

module.exports = (I={}) ->
  selectedObject = undefined
  initialObjectPosition = undefined
  startPoint = undefined

  I.name = "Pointer"

  lines = ->
    engine.first("Wall").lines()

  self = Tool(I).extend
    pressed: (worldPoint) ->
      startPoint = worldPoint

      distances = lines().map (line) ->
        distance = line.containsPoint(startPoint)

        [Math.abs(distance), line]
      .filter ([distance, line]) ->
        distance < 20
      .sort (a, b) ->
        a[0] - b[0]

      if closest = distances[0]
        selectedObject = closest[1]
      else
        engine.first("CameraTarget").I.initialPosition = worldPoint
        selectedObject = undefined

    released: (worldPoint) ->
      startPoint = undefined

  self.on "draw", (canvas) ->
    if selectedObject
      canvas.drawLine
        width: 3
        color: "rgba(255, 0, 255, 0.75)"
        start: selectedObject.start
        end: selectedObject.end

  self.on "update", ->
    if justPressed.del
      lines().remove(selectedObject)

  self.on "updatePosition", (worldPoint) ->

  return self
