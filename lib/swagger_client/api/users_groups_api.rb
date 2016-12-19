=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UsersGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Adds a new group in the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [GroupResource] :group_resource The new group
    # @return [GroupResource]
    def add_group_using_post(opts = {})
      data, _status_code, _headers = add_group_using_post_with_http_info(opts)
      return data
    end

    # Adds a new group in the system
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [GroupResource] :group_resource The new group
    # @return [Array<(GroupResource, Fixnum, Hash)>] GroupResource data, response status code and response headers
    def add_group_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.add_group_using_post ..."
      end
      # resource path
      local_var_path = "/users/groups".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'group_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GroupResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#add_group_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a new member to the group
    # 
    # @param unique_name The group unique name
    # @param username The username of a user to add to the group
    # @param [Hash] opts the optional parameters
    # @return [GroupMemberResource]
    def add_member_using_post(unique_name, username, opts = {})
      data, _status_code, _headers = add_member_using_post_with_http_info(unique_name, username, opts)
      return data
    end

    # Adds a new member to the group
    # 
    # @param unique_name The group unique name
    # @param username The username of a user to add to the group
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupMemberResource, Fixnum, Hash)>] GroupMemberResource data, response status code and response headers
    def add_member_using_post_with_http_info(unique_name, username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.add_member_using_post ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.add_member_using_post" if unique_name.nil?
      # verify the required parameter 'username' is set
      fail ArgumentError, "Missing the required parameter 'username' when calling UsersGroupsApi.add_member_using_post" if username.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}/members".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s)

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
      post_body = @api_client.object_to_http_body(username)
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GroupMemberResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#add_member_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a group template
    # Group Templates define a type of group and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :group_template_resource The group template resource object
    # @return [TemplateResource]
    def create_group_template_using_post(opts = {})
      data, _status_code, _headers = create_group_template_using_post_with_http_info(opts)
      return data
    end

    # Create a group template
    # Group Templates define a type of group and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :group_template_resource The group template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_group_template_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.create_group_template_using_post ..."
      end
      # resource path
      local_var_path = "/users/groups/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'group_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#create_group_template_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a group template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_group_template_using_delete(id, opts = {})
      delete_group_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a group template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_group_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.delete_group_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersGroupsApi.delete_group_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/users/groups/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: UsersGroupsApi#delete_group_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes a user from a group
    # 
    # @param unique_name The group unique name
    # @param user_id The id of the user to remove
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_using_delete(unique_name, user_id, opts = {})
      delete_group_using_delete_with_http_info(unique_name, user_id, opts)
      return nil
    end

    # Removes a user from a group
    # 
    # @param unique_name The group unique name
    # @param user_id The id of the user to remove
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_group_using_delete_with_http_info(unique_name, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.delete_group_using_delete ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.delete_group_using_delete" if unique_name.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersGroupsApi.delete_group_using_delete" if user_id.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}/members/{user_id}".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s).sub('{' + 'user_id' + '}', user_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#delete_group_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes a group from the system IF no resources are attached to it
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_using_delete1(unique_name, opts = {})
      delete_group_using_delete1_with_http_info(unique_name, opts)
      return nil
    end

    # Removes a group from the system IF no resources are attached to it
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_group_using_delete1_with_http_info(unique_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.delete_group_using_delete1 ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.delete_group_using_delete1" if unique_name.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#delete_group_using_delete1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single group template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_group_template_using_get(id, opts = {})
      data, _status_code, _headers = get_group_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single group template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_group_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.get_group_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersGroupsApi.get_group_template_using_get" if id.nil?
      # resource path
      local_var_path = "/users/groups/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#get_group_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search group templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageTemplateResource]
    def get_group_templates_using_get(opts = {})
      data, _status_code, _headers = get_group_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search group templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageTemplateResource, Fixnum, Hash)>] PageTemplateResource data, response status code and response headers
    def get_group_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.get_group_templates_using_get ..."
      end
      # resource path
      local_var_path = "/users/groups/templates".sub('{format}','json')

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
        :return_type => 'PageTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#get_group_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Loads a specific group's details
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @return [GroupResource]
    def get_group_using_get(unique_name, opts = {})
      data, _status_code, _headers = get_group_using_get_with_http_info(unique_name, opts)
      return data
    end

    # Loads a specific group&#39;s details
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupResource, Fixnum, Hash)>] GroupResource data, response status code and response headers
    def get_group_using_get_with_http_info(unique_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.get_group_using_get ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.get_group_using_get" if unique_name.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GroupResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#get_group_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lists members of the group
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageGroupMemberResource]
    def search_groups_using_get(unique_name, opts = {})
      data, _status_code, _headers = search_groups_using_get_with_http_info(unique_name, opts)
      return data
    end

    # Lists members of the group
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageGroupMemberResource, Fixnum, Hash)>] PageGroupMemberResource data, response status code and response headers
    def search_groups_using_get_with_http_info(unique_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.search_groups_using_get ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.search_groups_using_get" if unique_name.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}/members".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageGroupMemberResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#search_groups_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search groups
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageGroupResource]
    def search_groups_using_get1(opts = {})
      data, _status_code, _headers = search_groups_using_get1_with_http_info(opts)
      return data
    end

    # List and search groups
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageGroupResource, Fixnum, Hash)>] PageGroupResource data, response status code and response headers
    def search_groups_using_get1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.search_groups_using_get1 ..."
      end
      # resource path
      local_var_path = "/users/groups".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageGroupResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#search_groups_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a group template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :group_template_resource The group template resource object
    # @return [nil]
    def update_group_template_using_put(id, opts = {})
      update_group_template_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a group template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :group_template_resource The group template resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_group_template_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.update_group_template_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersGroupsApi.update_group_template_using_put" if id.nil?
      # resource path
      local_var_path = "/users/groups/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'group_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#update_group_template_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modifies a group's details
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @option opts [GroupResource] :group_resource The updated group
    # @return [nil]
    def update_group_using_put(unique_name, opts = {})
      update_group_using_put_with_http_info(unique_name, opts)
      return nil
    end

    # Modifies a group&#39;s details
    # 
    # @param unique_name The group unique name
    # @param [Hash] opts the optional parameters
    # @option opts [GroupResource] :group_resource The updated group
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_group_using_put_with_http_info(unique_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.update_group_using_put ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.update_group_using_put" if unique_name.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'group_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#update_group_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change a user's status
    # 
    # @param unique_name The group unique name
    # @param user_id The user id of the member to modify
    # @param status The new status for the user
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_member_status_using_put(unique_name, user_id, status, opts = {})
      update_member_status_using_put_with_http_info(unique_name, user_id, status, opts)
      return nil
    end

    # Change a user&#39;s status
    # 
    # @param unique_name The group unique name
    # @param user_id The user id of the member to modify
    # @param status The new status for the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_member_status_using_put_with_http_info(unique_name, user_id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersGroupsApi.update_member_status_using_put ..."
      end
      # verify the required parameter 'unique_name' is set
      fail ArgumentError, "Missing the required parameter 'unique_name' when calling UsersGroupsApi.update_member_status_using_put" if unique_name.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersGroupsApi.update_member_status_using_put" if user_id.nil?
      # verify the required parameter 'status' is set
      fail ArgumentError, "Missing the required parameter 'status' when calling UsersGroupsApi.update_member_status_using_put" if status.nil?
      # resource path
      local_var_path = "/users/groups/{unique_name}/members/{user_id}/status".sub('{format}','json').sub('{' + 'unique_name' + '}', unique_name.to_s).sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersGroupsApi#update_member_status_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
