Grappl3r
========

    require "./setup"

    {Collision} = require "dust"
    {width, height} = require "./pixie"

    global.player = engine.add "Player"

    restartLevel = ->
      player.destroy()
      
      console.log "rastarting"

      window.player = engine.add "Player"
    
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
    
      if player?.I.y > height + 64
        restartLevel()
