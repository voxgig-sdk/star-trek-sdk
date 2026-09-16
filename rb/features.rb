# StarTrek SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module StarTrekFeatures
  def self.make_feature(name)
    case name
    when "base"
      StarTrekBaseFeature.new
    when "ratelimit"
      StarTrekRatelimitFeature.new
    when "retry"
      StarTrekRetryFeature.new
    when "test"
      StarTrekTestFeature.new
    when "timeout"
      StarTrekTimeoutFeature.new
    else
      StarTrekBaseFeature.new
    end
  end
end
