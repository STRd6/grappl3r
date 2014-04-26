{GameObject} = require "dust"
{defaults} = require "util"

module.exports = (I={}) ->
  defaults I,
    color: "rgba(255, 0, 255, 0.75)"
    target: "Player"
    maxSpeed: 6000
    lead: 0.25

  self = GameObject(I)

  targetPosition = null
  self.on "draw", (canvas) ->

    if targetPosition
      p = targetPosition.subtract self.position()
      canvas.drawCircle
        color: "rgba(0, 255, 0, 0.75)"
        radius: 10
        position: p

  t90 = 0.5
  focusOn = (target, elapsedTime) ->
    dampingFactor = 5
    c = elapsedTime * 3.75 / t90
    if c >= 1
      # Spring is configured to be too intense, just snap to target
      self.position(target)
      I.velocity = Point(0, 0)
    else
      delta = target.subtract(self.position())

      force = delta.subtract(I.velocity.scale(dampingFactor))
      self.position(self.position().add(I.velocity.scale(c).clamp(I.maxSpeed)))
      I.velocity = I.velocity.add(force.scale(c))

  self.on "update", (dt) ->
    if target = engine.first(I.target)
      targetPosition = target.position()
      targetVelocity = target.velocity()

      targetPosition = targetPosition.add(targetVelocity.scale(I.lead))

      # Camera should lead target's position by a multiple of the targets velocity
      focusOn targetPosition, dt

  return self
