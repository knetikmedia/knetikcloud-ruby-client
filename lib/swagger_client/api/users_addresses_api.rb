=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UsersAddressesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Save a new address
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @option opts [SavedAddressResource] :saved_address_resource The new address
    # @return [SavedAddressResource]
    def create_address_using_post(user_id, opts = {})
      data, _status_code, _headers = create_address_using_post_with_http_info(user_id, opts)
      return data
    end

    # Save a new address
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @option opts [SavedAddressResource] :saved_address_resource The new address
    # @return [Array<(SavedAddressResource, Fixnum, Hash)>] SavedAddressResource data, response status code and response headers
    def create_address_using_post_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAddressesApi.create_address_using_post ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAddressesApi.create_address_using_post" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/addresses".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'saved_address_resource'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SavedAddressResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAddressesApi#create_address_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_address_using_delete(user_id, id, opts = {})
      delete_address_using_delete_with_http_info(user_id, id, opts)
      return nil
    end

    # Delete an address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_address_using_delete_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAddressesApi.delete_address_using_delete ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAddressesApi.delete_address_using_delete" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersAddressesApi.delete_address_using_delete" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/addresses/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAddressesApi#delete_address_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @return [SavedAddressResource]
    def get_address_using_get(user_id, id, opts = {})
      data, _status_code, _headers = get_address_using_get_with_http_info(user_id, id, opts)
      return data
    end

    # Get a single address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @return [Array<(SavedAddressResource, Fixnum, Hash)>] SavedAddressResource data, response status code and response headers
    def get_address_using_get_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAddressesApi.get_address_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAddressesApi.get_address_using_get" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersAddressesApi.get_address_using_get" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/addresses/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'SavedAddressResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAddressesApi#get_address_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search addresses
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceSavedAddressResource]
    def get_addresses_using_get(user_id, opts = {})
      data, _status_code, _headers = get_addresses_using_get_with_http_info(user_id, opts)
      return data
    end

    # List and search addresses
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceSavedAddressResource, Fixnum, Hash)>] PageResourceSavedAddressResource data, response status code and response headers
    def get_addresses_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAddressesApi.get_addresses_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAddressesApi.get_addresses_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/addresses".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSavedAddressResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAddressesApi#get_addresses_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @option opts [SavedAddressResource] :saved_address_resource The saved address resource object
    # @return [nil]
    def update_address_using_put(user_id, id, opts = {})
      update_address_using_put_with_http_info(user_id, id, opts)
      return nil
    end

    # Update an address
    # 
    # @param user_id The id of the user
    # @param id The id of the address
    # @param [Hash] opts the optional parameters
    # @option opts [SavedAddressResource] :saved_address_resource The saved address resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_address_using_put_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersAddressesApi.update_address_using_put ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersAddressesApi.update_address_using_put" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersAddressesApi.update_address_using_put" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/addresses/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'saved_address_resource'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersAddressesApi#update_address_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
