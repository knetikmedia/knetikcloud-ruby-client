=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class StoreShippingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a shipping item
    # A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.
    # @param [Hash] opts the optional parameters
    # @option opts [ShippingItem] :shipping_item The shipping item object
    # @return [ShippingItem]
    def create_shipping_item_using_post(opts = {})
      data, _status_code, _headers = create_shipping_item_using_post_with_http_info(opts)
      return data
    end

    # Create a shipping item
    # A shipping item represents a shipping option and cost. SKUs have to be unique in the entire store.
    # @param [Hash] opts the optional parameters
    # @option opts [ShippingItem] :shipping_item The shipping item object
    # @return [Array<(ShippingItem, Fixnum, Hash)>] ShippingItem data, response status code and response headers
    def create_shipping_item_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.create_shipping_item_using_post ..."
      end
      # resource path
      local_var_path = "/store/shipping".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'shipping_item'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ShippingItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#create_shipping_item_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a shipping template
    # Shipping Templates define a type of shipping and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :shipping_template_resource The new shipping template
    # @return [ItemTemplateResource]
    def create_shipping_template_using_post(opts = {})
      data, _status_code, _headers = create_shipping_template_using_post_with_http_info(opts)
      return data
    end

    # Create a shipping template
    # Shipping Templates define a type of shipping and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :shipping_template_resource The new shipping template
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def create_shipping_template_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.create_shipping_template_using_post ..."
      end
      # resource path
      local_var_path = "/store/shipping/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'shipping_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#create_shipping_template_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_shipping_item_using_delete(id, opts = {})
      delete_shipping_item_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_shipping_item_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.delete_shipping_item_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.delete_shipping_item_using_delete" if id.nil?
      # resource path
      local_var_path = "/store/shipping/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreShippingApi#delete_shipping_item_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a shipping template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [nil]
    def delete_shipping_template_using_delete(id, opts = {})
      delete_shipping_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a shipping template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_shipping_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.delete_shipping_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.delete_shipping_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/store/shipping/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreShippingApi#delete_shipping_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @return [ShippingItem]
    def get_shipping_item_using_get(id, opts = {})
      data, _status_code, _headers = get_shipping_item_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShippingItem, Fixnum, Hash)>] ShippingItem data, response status code and response headers
    def get_shipping_item_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.get_shipping_item_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.get_shipping_item_using_get" if id.nil?
      # resource path
      local_var_path = "/store/shipping/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ShippingItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#get_shipping_item_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single shipping template
    # Shipping Templates define a type of shipping and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [ItemTemplateResource]
    def get_shipping_template_using_get(id, opts = {})
      data, _status_code, _headers = get_shipping_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single shipping template
    # Shipping Templates define a type of shipping and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def get_shipping_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.get_shipping_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.get_shipping_template_using_get" if id.nil?
      # resource path
      local_var_path = "/store/shipping/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#get_shipping_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search shipping templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageItemTemplateResource]
    def get_shipping_templates_using_get(opts = {})
      data, _status_code, _headers = get_shipping_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search shipping templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageItemTemplateResource, Fixnum, Hash)>] PageItemTemplateResource data, response status code and response headers
    def get_shipping_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.get_shipping_templates_using_get ..."
      end
      # resource path
      local_var_path = "/store/shipping/templates".sub('{format}','json')

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
        :return_type => 'PageItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#get_shipping_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @option opts [ShippingItem] :shipping_item The shipping item object
    # @return [nil]
    def update_shipping_item_using_put(id, opts = {})
      update_shipping_item_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a shipping item
    # 
    # @param id The id of the shipping item
    # @param [Hash] opts the optional parameters
    # @option opts [ShippingItem] :shipping_item The shipping item object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_shipping_item_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.update_shipping_item_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.update_shipping_item_using_put" if id.nil?
      # resource path
      local_var_path = "/store/shipping/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'shipping_item'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#update_shipping_item_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a shipping template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :shipping_template_resource The shipping template resource object
    # @return [nil]
    def update_shipping_template_using_put(id, opts = {})
      update_shipping_template_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a shipping template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :shipping_template_resource The shipping template resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_shipping_template_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShippingApi.update_shipping_template_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShippingApi.update_shipping_template_using_put" if id.nil?
      # resource path
      local_var_path = "/store/shipping/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'shipping_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShippingApi#update_shipping_template_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
