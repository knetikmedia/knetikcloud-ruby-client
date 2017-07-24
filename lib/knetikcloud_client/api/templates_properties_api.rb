=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module KnetikCloudClient
  class TemplatesPropertiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get details for a template property type
    # 
    # @param type type
    # @param [Hash] opts the optional parameters
    # @return [PropertyFieldListResource]
    def get_template_property_type(type, opts = {})
      data, _status_code, _headers = get_template_property_type_with_http_info(type, opts)
      return data
    end

    # Get details for a template property type
    # 
    # @param type type
    # @param [Hash] opts the optional parameters
    # @return [Array<(PropertyFieldListResource, Fixnum, Hash)>] PropertyFieldListResource data, response status code and response headers
    def get_template_property_type_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplatesPropertiesApi.get_template_property_type ..."
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling TemplatesPropertiesApi.get_template_property_type"
      end
      # resource path
      local_var_path = "/templates/properties/{type}".sub('{' + 'type' + '}', type.to_s)

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
        :return_type => 'PropertyFieldListResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesPropertiesApi#get_template_property_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List template property types
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<PropertyFieldListResource>]
    def get_template_property_types(opts = {})
      data, _status_code, _headers = get_template_property_types_with_http_info(opts)
      return data
    end

    # List template property types
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PropertyFieldListResource>, Fixnum, Hash)>] Array<PropertyFieldListResource> data, response status code and response headers
    def get_template_property_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TemplatesPropertiesApi.get_template_property_types ..."
      end
      # resource path
      local_var_path = "/templates/properties"

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
        :return_type => 'Array<PropertyFieldListResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesPropertiesApi#get_template_property_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
