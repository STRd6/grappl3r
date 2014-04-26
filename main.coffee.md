Grappl3r
========

    require "./setup"
    require "./duct_tape"

    {width, height} = require "./pixie"
    Line = require "./lib/line"

    {Resource:{Music}, Collision} = require "dust"

    levels = require "./levels"

    Music.play "bg"

    currentLevel = 0

    # TODO: Per level size
    window.Arena =
      width: width * 2
      height: height * 1.5

    # Camera Hack
    engine.on "beforeDraw", ->
      if cameraTarget = engine.first("CameraTarget")
        {x, y} = cameraTarget.position().scale(-1)
        engine.camera().transform Matrix.translation(x + width/2, y + height/2)

    engine.on "update", ->
      # TODO: Don't shoehorn camera following in here
      camera = engine.camera()

      camera.I.maxSpeed = 1000
      camera.I.screen.width = width
      camera.I.screen.height = height

    restartLevel = ->
      engine.objects().invoke "destroy"

      engine.delay 0.25, ->
        engine.add "Player",
          x: width/2
          y: height/2

      levels[currentLevel]()

      engine.add "CameraTarget"

      # TODO: Load lines from level data
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

    nextLevel = ->
      unless transitioning
        transitioning = true

        engine.camera().transition
          name: "line"
          duration: 1
        
        console.log "Next Level!"

        engine.delay 1, ->
          engine.camera().I.transitionActive = null
          currentLevel += 1
          transitioning = false

          if currentLevel < levels.length
            restartLevel()
          else
            alert "you win!"

    engine.on 'update', ->
      Collision.collide "Player", "Goal", (player, goal) ->
        nextLevel()
        player.destroy()
        console.log "colliddin"
        engine.first("CameraTarget").I.target = "Goal"
      , (a, b) ->
        Collision.circular a.circle(), b.circle()

      Collision.collide "Missile", "Wall", (missile, wall) ->
        missile.destroy()

      Collision.collide "Player", "Spike", (player, spike) ->
        restartLevel()

      if engine.first("Player")?.I.y > Arena.height + 64
        restartLevel()

    restartLevel()
