module.exports = (I, self) ->

  self.extend
    controller: ->
      # engine.controller(I.controller)

    triggerPosition: (n=0) ->
      button = ["LT", "RT"][n]

      # self.controller().buttonDown button
      if n is 0
        mouseDown.left

    controllerPosition: (stick=0) ->
      p = engine.camera().screenToWorld(mousePosition).subtract(self.position()).norm()

      if p.x is 0 and p.y is 0
        p.x = 1

      p
