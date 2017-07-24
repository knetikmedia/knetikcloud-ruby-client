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
  class AuthRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new role
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [RoleResource]
    def create_role(opts = {})
      data, _status_code, _headers = create_role_with_http_info(opts)
      return data
    end

    # Create a new role
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def create_role_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.create_role ..."
      end
      # resource path
      local_var_path = "/auth/roles"

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
        @api_client.config.logger.debug "API called: AuthRolesApi#create_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes role from users/clients
    # @return [nil]
    def delete_role(role, opts = {})
      delete_role_with_http_info(role, opts)
      return nil
    end

    # Delete a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes role from users/clients
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_role_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.delete_role ..."
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.delete_role"
      end
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{' + 'role' + '}', role.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        @api_client.config.logger.debug "API called: AuthRolesApi#delete_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @return [Array<RoleResource>]
    def get_client_roles(client_key, opts = {})
      data, _status_code, _headers = get_client_roles_with_http_info(client_key, opts)
      return data
    end

    # Get roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RoleResource>, Fixnum, Hash)>] Array<RoleResource> data, response status code and response headers
    def get_client_roles_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_client_roles ..."
      end
      # verify the required parameter 'client_key' is set
      if @api_client.config.client_side_validation && client_key.nil?
        fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthRolesApi.get_client_roles"
      end
      # resource path
      local_var_path = "/auth/clients/{client_key}/roles".sub('{' + 'client_key' + '}', client_key.to_s)

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
        :return_type => 'Array<RoleResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_client_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @return [RoleResource]
    def get_role(role, opts = {})
      data, _status_code, _headers = get_role_with_http_info(role, opts)
      return data
    end

    # Get a single role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def get_role_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_role ..."
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.get_role"
      end
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{' + 'role' + '}', role.to_s)

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
        :return_type => 'RoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search roles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceRoleResource]
    def get_roles(opts = {})
      data, _status_code, _headers = get_roles_with_http_info(opts)
      return data
    end

    # List and search roles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceRoleResource, Fixnum, Hash)>] PageResourceRoleResource data, response status code and response headers
    def get_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_roles ..."
      end
      # resource path
      local_var_path = "/auth/roles"

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
        :return_type => 'PageResourceRoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<RoleResource>]
    def get_user_roles(user_id, opts = {})
      data, _status_code, _headers = get_user_roles_with_http_info(user_id, opts)
      return data
    end

    # Get roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RoleResource>, Fixnum, Hash)>] Array<RoleResource> data, response status code and response headers
    def get_user_roles_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.get_user_roles ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthRolesApi.get_user_roles"
      end
      # resource path
      local_var_path = "/auth/users/{user_id}/roles".sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'Array<RoleResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#get_user_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [ClientResource]
    def set_client_roles(client_key, opts = {})
      data, _status_code, _headers = set_client_roles_with_http_info(client_key, opts)
      return data
    end

    # Set roles for a client
    # 
    # @param client_key The client key
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [Array<(ClientResource, Fixnum, Hash)>] ClientResource data, response status code and response headers
    def set_client_roles_with_http_info(client_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.set_client_roles ..."
      end
      # verify the required parameter 'client_key' is set
      if @api_client.config.client_side_validation && client_key.nil?
        fail ArgumentError, "Missing the required parameter 'client_key' when calling AuthRolesApi.set_client_roles"
      end
      # resource path
      local_var_path = "/auth/clients/{client_key}/roles".sub('{' + 'client_key' + '}', client_key.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'roles_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClientResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#set_client_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set permissions for a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :permissions_list The list of unique permissions
    # @return [RoleResource]
    def set_permissions_for_role(role, opts = {})
      data, _status_code, _headers = set_permissions_for_role_with_http_info(role, opts)
      return data
    end

    # Set permissions for a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :permissions_list The list of unique permissions
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def set_permissions_for_role_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.set_permissions_for_role ..."
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.set_permissions_for_role"
      end
      # resource path
      local_var_path = "/auth/roles/{role}/permissions".sub('{' + 'role' + '}', role.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'permissions_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#set_permissions_for_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [UserResource]
    def set_user_roles(user_id, opts = {})
      data, _status_code, _headers = set_user_roles_with_http_info(user_id, opts)
      return data
    end

    # Set roles for a user
    # 
    # @param user_id The user&#39;s id
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :roles_list The list of unique roles
    # @return [Array<(UserResource, Fixnum, Hash)>] UserResource data, response status code and response headers
    def set_user_roles_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.set_user_roles ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthRolesApi.set_user_roles"
      end
      # resource path
      local_var_path = "/auth/users/{user_id}/roles".sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'roles_list'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#set_user_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [RoleResource]
    def update_role(role, opts = {})
      data, _status_code, _headers = update_role_with_http_info(role, opts)
      return data
    end

    # Update a role
    # 
    # @param role The role value
    # @param [Hash] opts the optional parameters
    # @option opts [RoleResource] :role_resource The role resource object
    # @return [Array<(RoleResource, Fixnum, Hash)>] RoleResource data, response status code and response headers
    def update_role_with_http_info(role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthRolesApi.update_role ..."
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling AuthRolesApi.update_role"
      end
      # resource path
      local_var_path = "/auth/roles/{role}".sub('{' + 'role' + '}', role.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'role_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RoleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthRolesApi#update_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
