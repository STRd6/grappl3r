Levels
======

    {width, height} = require "./pixie"

    {defaults, extend} = require "util"

    bg = (name, options={}) ->
      engine.add "Background", extend
        x: width
        y: height
        spriteName: name
        scale: 1
        zIndex: -1000
      , options

    module.exports = [
      # 0
      ->
        bg "sandcastles",
          scale: 2

        engine.add "Background",
          x: width * 2 + 50
          y: height - 100
          spriteName: "dudebro"
    
        engine.add "Goal",
          x: width * 2
          y: 0
      -> # 1
        bg "insideMouth"

    ]