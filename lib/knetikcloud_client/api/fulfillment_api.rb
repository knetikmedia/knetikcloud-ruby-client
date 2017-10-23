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
  class FulfillmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a fulfillment type
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [FulfillmentType] :type The fulfillment type
    # @return [FulfillmentType]
    def create_fulfillment_type(opts = {})
      data, _status_code, _headers = create_fulfillment_type_with_http_info(opts)
      return data
    end

    # Create a fulfillment type
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [FulfillmentType] :type The fulfillment type
    # @return [Array<(FulfillmentType, Fixnum, Hash)>] FulfillmentType data, response status code and response headers
    def create_fulfillment_type_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FulfillmentApi.create_fulfillment_type ..."
      end
      # resource path
      local_var_path = "/store/fulfillment/types"

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
      post_body = @api_client.object_to_http_body(opts[:'type'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'FulfillmentType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentApi#create_fulfillment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_fulfillment_type(id, opts = {})
      delete_fulfillment_type_with_http_info(id, opts)
      return nil
    end

    # Delete a fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_fulfillment_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FulfillmentApi.delete_fulfillment_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FulfillmentApi.delete_fulfillment_type"
      end
      # resource path
      local_var_path = "/store/fulfillment/types/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentApi#delete_fulfillment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @return [FulfillmentType]
    def get_fulfillment_type(id, opts = {})
      data, _status_code, _headers = get_fulfillment_type_with_http_info(id, opts)
      return data
    end

    # Get a single fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @return [Array<(FulfillmentType, Fixnum, Hash)>] FulfillmentType data, response status code and response headers
    def get_fulfillment_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FulfillmentApi.get_fulfillment_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FulfillmentApi.get_fulfillment_type"
      end
      # resource path
      local_var_path = "/store/fulfillment/types/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'FulfillmentType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentApi#get_fulfillment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search fulfillment types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceFulfillmentType]
    def get_fulfillment_types(opts = {})
      data, _status_code, _headers = get_fulfillment_types_with_http_info(opts)
      return data
    end

    # List and search fulfillment types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceFulfillmentType, Fixnum, Hash)>] PageResourceFulfillmentType data, response status code and response headers
    def get_fulfillment_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FulfillmentApi.get_fulfillment_types ..."
      end
      # resource path
      local_var_path = "/store/fulfillment/types"

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageResourceFulfillmentType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentApi#get_fulfillment_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @option opts [FulfillmentType] :fulfillment_type The fulfillment type
    # @return [nil]
    def update_fulfillment_type(id, opts = {})
      update_fulfillment_type_with_http_info(id, opts)
      return nil
    end

    # Update a fulfillment type
    # 
    # @param id The id
    # @param [Hash] opts the optional parameters
    # @option opts [FulfillmentType] :fulfillment_type The fulfillment type
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_fulfillment_type_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FulfillmentApi.update_fulfillment_type ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FulfillmentApi.update_fulfillment_type"
      end
      # resource path
      local_var_path = "/store/fulfillment/types/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'fulfillment_type'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FulfillmentApi#update_fulfillment_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
