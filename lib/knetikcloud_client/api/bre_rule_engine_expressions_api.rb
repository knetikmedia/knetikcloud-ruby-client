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
  class BRERuleEngineExpressionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of 'lookup' type expressions
    # These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).
    # @param [Hash] opts the optional parameters
    # @return [Array<LookupTypeResource>]
    def get_bre_expressions(opts = {})
      data, _status_code, _headers = get_bre_expressions_with_http_info(opts)
      return data
    end

    # Get a list of &#39;lookup&#39; type expressions
    # These are expression types that take a second expression as input and produce a value. These can be used in addition to the standard types, like parameter, global and constant (see BRE documentation for details).
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LookupTypeResource>, Fixnum, Hash)>] Array<LookupTypeResource> data, response status code and response headers
    def get_bre_expressions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineExpressionsApi.get_bre_expressions ..."
      end
      # resource path
      local_var_path = "/bre/expressions/lookup"

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
        :return_type => 'Array<LookupTypeResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineExpressionsApi#get_bre_expressions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
