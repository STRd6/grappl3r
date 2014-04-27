Grappl3r
========

    require "./setup"
    require "./duct_tape"

    {width, height} = require "./pixie"
    Line = require "./lib/line"

    {Resource, Collision} = require "dust"
    {Music, Sound} = Resource

    levels = require "./levels"

    Music.play "bg"

    currentLevel = 0

    loadingBar = engine.add
      x: width/2
      y: 3 * height/4
      width: 0
      height: height / 2
      color: "white"
    
    loading = engine.add
      spriteName: "loading"
      x: width/2
      y: height/2

    do (I=loading.I, self=loading) ->
      self.on "update", ->
        I.rotation = I.age / 2

    Resource.add require "./resources"

    Resource.preload
      progress: (percent) ->
        loadingBar.I.width = percent * width
      complete: ->
        restartLevel()

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

    global.restartLevel = ->
      engine.objects().invoke "destroy"

      engine.add "Player",
        x: 50
        y: 50

      levels[currentLevel]()

      engine.add "CameraTarget"

    nextLevel = ->
      unless transitioning
        transitioning = true

        engine.camera().transition
          name: "line"
          duration: 1

        engine.delay 1, ->
          engine.camera().I.transitionActive = null
          currentLevel += 1
          transitioning = false

          if currentLevel < levels.length
            restartLevel()
          else
            alert "you win!"

    previousLevel = ->
      currentLevel -= 1
      restartLevel()

    engine.on 'update', ->
      Collision.collide "Player", "Goal", (player, goal) ->
        nextLevel()
        Sound.play "munch"
        player.destroy()
        engine.first("CameraTarget").I.target = "Goal"
      , (a, b) ->
        Collision.circular a.circle(), b.circle()

      Collision.collide "Player", "Trap", (player, trap) ->
        player.destroy()
        engine.first("CameraTarget").I.initialPosition = player.position()
        Sound.play "nasty"

        engine.flash
          color: "#002"
          duration: 0.25

        engine.delay 1, ->
          restartLevel()

      , (a, b) ->
        Collision.circular a.circle(), b.circle()

      if engine.first("Player")?.I.y > Arena.height + 2000
        restartLevel()

    engine.on "update", ->
      if justPressed.f9
        previousLevel()
      
      if justPressed.f10
        nextLevel()
