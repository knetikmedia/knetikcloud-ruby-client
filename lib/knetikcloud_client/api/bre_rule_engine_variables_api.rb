=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
  class BRERuleEngineVariablesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of variable types available
    # Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.
    # @param [Hash] opts the optional parameters
    # @return [Array<VariableTypeResource>]
    def get_bre_variable_types(opts = {})
      data, _status_code, _headers = get_bre_variable_types_with_http_info(opts)
      return data
    end

    # Get a list of variable types available
    # Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<VariableTypeResource>, Fixnum, Hash)>] Array<VariableTypeResource> data, response status code and response headers
    def get_bre_variable_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineVariablesApi.get_bre_variable_types ..."
      end
      # resource path
      local_var_path = "/bre/variable-types"

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
        :return_type => 'Array<VariableTypeResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineVariablesApi#get_bre_variable_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
