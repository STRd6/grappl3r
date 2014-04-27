{defaults} = require "util"

module.exports = Editor = (I, self) ->
  defaults I,
    editMode: false

  tools = [
    Editor.Tool.Create()
    Editor.Tool.Pointer()
  ]

  selectedToolIndex = 0
  currentTool = tools[selectedToolIndex]

  changeTool = (delta) ->
    selectedToolIndex += delta

    currentTool = tools.wrap(selectedToolIndex)

  moveCamera = (delta) ->
    engine.first("CameraTarget").I.initialPosition = engine.first("CameraTarget").I.initialPosition.add(delta)

  self.on "update", ->
    if justPressed.f2
      I.editMode = !I.editMode
    
    if justPressed.f3
      self.saveLevel()

    if I.editMode
      engine.find("Player").invoke "destroy"

      engine.I.backgroundColor = "#EEA"

      if justPressed.pageup
        changeTool(+1)
      if justPressed.pagedown
        changeTool(-1)
      
      if justPressed.up
        moveCamera Point(0, -100)
      if justPressed.down
        moveCamera Point(0, 100)
      if justPressed.left
        moveCamera Point(-100, 0)
      if justPressed.right
        moveCamera Point(100, 0)

      camera = engine.camera()
      worldPosition = camera.screenToWorld(mousePosition)

      currentTool.updatePosition(worldPosition)

      if mousePressed.left
        currentTool.pressed(worldPosition)

      if mouseReleased.left
        currentTool.released(worldPosition)

      currentTool.trigger "update"

    else
      engine.I.backgroundColor = "#58C4F5"

  self.on "draw", (canvas) ->
    if I.editMode
      canvas.drawText
        x: 20
        y: 120
        text: currentTool.I.name
        color: "#000"

      currentTool.draw(canvas)

  self.extend
    saveLevel: ->
      lines = engine.first("Wall").lines()

      levelData = JSON.stringify(lines)

      console.log levelData

Editor.Tool =
  Create: require "./editor/create"
  Pointer: require "./editor/pointer"
