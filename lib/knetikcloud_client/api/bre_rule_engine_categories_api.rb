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
  class BRERuleEngineCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a BRE category template
    # Templates define a type of BRE category and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The category template to create
    # @return [TemplateResource]
    def create_bre_category_template(opts = {})
      data, _status_code, _headers = create_bre_category_template_with_http_info(opts)
      return data
    end

    # Create a BRE category template
    # Templates define a type of BRE category and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The category template to create
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_bre_category_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.create_bre_category_template ..."
      end
      # resource path
      local_var_path = "/bre/categories/templates"

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
      post_body = @api_client.object_to_http_body(opts[:'template'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#create_bre_category_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a BRE category template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_bre_category_template(id, opts = {})
      delete_bre_category_template_with_http_info(id, opts)
      return nil
    end

    # Delete a BRE category template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bre_category_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.delete_bre_category_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.delete_bre_category_template"
      end
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#delete_bre_category_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List categories
    # <b>Permissions Needed:</b> BRE_RULE_ENGINE_CATEGORIES_USER
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceBreCategoryResource]
    def get_bre_categories(opts = {})
      data, _status_code, _headers = get_bre_categories_with_http_info(opts)
      return data
    end

    # List categories
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_USER
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceBreCategoryResource, Fixnum, Hash)>] PageResourceBreCategoryResource data, response status code and response headers
    def get_bre_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_bre_categories ..."
      end
      # resource path
      local_var_path = "/bre/categories"

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
        :return_type => 'PageResourceBreCategoryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_bre_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single category
    # <b>Permissions Needed:</b> BRE_RULE_ENGINE_CATEGORIES_USER
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @return [BreCategoryResource]
    def get_bre_category(name, opts = {})
      data, _status_code, _headers = get_bre_category_with_http_info(name, opts)
      return data
    end

    # Get a single category
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_USER
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @return [Array<(BreCategoryResource, Fixnum, Hash)>] BreCategoryResource data, response status code and response headers
    def get_bre_category_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_bre_category ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BRERuleEngineCategoriesApi.get_bre_category"
      end
      # resource path
      local_var_path = "/bre/categories/{name}".sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'BreCategoryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_bre_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single BRE category template
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_bre_category_template(id, opts = {})
      data, _status_code, _headers = get_bre_category_template_with_http_info(id, opts)
      return data
    end

    # Get a single BRE category template
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_bre_category_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_bre_category_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.get_bre_category_template"
      end
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_bre_category_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search BRE category templates
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceTemplateResource]
    def get_bre_category_templates(opts = {})
      data, _status_code, _headers = get_bre_category_templates_with_http_info(opts)
      return data
    end

    # List and search BRE category templates
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceTemplateResource, Fixnum, Hash)>] PageResourceTemplateResource data, response status code and response headers
    def get_bre_category_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_bre_category_templates ..."
      end
      # resource path
      local_var_path = "/bre/categories/templates"

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
        :return_type => 'PageResourceTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_bre_category_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a category
    # <b>Permissions Needed:</b> BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @option opts [BreCategoryResource] :category The updated BRE category information
    # @return [BreCategoryResource]
    def update_bre_category(name, opts = {})
      data, _status_code, _headers = update_bre_category_with_http_info(name, opts)
      return data
    end

    # Update a category
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; BRE_RULE_ENGINE_CATEGORIES_ADMIN
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @option opts [BreCategoryResource] :category The updated BRE category information
    # @return [Array<(BreCategoryResource, Fixnum, Hash)>] BreCategoryResource data, response status code and response headers
    def update_bre_category_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.update_bre_category ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BRERuleEngineCategoriesApi.update_bre_category"
      end
      # resource path
      local_var_path = "/bre/categories/{name}".sub('{' + 'name' + '}', name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'category'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BreCategoryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#update_bre_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a BRE category template
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The updated category template definition
    # @return [TemplateResource]
    def update_bre_category_template(id, opts = {})
      data, _status_code, _headers = update_bre_category_template_with_http_info(id, opts)
      return data
    end

    # Update a BRE category template
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The updated category template definition
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def update_bre_category_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.update_bre_category_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.update_bre_category_template"
      end
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'template'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#update_bre_category_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
