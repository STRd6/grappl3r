Grappl3r
========

    require "./setup"
    require "./duct_tape"

    {Collision} = require "dust"
    {width, height} = require "./pixie"
    Line = require "./lib/line"

    global.player = engine.add "Player",
      x: width/2
      y: height/2

    engine.add "CameraTarget"

    # TODO: Per level size
    window.Arena =
      width: width * 2
      height: height * 1.5

    boundaryLines = [
      Point(0, 0),
      Point(Arena.width, 0),
      Point(Arena.width, Arena.height),
      Point(0, Arena.height)
    ].map (p, i, a) ->
      Line
        start: p
        end: a.wrap(i + 1)

    engine.add "Wall",
      lines: boundaryLines

    engine.add "CameraTarget"

    # Camera Hack
    engine.on "beforeDraw", ->
      {x, y} = engine.first("CameraTarget").position().scale(-1)
      engine.camera().transform Matrix.translation(x + width/2, y + height/2)

    engine.on "update", ->
      # TODO: Don't shoehorn camera following in here
      camera = engine.camera()

      camera.I.maxSpeed = 1000
      camera.I.screen.width = width
      camera.I.screen.height = height

    restartLevel = ->
      player.destroy()

      window.player = engine.add "Player",
        x: width/2
        y: height/2

    window.nextLevel = ->
      unless transitioning
        transitioning = true
    
        engine.camera().fadeOut 10
    
        engine.delay 5, ->
          transitioning = false
    
          level += 1
    
          if level < levels.length
            engine.setState MainGame
              level: levels[level]
          else
            level = -1
            engine.setState GameOver()

    engine.on 'update', ->
      Collision.collide "Player", ".exit", () ->
        player.destroy()
        nextLevel()

      Collision.collide "Missile", "Wall", (missile, wall) ->
        missile.destroy()
    
      Collision.collide "Player", "Spike", (player, spike) ->
        restartLevel()
    
      if player?.I.y > Arena.height + 64
        restartLevel()
