# StarTrek SDK exists test

require "minitest/autorun"
require_relative "../StarTrek_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = StarTrekSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
