module.exports = (I, self) ->
  self.extend
    processInput: (dt) ->
      I.grappleTriggers = [0, 1].map (n) ->
        self.triggerPosition(n)

      I.aimDirections = [0, 1].map (n) ->
        self.controllerPosition(n)
