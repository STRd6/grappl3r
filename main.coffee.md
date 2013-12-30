Grappl3r
========

    require "./setup"
    Dust = require "dust"

    {width, height} = require "./pixie"

    engine = Dust.init
      width: width
      height: height

    console.log Dust.GameObject
