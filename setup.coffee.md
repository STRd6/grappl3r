Setup
=====

Set up our runtime styles and expose some stuff for debugging.

    # For debug purposes
    global.PACKAGE = PACKAGE
    global.require = require

Create the engine

    Dust = require "dust"
    {Resource} = Dust
    {width, height} = require "./pixie"

    Resource.add require "./resources"

    global.engine = Dust.init
      width: width
      height: height
      backgroundColor: "tan"

    {applyStylesheet} = require "util"
    applyStylesheet require "./style"

    engine.register "Background", require "./background"
    engine.register "Player", require "./player"
    engine.register "Goal", require "./goal"
    engine.register "CameraTarget", require "./lib/camera_target"
    engine.register "Wall", require "./wall"
