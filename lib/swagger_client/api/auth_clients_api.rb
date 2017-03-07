=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class AuthClientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new client
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [ClientResource] :client_resource The client resource object
    # @return [ClientResource]
    def create_client(opts = {})
      data, _status_code, _headers = create_client_with_http_info(opts)
      return data
    end

    # Create a new client
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [ClientResource] :client_resource The client resource object
    # @return [Array<(ClientResource, Fixnum, Hash)>] ClientResource data, response status code and response headers
    def create_client_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.create_client ..."
      end
      # resource path
      local_var_path = "/auth/clients".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'client_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#create_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_client(client_key, opts = {})
      delete_client_with_http_info(client_key, opts)
      return nil
    end

    # Delete a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_client_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.delete_client ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthClientsApi.delete_client" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#delete_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @return [ClientResource]
    def get_client(client_key, opts = {})
      data, _status_code, _headers = get_client_with_http_info(client_key, opts)
      return data
    end

    # Get a single client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientResource, Fixnum, Hash)>] ClientResource data, response status code and response headers
    def get_client_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.get_client ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthClientsApi.get_client" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

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
        :return_type => 'ClientResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#get_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List available client grant types
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<GrantTypeResource>]
    def get_client_grant_types(opts = {})
      data, _status_code, _headers = get_client_grant_types_with_http_info(opts)
      return data
    end

    # List available client grant types
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GrantTypeResource>, Fixnum, Hash)>] Array<GrantTypeResource> data, response status code and response headers
    def get_client_grant_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.get_client_grant_types ..."
      end
      # resource path
      local_var_path = "/auth/clients/grant-types".sub('{format}','json')

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
        :return_type => 'Array<GrantTypeResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#get_client_grant_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search clients
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceClientResource]
    def get_clients(opts = {})
      data, _status_code, _headers = get_clients_with_http_info(opts)
      return data
    end

    # List and search clients
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceClientResource, Fixnum, Hash)>] PageResourceClientResource data, response status code and response headers
    def get_clients_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.get_clients ..."
      end
      # resource path
      local_var_path = "/auth/clients".sub('{format}','json')

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceClientResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#get_clients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set grant types for a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :grant_list A list of unique grant types
    # @return [nil]
    def set_client_grant_types(client_key, opts = {})
      set_client_grant_types_with_http_info(client_key, opts)
      return nil
    end

    # Set grant types for a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :grant_list A list of unique grant types
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_client_grant_types_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.set_client_grant_types ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthClientsApi.set_client_grant_types" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}/grant-types".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'grant_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#set_client_grant_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set redirect uris for a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :redirect_list A list of unique redirect uris
    # @return [nil]
    def set_client_redirect_uris(client_key, opts = {})
      set_client_redirect_uris_with_http_info(client_key, opts)
      return nil
    end

    # Set redirect uris for a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :redirect_list A list of unique redirect uris
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_client_redirect_uris_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.set_client_redirect_uris ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthClientsApi.set_client_redirect_uris" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}/redirect-uris".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'redirect_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#set_client_redirect_uris\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [ClientResource] :client_resource The client resource object
    # @return [ClientResource]
    def update_client(client_key, opts = {})
      data, _status_code, _headers = update_client_with_http_info(client_key, opts)
      return data
    end

    # Update a client
    # 
    # @param client_key The key of the client
    # @param [Hash] opts the optional parameters
    # @option opts [ClientResource] :client_resource The client resource object
    # @return [Array<(ClientResource, Fixnum, Hash)>] ClientResource data, response status code and response headers
    def update_client_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthClientsApi.update_client ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthClientsApi.update_client" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'client_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthClientsApi#update_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
