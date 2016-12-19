=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class AuthRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [nil]
    def assign_client_roles_using_put(client_key, opts = {})
      assign_client_roles_using_put_with_http_info(client_key, opts)
      return nil
    end

    # Set roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def assign_client_roles_using_put_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.assign_client_roles_using_put ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthRolesApi.assign_client_roles_using_put" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}/roles".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'roles_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#assign_client_roles_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set permissions for a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :permissions_list The list of unique permissions
    # @return [nil]
    def assign_permissions_using_put(role, opts = {})
      assign_permissions_using_put_with_http_info(role, opts)
      return nil
    end

    # Set permissions for a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :permissions_list The list of unique permissions
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def assign_permissions_using_put_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.assign_permissions_using_put ..."
      end
      # verify the required parameter 'role' is set
      fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.assign_permissions_using_put" if role.nil?
      # resource path
      local_var_path = "/auth/roles/{role}/permissions".sub('{format}','json').sub('{' + 'role' + '}', role.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'permissions_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#assign_permissions_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [nil]
    def assign_user_roles_external_using_put(user_id, opts = {})
      assign_user_roles_external_using_put_with_http_info(user_id, opts)
      return nil
    end

    # Set roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def assign_user_roles_external_using_put_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.assign_user_roles_external_using_put ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthRolesApi.assign_user_roles_external_using_put" if user_id.nil?
      # resource path
      local_var_path = "/auth/users/{user_id}/roles".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'roles_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#assign_user_roles_external_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new role
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [RoleResource]
    def create_role_using_post(opts = {})
      data, _status_code, _headers = create_role_using_post_with_http_info(opts)
      return data
    end

    # Create a new role
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def create_role_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.create_role_using_post ..."
      end
      # resource path
      local_var_path = "/auth/roles".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'role_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#create_role_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes role from users/clients
    # @return [nil]
    def delete_role_using_delete(role, opts = {})
      delete_role_using_delete_with_http_info(role, opts)
      return nil
    end

    # Delete a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes role from users/clients
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_using_delete_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.delete_role_using_delete ..."
      end
      # verify the required parameter 'role' is set
      fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.delete_role_using_delete" if role.nil?
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{format}','json').sub('{' + 'role' + '}', role.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        @api_client.config.logger.debug "API called: AuthRolesApi#delete_role_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @return [Array<RoleResource>]
    def get_client_roles_using_get(client_key, opts = {})
      data, _status_code, _headers = get_client_roles_using_get_with_http_info(client_key, opts)
      return data
    end

    # Get roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RoleResource>, Fixnum, Hash)>] Array<RoleResource> data, response status code and response headers
    def get_client_roles_using_get_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_client_roles_using_get ..."
      end
      # verify the required parameter 'client_key' is set
      fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthRolesApi.get_client_roles_using_get" if client_key.nil?
      # resource path
      local_var_path = "/auth/clients/{client_key}/roles".sub('{format}','json').sub('{' + 'client_key' + '}', client_key.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'Array<RoleResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_client_roles_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @return [RoleResource]
    def get_role_using_get(role, opts = {})
      data, _status_code, _headers = get_role_using_get_with_http_info(role, opts)
      return data
    end

    # Get a single role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def get_role_using_get_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_role_using_get ..."
      end
      # verify the required parameter 'role' is set
      fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.get_role_using_get" if role.nil?
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{format}','json').sub('{' + 'role' + '}', role.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'RoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_role_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search roles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageRoleResource]
    def get_roles_using_get(opts = {})
      data, _status_code, _headers = get_roles_using_get_with_http_info(opts)
      return data
    end

    # List and search roles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageRoleResource, Fixnum, Hash)>] PageRoleResource data, response status code and response headers
    def get_roles_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_roles_using_get ..."
      end
      # resource path
      local_var_path = "/auth/roles".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'PageRoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_roles_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<RoleResource>]
    def get_user_roles_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_roles_using_get_with_http_info(user_id, opts)
      return data
    end

    # Get roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RoleResource>, Fixnum, Hash)>] Array<RoleResource> data, response status code and response headers
    def get_user_roles_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_user_roles_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthRolesApi.get_user_roles_using_get" if user_id.nil?
      # resource path
      local_var_path = "/auth/users/{user_id}/roles".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'Array<RoleResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_user_roles_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [nil]
    def update_role_using_put(role, opts = {})
      update_role_using_put_with_http_info(role, opts)
      return nil
    end

    # Update a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_role_using_put_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.update_role_using_put ..."
      end
      # verify the required parameter 'role' is set
      fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.update_role_using_put" if role.nil?
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{format}','json').sub('{' + 'role' + '}', role.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'role_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#update_role_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
