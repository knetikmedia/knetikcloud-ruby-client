=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class BRERuleEngineCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a BRE category template
    # Templates define a type of BRE category and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The category template to create
    # @return [TemplateResource]
    def create_template_using_post1(opts = {})
      data, _status_code, _headers = create_template_using_post1_with_http_info(opts)
      return data
    end

    # Create a BRE category template
    # Templates define a type of BRE category and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The category template to create
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_template_using_post1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.create_template_using_post1 ..."
      end
      # resource path
      local_var_path = "/bre/categories/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'template'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#create_template_using_post1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a BRE category template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_template_using_delete(id, opts = {})
      delete_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a BRE category template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.delete_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.delete_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#delete_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List categories
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageBreCategoryResource]
    def get_categories_using_get(opts = {})
      data, _status_code, _headers = get_categories_using_get_with_http_info(opts)
      return data
    end

    # List categories
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageBreCategoryResource, Fixnum, Hash)>] PageBreCategoryResource data, response status code and response headers
    def get_categories_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_categories_using_get ..."
      end
      # resource path
      local_var_path = "/bre/categories".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
        :return_type => 'PageBreCategoryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_categories_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single category
    # 
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @return [BreCategoryResource]
    def get_category_using_get(name, opts = {})
      data, _status_code, _headers = get_category_using_get_with_http_info(name, opts)
      return data
    end

    # Get a single category
    # 
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @return [Array<(BreCategoryResource, Fixnum, Hash)>] BreCategoryResource data, response status code and response headers
    def get_category_using_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_category_using_get ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling BRERuleEngineCategoriesApi.get_category_using_get" if name.nil?
      # resource path
      local_var_path = "/bre/categories/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'BreCategoryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_category_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single BRE category template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_template_using_get(id, opts = {})
      data, _status_code, _headers = get_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single BRE category template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.get_template_using_get" if id.nil?
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search BRE category templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageTemplateResource]
    def get_templates_using_get(opts = {})
      data, _status_code, _headers = get_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search BRE category templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageTemplateResource, Fixnum, Hash)>] PageTemplateResource data, response status code and response headers
    def get_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.get_templates_using_get ..."
      end
      # resource path
      local_var_path = "/bre/categories/templates".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#get_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a category
    # 
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @option opts [BreCategoryResource] :category The updated BRE category information
    # @return [nil]
    def update_category_using_put(name, opts = {})
      update_category_using_put_with_http_info(name, opts)
      return nil
    end

    # Update a category
    # 
    # @param name The category name
    # @param [Hash] opts the optional parameters
    # @option opts [BreCategoryResource] :category The updated BRE category information
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_category_using_put_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.update_category_using_put ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling BRERuleEngineCategoriesApi.update_category_using_put" if name.nil?
      # resource path
      local_var_path = "/bre/categories/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'category'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#update_category_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a BRE category template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The updated category template definition
    # @return [nil]
    def update_template_using_put1(id, opts = {})
      update_template_using_put1_with_http_info(id, opts)
      return nil
    end

    # Update a BRE category template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :template The updated category template definition
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_template_using_put1_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineCategoriesApi.update_template_using_put1 ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineCategoriesApi.update_template_using_put1" if id.nil?
      # resource path
      local_var_path = "/bre/categories/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'template'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineCategoriesApi#update_template_using_put1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
