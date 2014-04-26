{defaults} = require "util"
{GameObject, Resource:{Sound}} = require "dust"

module.exports = (I = {}) ->
  jumping = false
  TERMINAL_VELOCITY = 30

  PlayerPhysics =
    air: ->
      if I.falling
        I.velocity.y += I.gravity

      I.facing.y = 0
      I.facing.x = 0

      # Move around based on input
      if keydown.right
        I.facing.x = 1
      if keydown.left
        I.facing.x = -1
      if keydown.up
        I.facing.y = -1
      if keydown.down
        I.facing.y = 1

      unless keydown.up
        I.jumping = false

      if I.velocity.length() > TERMINAL_VELOCITY
        I.velocity = I.velocity.norm(TERMINAL_VELOCITY)

  physics = PlayerPhysics.air

  land = ->
    I.falling = false

    I.velocity.x = I.velocity.x.approach(0, I.friction)

  shoot = ->
    engine.add
      class: "Missile"
      x: I.x
      y: I.y
      direction: I.facing

  grapple = ->
    Sound.play "jump" if I.grappleLength is 0

    I.grappleTarget ||= mousePosition.copy()
    I.grappleLength += 64

  ungrapple = ->
    I.grappleTarget = null
    I.grappleAttached = null
    I.grappleLength = 0

  grappleDirection = ->
    if I.grappleAttached
      I.grappleAttached.subtract(self.position())
    else
      I.grappleTarget.subtract(self.position())

  defaults I,
    facing: Point(0, 0)
    falling: false
    jumping: false
    friction: 8
    grappleLengeth: 100
    gravity: 4
    jumpPower: 25
    width: 16
    height: 16
    x: 40
    y: 40
    velocity: Point(0, 0)

  self = GameObject(I).extend
    circle: ->
      {
        x: I.x
        y: I.y
        radius: 4
      }
    collide: (xOffset, yOffset, className="Wall") ->
      engine.find(className).inject false, (hit, block) ->
        hit || Collision.rectangular(self.bounds(xOffset, yOffset), block.bounds())

    push: (vec) ->
      I.velocity = I.velocity.add(vec)

  self.bind 'afterTransform', (canvas) ->
    if I.grappleAttached
      canvas.drawLine
        color: "red"
        start: self.position()
        end: I.grappleAttached

    else if I.grappleTarget
      canvas.drawLine
        color: "white"
        start: self.position()
        length: I.grappleLength
        direction: grappleDirection()

  self.bind 'afterTransform', (canvas) ->
    if engine.I.debugEnabled
      if I.velocity?
        canvas.withTransform Matrix.translation(I.x, I.y), (canvas) ->            
          canvas.drawRect
            x: 0
            y: -2
            width: I.velocity.x * 10
            height: 4
            color: 'rgba(255, 255, 255, 0.75)'

          canvas.drawRect
            x: -2
            y: 0
            width: 4
            height: I.velocity.y * 10
            color: 'rgba(255, 255, 255, 0.75)'

  self.bind 'update', ->
    # I.actions[action].update()

    # Check if standing on floor
    if self.collide(0, 1)
      land()
    else
      I.falling = true

    if I.grappleAttached
      f = grappleDirection().norm(16)
      I.velocity.x += f.x
      I.velocity.y += f.y

    physics()

    if mouseDown.left
      grapple()
    else
      ungrapple()

    if I.grappleTarget and !I.grappleAttached
      nearestHitDistance = 999999
      nearestHit = null

      p = self.position()
      engine.find("Wall").each (wall) ->
        hit = Collision.rayRectangle p, grappleDirection(), wall.centeredBounds()

        if hit and (d = Point.distance(p, hit)) < nearestHitDistance
          nearestHit = hit
          nearestHitDistance = d

      if nearestHit and nearestHitDistance < I.grappleLength
        I.grappleAttached = nearestHit
        Sound.play "attach"

    #TODO Reduce the # of calls to collides
    I.velocity.x.abs().times ->
      if self.collide(I.velocity.x.sign(), 0)
        I.velocity.x = 0
      else
        I.x += I.velocity.x.sign()

    #TODO Reduce the # of calls to collides
    I.velocity.y.abs().times ->
      if self.collide(0, I.velocity.y.sign())
        I.velocity.y = 0
        I.jumping = false
      else
        I.y += I.velocity.y.sign()

    jumpPressed = false

  self
