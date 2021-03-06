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
  class AuthPermissionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new permission
    # <b>Permissions Needed:</b> PERMISSIONS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [PermissionResource] :permission_resource The permission resource object
    # @return [PermissionResource]
    def create_permission(opts = {})
      data, _status_code, _headers = create_permission_with_http_info(opts)
      return data
    end

    # Create a new permission
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [PermissionResource] :permission_resource The permission resource object
    # @return [Array<(PermissionResource, Fixnum, Hash)>] PermissionResource data, response status code and response headers
    def create_permission_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthPermissionsApi.create_permission ..."
      end
      # resource path
      local_var_path = "/auth/permissions"

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
      post_body = @api_client.object_to_http_body(opts[:'permission_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PermissionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthPermissionsApi#create_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a permission
    # <b>Permissions Needed:</b> PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes permission assigned to roles
    # @return [nil]
    def delete_permission(permission, opts = {})
      delete_permission_with_http_info(permission, opts)
      return nil
    end

    # Delete a permission
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force If true, removes permission assigned to roles
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_permission_with_http_info(permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthPermissionsApi.delete_permission ..."
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling AuthPermissionsApi.delete_permission"
      end
      # resource path
      local_var_path = "/auth/permissions/{permission}".sub('{' + 'permission' + '}', permission.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

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
        @api_client.config.logger.debug "API called: AuthPermissionsApi#delete_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single permission
    # <b>Permissions Needed:</b> PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @return [PermissionResource]
    def get_permission(permission, opts = {})
      data, _status_code, _headers = get_permission_with_http_info(permission, opts)
      return data
    end

    # Get a single permission
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @return [Array<(PermissionResource, Fixnum, Hash)>] PermissionResource data, response status code and response headers
    def get_permission_with_http_info(permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthPermissionsApi.get_permission ..."
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling AuthPermissionsApi.get_permission"
      end
      # resource path
      local_var_path = "/auth/permissions/{permission}".sub('{' + 'permission' + '}', permission.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PermissionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthPermissionsApi#get_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search permissions
    # <b>Permissions Needed:</b> PERMISSIONS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to permission:ASC)
    # @return [PageResourcePermissionResource]
    def get_permissions(opts = {})
      data, _status_code, _headers = get_permissions_with_http_info(opts)
      return data
    end

    # List and search permissions
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourcePermissionResource, Fixnum, Hash)>] PageResourcePermissionResource data, response status code and response headers
    def get_permissions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthPermissionsApi.get_permissions ..."
      end
      # resource path
      local_var_path = "/auth/permissions"

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourcePermissionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthPermissionsApi#get_permissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a permission
    # <b>Permissions Needed:</b> PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @option opts [PermissionResource] :permission_resource The permission resource object
    # @return [PermissionResource]
    def update_permission(permission, opts = {})
      data, _status_code, _headers = update_permission_with_http_info(permission, opts)
      return data
    end

    # Update a permission
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; PERMISSIONS_ADMIN
    # @param permission The permission value
    # @param [Hash] opts the optional parameters
    # @option opts [PermissionResource] :permission_resource The permission resource object
    # @return [Array<(PermissionResource, Fixnum, Hash)>] PermissionResource data, response status code and response headers
    def update_permission_with_http_info(permission, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthPermissionsApi.update_permission ..."
      end
      # verify the required parameter 'permission' is set
      if @api_client.config.client_side_validation && permission.nil?
        fail ArgumentError, "Missing the required parameter 'permission' when calling AuthPermissionsApi.update_permission"
      end
      # resource path
      local_var_path = "/auth/permissions/{permission}".sub('{' + 'permission' + '}', permission.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'permission_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PermissionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthPermissionsApi#update_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
