=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
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
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceAggregateCountResource]
    def get_user_registrations(opts = {})
      data, _status_code, _headers = get_user_registrations_with_http_info(opts)
      return data
    end

    # Get user registration info
    # Get user registration counts grouped by time range
    # @param [Hash] opts the optional parameters
    # @option opts [String] :granularity The time duration to aggregate by
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceAggregateCountResource, Fixnum, Hash)>] PageResourceAggregateCountResource data, response status code and response headers
    def get_user_registrations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingUsersApi.get_user_registrations ..."
      end
      if opts[:'granularity'] && !['millisecond', 'second', 'minute', 'hour', 'day', 'week', 'month', 'year'].include?(opts[:'granularity'])
        fail ArgumentError, 'invalid value for "granularity", must be one of millisecond, second, minute, hour, day, week, month, year'
      end
      # resource path
      local_var_path = "/reporting/users/registrations"

      # query parameters
      query_params = {}
      query_params[:'granularity'] = opts[:'granularity'] if !opts[:'granularity'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'PageResourceAggregateCountResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingUsersApi#get_user_registrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
