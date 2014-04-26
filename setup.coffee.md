Setup
=====

Set up our runtime styles and expose some stuff for debugging.

    # For debug purposes
    global.PACKAGE = PACKAGE
    global.require = require

Create the engine

    Dust = require "dust"
    {width, height} = require "./pixie"

    global.engine = Dust.init
      width: width
      height: height

    engine.register "Player", require "./player"
