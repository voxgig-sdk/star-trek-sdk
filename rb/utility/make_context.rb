# StarTrek SDK utility: make_context
require_relative '../core/context'
module StarTrekUtilities
  MakeContext = ->(ctxmap, basectx) {
    StarTrekContext.new(ctxmap, basectx)
  }
end
