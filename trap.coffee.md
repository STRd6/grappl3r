Trap
====

    {GameObject} = require "dust"
    {defaults} = require "util"

    module.exports = (I={})->
      defaults I,
        color: "#F00"
        radius: 100
        spriteName: "poop"

      self = GameObject(I)
