# StarTrek SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

StarTrekUtility.registrar = ->(u) {
  u.clean = StarTrekUtilities::Clean
  u.done = StarTrekUtilities::Done
  u.make_error = StarTrekUtilities::MakeError
  u.feature_add = StarTrekUtilities::FeatureAdd
  u.feature_hook = StarTrekUtilities::FeatureHook
  u.feature_init = StarTrekUtilities::FeatureInit
  u.fetcher = StarTrekUtilities::Fetcher
  u.make_fetch_def = StarTrekUtilities::MakeFetchDef
  u.make_context = StarTrekUtilities::MakeContext
  u.make_options = StarTrekUtilities::MakeOptions
  u.make_request = StarTrekUtilities::MakeRequest
  u.make_response = StarTrekUtilities::MakeResponse
  u.make_result = StarTrekUtilities::MakeResult
  u.make_point = StarTrekUtilities::MakePoint
  u.make_spec = StarTrekUtilities::MakeSpec
  u.make_url = StarTrekUtilities::MakeUrl
  u.param = StarTrekUtilities::Param
  u.prepare_auth = StarTrekUtilities::PrepareAuth
  u.prepare_body = StarTrekUtilities::PrepareBody
  u.prepare_headers = StarTrekUtilities::PrepareHeaders
  u.prepare_method = StarTrekUtilities::PrepareMethod
  u.prepare_params = StarTrekUtilities::PrepareParams
  u.prepare_path = StarTrekUtilities::PreparePath
  u.prepare_query = StarTrekUtilities::PrepareQuery
  u.result_basic = StarTrekUtilities::ResultBasic
  u.result_body = StarTrekUtilities::ResultBody
  u.result_headers = StarTrekUtilities::ResultHeaders
  u.transform_request = StarTrekUtilities::TransformRequest
  u.transform_response = StarTrekUtilities::TransformResponse
}
