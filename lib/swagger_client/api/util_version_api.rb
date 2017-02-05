=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UtilVersionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get current version info
    # 
    # @param [Hash] opts the optional parameters
    # @return [Version]
    def get_using_get3(opts = {})
      data, _status_code, _headers = get_using_get3_with_http_info(opts)
      return data
    end

    # Get current version info
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Version, Fixnum, Hash)>] Version data, response status code and response headers
    def get_using_get3_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilVersionApi.get_using_get3 ..."
      end
      # resource path
      local_var_path = "/version".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Version')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilVersionApi#get_using_get3\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
