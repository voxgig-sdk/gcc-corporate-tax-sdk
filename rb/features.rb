# GccCorporateTax SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module GccCorporateTaxFeatures
  def self.make_feature(name)
    case name
    when "base"
      GccCorporateTaxBaseFeature.new
    when "ratelimit"
      GccCorporateTaxRatelimitFeature.new
    when "retry"
      GccCorporateTaxRetryFeature.new
    when "test"
      GccCorporateTaxTestFeature.new
    when "timeout"
      GccCorporateTaxTimeoutFeature.new
    else
      GccCorporateTaxBaseFeature.new
    end
  end
end
