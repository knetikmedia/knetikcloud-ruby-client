=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class StoreBundlesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a bundle item
    # The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (default to false)
    # @option opts [BundleItem] :bundle_item The bundle item object
    # @return [BundleItem]
    def create_bundle_item(opts = {})
      data, _status_code, _headers = create_bundle_item_with_http_info(opts)
      return data
    end

    # Create a bundle item
    # The SKU for the bundle itself must be unique and there can only be one SKU.  Extra notes for price_override:  The price of all the items (multiplied by the quantity) must equal the price of the bundle.  With individual prices set, items will be processed individually and can be refunded as such.  However, if all prices are set to null, the price of the bundle will be used and will be treated as one item.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
    # @option opts [BundleItem] :bundle_item The bundle item object
    # @return [Array<(BundleItem, Fixnum, Hash)>] BundleItem data, response status code and response headers
    def create_bundle_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.create_bundle_item ..."
      end
      # resource path
      local_var_path = "/store/bundles".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'bundle_item'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BundleItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#create_bundle_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a bundle template
    # Bundle Templates define a type of bundle and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :bundle_template_resource The new bundle template
    # @return [ItemTemplateResource]
    def create_bundle_template(opts = {})
      data, _status_code, _headers = create_bundle_template_with_http_info(opts)
      return data
    end

    # Create a bundle template
    # Bundle Templates define a type of bundle and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :bundle_template_resource The new bundle template
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def create_bundle_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.create_bundle_template ..."
      end
      # resource path
      local_var_path = "/store/bundles/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'bundle_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#create_bundle_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_bundle_item(id, opts = {})
      delete_bundle_item_with_http_info(id, opts)
      return nil
    end

    # Delete a bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bundle_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.delete_bundle_item ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.delete_bundle_item" if id.nil?
      # resource path
      local_var_path = "/store/bundles/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreBundlesApi#delete_bundle_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a bundle template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [nil]
    def delete_bundle_template(id, opts = {})
      delete_bundle_template_with_http_info(id, opts)
      return nil
    end

    # Delete a bundle template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_bundle_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.delete_bundle_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.delete_bundle_template" if id.nil?
      # resource path
      local_var_path = "/store/bundles/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: StoreBundlesApi#delete_bundle_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @return [BundleItem]
    def get_bundle_item(id, opts = {})
      data, _status_code, _headers = get_bundle_item_with_http_info(id, opts)
      return data
    end

    # Get a single bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @return [Array<(BundleItem, Fixnum, Hash)>] BundleItem data, response status code and response headers
    def get_bundle_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.get_bundle_item ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.get_bundle_item" if id.nil?
      # resource path
      local_var_path = "/store/bundles/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BundleItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#get_bundle_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single bundle template
    # Bundle Templates define a type of bundle and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [ItemTemplateResource]
    def get_bundle_template(id, opts = {})
      data, _status_code, _headers = get_bundle_template_with_http_info(id, opts)
      return data
    end

    # Get a single bundle template
    # Bundle Templates define a type of bundle and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def get_bundle_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.get_bundle_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.get_bundle_template" if id.nil?
      # resource path
      local_var_path = "/store/bundles/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#get_bundle_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search bundle templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceItemTemplateResource]
    def get_bundle_templates(opts = {})
      data, _status_code, _headers = get_bundle_templates_with_http_info(opts)
      return data
    end

    # List and search bundle templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceItemTemplateResource, Fixnum, Hash)>] PageResourceItemTemplateResource data, response status code and response headers
    def get_bundle_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.get_bundle_templates ..."
      end
      # resource path
      local_var_path = "/store/bundles/templates".sub('{format}','json')

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
        :return_type => 'PageResourceItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#get_bundle_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (default to false)
    # @option opts [BundleItem] :bundle_item The bundle item object
    # @return [BundleItem]
    def update_bundle_item(id, opts = {})
      data, _status_code, _headers = update_bundle_item_with_http_info(id, opts)
      return data
    end

    # Update a bundle item
    # 
    # @param id The id of the bundle
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
    # @option opts [BundleItem] :bundle_item The bundle item object
    # @return [Array<(BundleItem, Fixnum, Hash)>] BundleItem data, response status code and response headers
    def update_bundle_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.update_bundle_item ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.update_bundle_item" if id.nil?
      # resource path
      local_var_path = "/store/bundles/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'bundle_item'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BundleItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#update_bundle_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a bundle template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :bundle_template_resource The bundle template resource object
    # @return [ItemTemplateResource]
    def update_bundle_template(id, opts = {})
      data, _status_code, _headers = update_bundle_template_with_http_info(id, opts)
      return data
    end

    # Update a bundle template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :bundle_template_resource The bundle template resource object
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def update_bundle_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreBundlesApi.update_bundle_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreBundlesApi.update_bundle_template" if id.nil?
      # resource path
      local_var_path = "/store/bundles/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'bundle_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreBundlesApi#update_bundle_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
