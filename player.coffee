{defaults} = require "util"
{GameObject, Resource:{Sound}} = require "dust"

module.exports = Player = (I={}) ->
  defaults I,
    controller: 0
    color: "#0A0"
    radius: 20
    spriteName: "hotdog"
    scale: 0.25

  self = GameObject(I)

  self.on "update", (elapsedTime) ->
    self.processInput(elapsedTime)
    self.grapplePhysics(elapsedTime)
    self.physics(elapsedTime)

    I.rotation = I.velocity.direction()

  # self.include "Debuggable"
  self.include Player.Grappler
  self.include Player.Controller
  self.include Player.Input
  self.include Player.Physics

  # self.debug
  #   filter: "changed"

  self

Player.Grappler = require "./player/grappler"
Player.Controller = require "./player/controller"
Player.Input = require "./player/input"
Player.Physics = require "./player/physics"
