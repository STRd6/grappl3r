Goal
====

    {GameObject} = require "dust"
    {defaults} = require "util"

    module.exports = (I={})->
      defaults I,
        color: "#F00"
        radius: 100
        spriteName: "smile"

      self = GameObject(I)

      self.on "update", ->
        if player = engine.first("Player")
          distance = Point.distance(player.position(), self.position())
          if distance < 200
            I.spriteName = "mouth1"
          else if distance < 500
            I.spriteName = "mouth0"
          else
            I.spriteName = "smile"
