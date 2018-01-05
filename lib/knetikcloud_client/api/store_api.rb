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
  class StoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create an item template
    # Item Templates define a type of item and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [StoreItemTemplateResource] :item_template_resource The new item template
    # @return [StoreItemTemplateResource]
    def create_item_template(opts = {})
      data, _status_code, _headers = create_item_template_with_http_info(opts)
      return data
    end

    # Create an item template
    # Item Templates define a type of item and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [StoreItemTemplateResource] :item_template_resource The new item template
    # @return [Array<(StoreItemTemplateResource, Fixnum, Hash)>] StoreItemTemplateResource data, response status code and response headers
    def create_item_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.create_item_template ..."
      end
      # resource path
      local_var_path = "/store/items/templates"

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
      post_body = @api_client.object_to_http_body(opts[:'item_template_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#create_item_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a store item
    # SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \"parameters\" field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:<br /> {..., parameters: [[{item: 1, skus: [\"SKU-1\"]}]]}<br /> If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (default to false)
    # @option opts [StoreItem] :store_item The store item object
    # @return [StoreItem]
    def create_store_item(opts = {})
      data, _status_code, _headers = create_store_item_with_http_info(opts)
      return data
    end

    # Create a store item
    # SKUs have to be unique in the entire store. If a duplicate SKU is found, a 400 error is generated and the response will have a \&quot;parameters\&quot; field that is a list of duplicates. A duplicate is an object like {item_id, offending_sku_list}. Ex:&lt;br /&gt; {..., parameters: [[{item: 1, skus: [\&quot;SKU-1\&quot;]}]]}&lt;br /&gt; If an item is brand new and has duplicate SKUs within itself, the item ID will be 0.  Item subclasses are not allowed here, you will have to use their respective endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
    # @option opts [StoreItem] :store_item The store item object
    # @return [Array<(StoreItem, Fixnum, Hash)>] StoreItem data, response status code and response headers
    def create_store_item_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.create_store_item ..."
      end
      # resource path
      local_var_path = "/store/items"

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
      post_body = @api_client.object_to_http_body(opts[:'store_item'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#create_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an item template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [nil]
    def delete_item_template(id, opts = {})
      delete_item_template_with_http_info(id, opts)
      return nil
    end

    # Delete an item template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_item_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.delete_item_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.delete_item_template"
      end
      # resource path
      local_var_path = "/store/items/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#delete_item_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_store_item(id, opts = {})
      delete_store_item_with_http_info(id, opts)
      return nil
    end

    # Delete a store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_store_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.delete_store_item ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.delete_store_item"
      end
      # resource path
      local_var_path = "/store/items/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#delete_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List available item behaviors
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<BehaviorDefinitionResource>]
    def get_behaviors(opts = {})
      data, _status_code, _headers = get_behaviors_with_http_info(opts)
      return data
    end

    # List available item behaviors
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BehaviorDefinitionResource>, Fixnum, Hash)>] Array<BehaviorDefinitionResource> data, response status code and response headers
    def get_behaviors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.get_behaviors ..."
      end
      # resource path
      local_var_path = "/store/items/behaviors"

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<BehaviorDefinitionResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_behaviors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single item template
    # Item Templates define a type of item and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [StoreItemTemplateResource]
    def get_item_template(id, opts = {})
      data, _status_code, _headers = get_item_template_with_http_info(id, opts)
      return data
    end

    # Get a single item template
    # Item Templates define a type of item and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(StoreItemTemplateResource, Fixnum, Hash)>] StoreItemTemplateResource data, response status code and response headers
    def get_item_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.get_item_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.get_item_template"
      end
      # resource path
      local_var_path = "/store/items/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_item_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search item templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceStoreItemTemplateResource]
    def get_item_templates(opts = {})
      data, _status_code, _headers = get_item_templates_with_http_info(opts)
      return data
    end

    # List and search item templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceStoreItemTemplateResource, Fixnum, Hash)>] PageResourceStoreItemTemplateResource data, response status code and response headers
    def get_item_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.get_item_templates ..."
      end
      # resource path
      local_var_path = "/store/items/templates"

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceStoreItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_item_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @return [StoreItem]
    def get_store_item(id, opts = {})
      data, _status_code, _headers = get_store_item_with_http_info(id, opts)
      return data
    end

    # Get a single store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @return [Array<(StoreItem, Fixnum, Hash)>] StoreItem data, response status code and response headers
    def get_store_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.get_store_item ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.get_store_item"
      end
      # resource path
      local_var_path = "/store/items/{id}".sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search store items
    # If called without permission STORE_ADMIN the only items marked displayable, whose start and end date are null or appropriate to the current date, and whose geo policy allows the caller's country will be returned. Similarly skus will be filtered, possibly resulting in an item returned with no skus the user can purchase.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name_search Filter for items whose name starts with a given string.
    # @option opts [String] :filter_unique_key Filter for items whose unique_key is a given string.
    # @option opts [BOOLEAN] :filter_published Filter for skus that have been published.
    # @option opts [BOOLEAN] :filter_displayable Filter for items that are displayable.
    # @option opts [String] :filter_start A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_end A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_stop_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_sku Filter for skus whose name starts with a given string.
    # @option opts [String] :filter_price A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_tag A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
    # @option opts [String] :filter_items_by_type Filter for item type based on its type hint.
    # @option opts [String] :filter_bundled_skus Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39;
    # @option opts [Integer] :filter_vendor Filter for items from a given vendor, by id.
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceStoreItem]
    def get_store_items(opts = {})
      data, _status_code, _headers = get_store_items_with_http_info(opts)
      return data
    end

    # List and search store items
    # If called without permission STORE_ADMIN the only items marked displayable, whose start and end date are null or appropriate to the current date, and whose geo policy allows the caller&#39;s country will be returned. Similarly skus will be filtered, possibly resulting in an item returned with no skus the user can purchase.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name_search Filter for items whose name starts with a given string.
    # @option opts [String] :filter_unique_key Filter for items whose unique_key is a given string.
    # @option opts [BOOLEAN] :filter_published Filter for skus that have been published.
    # @option opts [BOOLEAN] :filter_displayable Filter for items that are displayable.
    # @option opts [String] :filter_start A comma separated string without spaces.  First value is the operator to search on, second value is the store start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_end A comma separated string without spaces.  First value is the operator to search on, second value is the store end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku start date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_stop_date A comma separated string without spaces.  First value is the operator to search on, second value is the sku end date, a unix timestamp in seconds.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_sku Filter for skus whose name starts with a given string.
    # @option opts [String] :filter_price A colon separated string without spaces.  First value is the operator to search on, second value is the price of a sku.  Allowed operators: (LT, GT, LTE, GTE, EQ).
    # @option opts [String] :filter_tag A comma separated list without spaces of the names of tags. Will only return items with at least one of the tags.
    # @option opts [String] :filter_items_by_type Filter for item type based on its type hint.
    # @option opts [String] :filter_bundled_skus Filter for skus inside bundles whose name starts with a given string.  Used only when type hint is &#39;bundle_item&#39;
    # @option opts [Integer] :filter_vendor Filter for items from a given vendor, by id.
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceStoreItem, Fixnum, Hash)>] PageResourceStoreItem data, response status code and response headers
    def get_store_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.get_store_items ..."
      end
      # resource path
      local_var_path = "/store/items"

      # query parameters
      query_params = {}
      query_params[:'filter_name_search'] = opts[:'filter_name_search'] if !opts[:'filter_name_search'].nil?
      query_params[:'filter_unique_key'] = opts[:'filter_unique_key'] if !opts[:'filter_unique_key'].nil?
      query_params[:'filter_published'] = opts[:'filter_published'] if !opts[:'filter_published'].nil?
      query_params[:'filter_displayable'] = opts[:'filter_displayable'] if !opts[:'filter_displayable'].nil?
      query_params[:'filter_start'] = opts[:'filter_start'] if !opts[:'filter_start'].nil?
      query_params[:'filter_end'] = opts[:'filter_end'] if !opts[:'filter_end'].nil?
      query_params[:'filter_start_date'] = opts[:'filter_start_date'] if !opts[:'filter_start_date'].nil?
      query_params[:'filter_stop_date'] = opts[:'filter_stop_date'] if !opts[:'filter_stop_date'].nil?
      query_params[:'filter_sku'] = opts[:'filter_sku'] if !opts[:'filter_sku'].nil?
      query_params[:'filter_price'] = opts[:'filter_price'] if !opts[:'filter_price'].nil?
      query_params[:'filter_tag'] = opts[:'filter_tag'] if !opts[:'filter_tag'].nil?
      query_params[:'filter_items_by_type'] = opts[:'filter_items_by_type'] if !opts[:'filter_items_by_type'].nil?
      query_params[:'filter_bundled_skus'] = opts[:'filter_bundled_skus'] if !opts[:'filter_bundled_skus'].nil?
      query_params[:'filter_vendor'] = opts[:'filter_vendor'] if !opts[:'filter_vendor'].nil?
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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceStoreItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#get_store_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # One-step purchase and pay for a single SKU item from a user's wallet
    # Used to create and automatically pay an invoice for a single unit of a single SKU from a user's wallet. SKU must be priced in virtual currency and must not be an item that requires shipping. PAYMENTS_ADMIN permission is required if user ID is specified and is not the ID of the currently logged in user. If invoice price does not match expected price, purchase is aborted
    # @param [Hash] opts the optional parameters
    # @option opts [QuickBuyRequest] :quick_buy_request Quick buy details
    # @return [InvoiceResource]
    def quick_buy(opts = {})
      data, _status_code, _headers = quick_buy_with_http_info(opts)
      return data
    end

    # One-step purchase and pay for a single SKU item from a user&#39;s wallet
    # Used to create and automatically pay an invoice for a single unit of a single SKU from a user&#39;s wallet. SKU must be priced in virtual currency and must not be an item that requires shipping. PAYMENTS_ADMIN permission is required if user ID is specified and is not the ID of the currently logged in user. If invoice price does not match expected price, purchase is aborted
    # @param [Hash] opts the optional parameters
    # @option opts [QuickBuyRequest] :quick_buy_request Quick buy details
    # @return [Array<(InvoiceResource, Fixnum, Hash)>] InvoiceResource data, response status code and response headers
    def quick_buy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.quick_buy ..."
      end
      # resource path
      local_var_path = "/store/quick-buy"

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
      post_body = @api_client.object_to_http_body(opts[:'quick_buy_request'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InvoiceResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#quick_buy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an item template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [StoreItemTemplateResource] :item_template_resource The item template resource object
    # @return [StoreItemTemplateResource]
    def update_item_template(id, opts = {})
      data, _status_code, _headers = update_item_template_with_http_info(id, opts)
      return data
    end

    # Update an item template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [StoreItemTemplateResource] :item_template_resource The item template resource object
    # @return [Array<(StoreItemTemplateResource, Fixnum, Hash)>] StoreItemTemplateResource data, response status code and response headers
    def update_item_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.update_item_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.update_item_template"
      end
      # resource path
      local_var_path = "/store/items/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'item_template_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#update_item_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values. (default to false)
    # @option opts [StoreItem] :store_item The store item object
    # @return [StoreItem]
    def update_store_item(id, opts = {})
      data, _status_code, _headers = update_store_item_with_http_info(id, opts)
      return data
    end

    # Update a store item
    # 
    # @param id The id of the item
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :cascade Whether to cascade group changes, such as in the limited gettable behavior. A 400 error will return otherwise if the group is already in use with different values.
    # @option opts [StoreItem] :store_item The store item object
    # @return [Array<(StoreItem, Fixnum, Hash)>] StoreItem data, response status code and response headers
    def update_store_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreApi.update_store_item ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreApi.update_store_item"
      end
      # resource path
      local_var_path = "/store/items/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'store_item'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StoreItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreApi#update_store_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end