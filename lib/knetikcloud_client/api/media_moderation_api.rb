=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module KnetikCloudClient
  class MediaModerationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a flag report
    # 
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @return [FlagReportResource]
    def get_moderation_report(id, opts = {})
      data, _status_code, _headers = get_moderation_report_with_http_info(id, opts)
      return data
    end

    # Get a flag report
    # 
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @return [Array<(FlagReportResource, Fixnum, Hash)>] FlagReportResource data, response status code and response headers
    def get_moderation_report_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.get_moderation_report ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MediaModerationApi.get_moderation_report"
      end
      # resource path
      local_var_path = "/moderation/reports/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FlagReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#get_moderation_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    def get_moderation_reports(opts = {})
      data, _status_code, _headers = get_moderation_reports_with_http_info(opts)
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
    def get_moderation_reports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.get_moderation_reports ..."
      end
      # resource path
      local_var_path = "/moderation/reports"

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceFlagReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#get_moderation_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a flag report
    # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @option opts [FlagReportResource] :flag_report_resource The new flag report
    # @return [nil]
    def update_moderation_report(id, opts = {})
      update_moderation_report_with_http_info(id, opts)
      return nil
    end

    # Update a flag report
    # Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of &#39;banned&#39; you will need to pass the reason.
    # @param id The flag report id
    # @param [Hash] opts the optional parameters
    # @option opts [FlagReportResource] :flag_report_resource The new flag report
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_moderation_report_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaModerationApi.update_moderation_report ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MediaModerationApi.update_moderation_report"
      end
      # resource path
      local_var_path = "/moderation/reports/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaModerationApi#update_moderation_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
