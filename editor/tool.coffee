{GameObject} = require "dust"

{defaults} = require "util"

module.exports = (I={}) ->
  defaults I,
    snap: 8
    name: "Tool"

  self = GameObject(I).extend
    pressed: (worldPoint) ->
    released: (worldPoint) ->
    updatePosition: (worldPoint) ->
      I.currentPosition = worldPoint

      self.trigger "updatePosition", worldPoint

    draw: (canvas) ->
      canvas.withTransform engine.camera().transform(), (canvas) ->
        self.trigger "draw", canvas

  return self
