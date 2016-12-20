=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class BRERuleEngineEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Fire a new event, based on an existing trigger
    # Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.
    # @param [Hash] opts the optional parameters
    # @option opts [BreEvent] :bre_event The BRE event object
    # @return [nil]
    def fire_event_using_post(opts = {})
      fire_event_using_post_with_http_info(opts)
      return nil
    end

    # Fire a new event, based on an existing trigger
    # Parameters within the event must match names and types from the trigger. Actual rule execution is asynchornous.
    # @param [Hash] opts the optional parameters
    # @option opts [BreEvent] :bre_event The BRE event object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def fire_event_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineEventsApi.fire_event_using_post ..."
      end
      # resource path
      local_var_path = "/bre/events".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'bre_event'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineEventsApi#fire_event_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
