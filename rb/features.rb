# StarTrek SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module StarTrekFeatures
  def self.make_feature(name)
    case name
    when "base"
      StarTrekBaseFeature.new
    when "test"
      StarTrekTestFeature.new
    else
      StarTrekBaseFeature.new
    end
  end
end
