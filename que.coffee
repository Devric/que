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
      self.step()

    @fn[@i++](next) if @i < @fn.length


  #==== non blocking
  #=================
  run: ->
    @fn[@i++]() while @i < @fn.length


  #= reset for loops
  #=================
  reset: ->
    @i = 0 if @i == @fn.length
