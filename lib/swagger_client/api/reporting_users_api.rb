=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ReportingUsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get user registration info
    # Get user registration counts grouped by time range
    # @param [Hash] opts the optional parameters
    # @option opts [String] :granularity The time duration to aggregate by (default to day)
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [PageAggregateCountResource]
    def executive_revenue_item_sales_using_get1(opts = {})
      data, _status_code, _headers = executive_revenue_item_sales_using_get1_with_http_info(opts)
      return data
    end

    # Get user registration info
    # Get user registration counts grouped by time range
    # @param [Hash] opts the optional parameters
    # @option opts [String] :granularity The time duration to aggregate by
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [Array<(PageAggregateCountResource, Fixnum, Hash)>] PageAggregateCountResource data, response status code and response headers
    def executive_revenue_item_sales_using_get1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingUsersApi.executive_revenue_item_sales_using_get1 ..."
      end
      if opts[:'granularity'] && !['millisecond', 'second', 'minute', 'hour', 'day', 'week', 'month', 'year'].include?(opts[:'granularity'])
        fail ArgumentError, 'invalid value for "granularity", must be one of millisecond, second, minute, hour, day, week, month, year'
      end
      # resource path
      local_var_path = "/reporting/users/registrations".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'granularity'] = opts[:'granularity'] if !opts[:'granularity'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageAggregateCountResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingUsersApi#executive_revenue_item_sales_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
