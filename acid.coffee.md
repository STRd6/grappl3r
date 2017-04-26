Adic
====

    {GameObject, Resource:{Sound}} = require "dust"
    {defaults} = require "util"

    module.exports = (I={})->
      defaults I,
        color: "rgba(0, 255, 0, 0.5)"
        width: 1400
        height: 1000

      self = GameObject(I)

      self.on "update", (dt) ->
        if Math.floor(I.age / dt) % Math.floor(2 / dt) is 0
          Sound.play "acid"

        I.y = 1700 + Math.sin(Math.TAU * I.age / 6) * 400
        I.x = - engine.camera().transform().tx + I.width/2

        if (player = engine.first("Player"))?.I.y > (I.y - I.height / 2)
          player.destroy()
          Sound.play "pshoosh"
          engine.first("CameraTarget").I.initialPosition = player.position()
          engine.flash
            color: "red"
            duration: 0.25

          engine.delay 1, ->

            restartLevel()

      return self
