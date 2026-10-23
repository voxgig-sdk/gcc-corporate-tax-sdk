# GccCorporateTax SDK utility registration
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
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

GccCorporateTaxUtility.registrar = ->(u) {
  u.clean = GccCorporateTaxUtilities::Clean
  u.clean_add = GccCorporateTaxUtilities::CleanAdd
  u.clean_explain = GccCorporateTaxUtilities::CleanExplain
  u.done = GccCorporateTaxUtilities::Done
  u.make_error = GccCorporateTaxUtilities::MakeError
  u.feature_add = GccCorporateTaxUtilities::FeatureAdd
  u.feature_hook = GccCorporateTaxUtilities::FeatureHook
  u.feature_init = GccCorporateTaxUtilities::FeatureInit
  u.fetcher = GccCorporateTaxUtilities::Fetcher
  u.make_fetch_def = GccCorporateTaxUtilities::MakeFetchDef
  u.make_context = GccCorporateTaxUtilities::MakeContext
  u.make_options = GccCorporateTaxUtilities::MakeOptions
  u.make_request = GccCorporateTaxUtilities::MakeRequest
  u.make_response = GccCorporateTaxUtilities::MakeResponse
  u.make_result = GccCorporateTaxUtilities::MakeResult
  u.make_point = GccCorporateTaxUtilities::MakePoint
  u.make_spec = GccCorporateTaxUtilities::MakeSpec
  u.make_url = GccCorporateTaxUtilities::MakeUrl
  u.param = GccCorporateTaxUtilities::Param
  u.prepare_auth = GccCorporateTaxUtilities::PrepareAuth
  u.prepare_body = GccCorporateTaxUtilities::PrepareBody
  u.prepare_headers = GccCorporateTaxUtilities::PrepareHeaders
  u.prepare_method = GccCorporateTaxUtilities::PrepareMethod
  u.prepare_params = GccCorporateTaxUtilities::PrepareParams
  u.prepare_path = GccCorporateTaxUtilities::PreparePath
  u.prepare_query = GccCorporateTaxUtilities::PrepareQuery
  u.graphql_body = GccCorporateTaxUtilities::GraphqlBody
  u.graphql_errors = GccCorporateTaxUtilities::GraphqlErrors
  u.result_basic = GccCorporateTaxUtilities::ResultBasic
  u.result_body = GccCorporateTaxUtilities::ResultBody
  u.result_headers = GccCorporateTaxUtilities::ResultHeaders
  u.transform_request = GccCorporateTaxUtilities::TransformRequest
  u.transform_response = GccCorporateTaxUtilities::TransformResponse
}
