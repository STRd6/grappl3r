{defaults} = require "util"
Line = require "../lib/line"

{Resource:{Sprite, Sound}} = require "dust"

module.exports = (I, self) ->
  defaults I,
    grapplingHooks: [0, 1].map (n) ->
      id: n
      grappleStart: null
      grappleDirection: null
      grappleAttached: null
      grappleLength: 0
      grappleRate: 8000
      maxLength: 2400

  hook = (n=0) ->
    I.grapplingHooks[n]

  hooks = ->
    I.grapplingHooks

  checkGrappleHits = (hook, elapsedTime) ->
    if hook.grappleLength > hook.maxLength
      ungrapple(hook)
      return

    source = hook.grappleStart

    start = grapplePosition(hook)
    velocityLine = Line
      start: start
      end: start.add(hook.grappleDirection.scale(hook.grappleRate * elapsedTime))

    [nearestHit, line] = engine.lineCollision(velocityLine)
    if nearestHit
      Sound.play "clamp"
      hook.grappleAttached = nearestHit

  grapplePosition = (hook) ->
    hook.grappleAttached or
      hook.grappleStart.add(hook.grappleDirection.scale(hook.grappleLength))

  grappleTargetDirection = (hook) ->
    I.aimDirections[hook.id]

  grapple = (hook, elapsedTime) ->
    hook.grappleStart ||= self.position()
    hook.grappleDirection ||= grappleTargetDirection(hook) # TODO: Per hook
    hook.grappleLength += hook.grappleRate * elapsedTime

  ungrapple = (hook) ->
    hook.grappleStart = null
    hook.grappleDirection = null
    hook.grappleAttached = null
    hook.grappleLength = 0

  grappleDirection = (hook) ->
    if hook.grappleAttached
      hook.grappleAttached.subtract(self.position())
    else
      hook.grappleDirection

  hookSprite = Sprite.loadByName "hands"
  chainSprite = Sprite.loadByName "chain"

  drawHook = (canvas, p, d=0) ->
    canvas.withTransform Matrix.translation(p.x, p.y), ->
      canvas.withTransform Matrix.rotation(d), ->
        hookSprite.draw canvas, -hookSprite.width/2, -hookSprite.height/2

  drawChain = (canvas, start, end) ->
    pattern = canvas.createPattern(chainSprite.image, "repeat")

    canvas.drawLine
      color: pattern
      start: start
      end: end
      width: 30

  self.on 'afterTransform', (canvas) ->
    hooks().each (hook) ->
      if hook.grappleAttached
        start = self.position()
        drawChain(canvas, start, hook.grappleAttached)
        drawHook canvas, hook.grappleAttached, Point.direction(start, hook.grappleAttached)

      else if hook.grappleDirection
        start = self.position()
        drawChain(canvas, start, hook.grappleStart.add(hook.grappleDirection.norm(hook.grappleLength)))

  self.extend
    grapplePhysics: (elapsedTime) ->
      hooks().each (hook, i) ->
        if I.grappleTriggers[i]
          if hook.grappleAttached
            # Apply grappling hook force
            direction = grappleDirection(hook)

            # Elasticity
            length = Math.min(direction.length() / 40, 10)

            force = direction.norm(length * 1000 * elapsedTime)

            I.velocity.x += force.x
            I.velocity.y += force.y
          else
            Sound.play "chain"
            grapple(hook, elapsedTime)
            checkGrappleHits(hook, elapsedTime)
        else
          ungrapple(hook)
