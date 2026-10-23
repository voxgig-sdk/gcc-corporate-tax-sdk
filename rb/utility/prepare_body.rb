# GccCorporateTax SDK utility: prepare_body
require_relative 'media'
module GccCorporateTaxUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return GccCorporateTaxUtilities.raw_body(ctx.reqdata) if GccCorporateTaxUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
