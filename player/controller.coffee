module.exports = (I, self) ->

  self.extend
    controller: ->
      # engine.controller(I.controller)

    triggerPosition: (n=0) ->
      button = ["LT", "RT"][n]

      # self.controller().buttonDown button
      0

    controllerPosition: (stick=0) ->
      Point(1, 0)
      #self.controller().position(stick)
