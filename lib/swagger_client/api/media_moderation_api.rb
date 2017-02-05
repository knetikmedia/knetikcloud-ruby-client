=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class MediaModerationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a flag report
    # 
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_flag_report_using_get(id, opts = {})
      get_flag_report_using_get_with_http_info(id, opts)
      return nil
    end

    # Get a flag report
    # 
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_flag_report_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.get_flag_report_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaModerationApi.get_flag_report_using_get" if id.nil?
      # resource path
      local_var_path = "/moderation/reports/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#get_flag_report_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a page of flag reports
    # Context can be either a free-form string or a pre-defined context name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :exclude_resolved Ignore resolved context (default to true)
    # @option opts [String] :filter_context Filter by moderation context
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceFlagReportResource]
    def get_flags_report_using_get(opts = {})
      data, _status_code, _headers = get_flags_report_using_get_with_http_info(opts)
      return data
    end

    # Returns a page of flag reports
    # Context can be either a free-form string or a pre-defined context name
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :exclude_resolved Ignore resolved context
    # @option opts [String] :filter_context Filter by moderation context
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceFlagReportResource, Fixnum, Hash)>] PageResourceFlagReportResource data, response status code and response headers
    def get_flags_report_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.get_flags_report_using_get ..."
      end
      # resource path
      local_var_path = "/moderation/reports".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'exclude_resolved'] = opts[:'exclude_resolved'] if !opts[:'exclude_resolved'].nil?
      query_params[:'filter_context'] = opts[:'filter_context'] if !opts[:'filter_context'].nil?
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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceFlagReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#get_flags_report_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a flag report
    # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @option opts [FlagReportResource] :flag_report_resource The new flag report
    # @return [nil]
    def set_flag_resolution_using_put(id, opts = {})
      set_flag_resolution_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a flag report
    # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason.
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @option opts [FlagReportResource] :flag_report_resource The new flag report
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_flag_resolution_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.set_flag_resolution_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaModerationApi.set_flag_resolution_using_put" if id.nil?
      # resource path
      local_var_path = "/moderation/reports/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'flag_report_resource'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#set_flag_resolution_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
