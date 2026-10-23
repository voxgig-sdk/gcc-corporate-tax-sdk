# GccCorporateTax SDK utility: make_context
require_relative '../core/context'
module GccCorporateTaxUtilities
  MakeContext = ->(ctxmap, basectx) {
    GccCorporateTaxContext.new(ctxmap, basectx)
  }
end
