Background
==========

Background image doohickey

    {GameObject} = require "dust"
    {defaults} = require "util"

    module.exports = (I={}) ->
      defaults I,
        zIndex: -100
        spriteName: "dudebro"

      self = GameObject(I)
