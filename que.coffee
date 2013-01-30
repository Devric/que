class Que
  constructor: () ->
    me = @
    me.self = @
    me.fn = Array.prototype.slice.call(arguments, 0)
    me.i = 0


  #=== wait for next
  #=================
  step: ->
    self = @self
    next = ->
      self.run()

    @fn[@i++](next) if @i < @fn.length

    @reset()


  #==== non blocking
  #=================
  run: ->
    @fn[@i++]() while @i < @fn.length

    @reset()


  #= reset for loops
  #=================
  reset: ->
    @i = 0 if @i = @fn.length
