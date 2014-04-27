{GameObject} = require "dust"
{defaults, extend} = require "util"

module.exports = (I={}) ->
  defaults I,
    lines: []
    color: "#000"

  self = GameObject(I).extend
    addLine: (line) ->
      I.lines.push line

  self.attrReader "lines"

  self.unbind ".Drawable"
  # Lines are stored in world-space, so no need to apply our own transform
  self.on "afterTransform", (canvas) ->
    # TODO: Only draw in editor mode
    if engine.I.editMode
      I.lines.each (line) ->
        canvas.drawLine extend {}, line,
          color: I.color

  return self
