=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class StoreShoppingCartsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Adds a discount coupon to the cart
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [SkuRequest] :sku_request The request of the sku
    # @return [nil]
    def add_discount_to_cart(id, opts = {})
      add_discount_to_cart_with_http_info(id, opts)
      return nil
    end

    # Adds a discount coupon to the cart
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [SkuRequest] :sku_request The request of the sku
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_discount_to_cart_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.add_discount_to_cart ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.add_discount_to_cart" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/discounts".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'sku_request'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#add_discount_to_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add an item to the cart
    # Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartItemRequest] :cart_item_request The cart item request object
    # @return [nil]
    def add_item_to_cart(id, opts = {})
      add_item_to_cart_with_http_info(id, opts)
      return nil
    end

    # Add an item to the cart
    # Currently, carts cannot contain virtual and real currency items at the same time. Furthermore, the API only support a single virtual item at the moment
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartItemRequest] :cart_item_request The cart item request object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_item_to_cart_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.add_item_to_cart ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.add_item_to_cart" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/items".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'cart_item_request'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#add_item_to_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a cart
    # You don't have to have a user to create a cart but the API requires authentication to checkout
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :owner Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required
    # @option opts [String] :currency_code Set the currency for the cart, by currency code. May be disallowed by site settings.
    # @return [String]
    def create_cart(opts = {})
      data, _status_code, _headers = create_cart_with_http_info(opts)
      return data
    end

    # Create a cart
    # You don&#39;t have to have a user to create a cart but the API requires authentication to checkout
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :owner Set the owner of a cart. If not specified, defaults to the calling user&#39;s id. If specified and is not the calling user&#39;s id, SHOPPING_CARTS_ADMIN permission is required
    # @option opts [String] :currency_code Set the currency for the cart, by currency code. May be disallowed by site settings.
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_cart_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.create_cart ..."
      end
      # resource path
      local_var_path = "/carts".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'owner'] = opts[:'owner'] if !opts[:'owner'].nil?
      query_params[:'currency_code'] = opts[:'currency_code'] if !opts[:'currency_code'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#create_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the cart with the given GUID
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [Cart]
    def get_cart(id, opts = {})
      data, _status_code, _headers = get_cart_with_http_info(id, opts)
      return data
    end

    # Returns the cart with the given GUID
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cart, Fixnum, Hash)>] Cart data, response status code and response headers
    def get_cart_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.get_cart ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.get_cart" if id.nil?
      # resource path
      local_var_path = "/carts/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Cart')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#get_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of carts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_owner_id Filter by the id of the owner
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceCartSummary]
    def get_carts(opts = {})
      data, _status_code, _headers = get_carts_with_http_info(opts)
      return data
    end

    # Get a list of carts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_owner_id Filter by the id of the owner
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceCartSummary, Fixnum, Hash)>] PageResourceCartSummary data, response status code and response headers
    def get_carts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.get_carts ..."
      end
      # resource path
      local_var_path = "/carts".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_owner_id'] = opts[:'filter_owner_id'] if !opts[:'filter_owner_id'].nil?
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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceCartSummary')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#get_carts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of available shipping countries per vendor
    # Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [SampleCountriesResponse]
    def get_countries(id, opts = {})
      data, _status_code, _headers = get_countries_with_http_info(id, opts)
      return data
    end

    # Get the list of available shipping countries per vendor
    # Since a cart can have multiple vendors with different shipping options, the countries are broken down by vendors. Please see notes about the response object as the fields are variable.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [Array<(SampleCountriesResponse, Fixnum, Hash)>] SampleCountriesResponse data, response status code and response headers
    def get_countries_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.get_countries ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.get_countries" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/countries".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SampleCountriesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#get_countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns whether a cart requires shipping
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [CartShippableResponse]
    def get_shippable(id, opts = {})
      data, _status_code, _headers = get_shippable_with_http_info(id, opts)
      return data
    end

    # Returns whether a cart requires shipping
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @return [Array<(CartShippableResponse, Fixnum, Hash)>] CartShippableResponse data, response status code and response headers
    def get_shippable_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.get_shippable ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.get_shippable" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/shippable".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CartShippableResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#get_shippable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes a discount coupon from the cart
    # 
    # @param id The id of the cart
    # @param code The SKU code of the coupon to remove
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_discount_from_cart(id, code, opts = {})
      remove_discount_from_cart_with_http_info(id, code, opts)
      return nil
    end

    # Removes a discount coupon from the cart
    # 
    # @param id The id of the cart
    # @param code The SKU code of the coupon to remove
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_discount_from_cart_with_http_info(id, code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.remove_discount_from_cart ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.remove_discount_from_cart" if id.nil?
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling StoreShoppingCartsApi.remove_discount_from_cart" if code.nil?
      # resource path
      local_var_path = "/carts/{id}/discounts/{code}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'code' + '}', code.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#remove_discount_from_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets the currency to use for the cart
    # May be disallowed by site settings.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency_code The code of the currency
    # @return [nil]
    def set_cart_currency(id, opts = {})
      set_cart_currency_with_http_info(id, opts)
      return nil
    end

    # Sets the currency to use for the cart
    # May be disallowed by site settings.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency_code The code of the currency
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_cart_currency_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.set_cart_currency ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.set_cart_currency" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/currency".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'currency_code'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#set_cart_currency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets the owner of a cart if none is set already
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The id of the user
    # @return [nil]
    def set_cart_owner(id, opts = {})
      set_cart_owner_with_http_info(id, opts)
      return nil
    end

    # Sets the owner of a cart if none is set already
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The id of the user
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_cart_owner_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.set_cart_owner ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.set_cart_owner" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/owner".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'user_id'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#set_cart_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Changes the quantity of an item already in the cart
    # A quantity of zero will remove the item from the cart altogether.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartItemRequest] :cart_item_request The cart item request object
    # @return [nil]
    def update_item_in_cart(id, opts = {})
      update_item_in_cart_with_http_info(id, opts)
      return nil
    end

    # Changes the quantity of an item already in the cart
    # A quantity of zero will remove the item from the cart altogether.
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartItemRequest] :cart_item_request The cart item request object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_item_in_cart_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.update_item_in_cart ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.update_item_in_cart" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/items".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'cart_item_request'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#update_item_in_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modifies or sets the order shipping address
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartShippingAddressRequest] :cart_shipping_address_request The cart shipping address request object
    # @return [nil]
    def update_shipping_address(id, opts = {})
      update_shipping_address_with_http_info(id, opts)
      return nil
    end

    # Modifies or sets the order shipping address
    # 
    # @param id The id of the cart
    # @param [Hash] opts the optional parameters
    # @option opts [CartShippingAddressRequest] :cart_shipping_address_request The cart shipping address request object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_shipping_address_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreShoppingCartsApi.update_shipping_address ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreShoppingCartsApi.update_shipping_address" if id.nil?
      # resource path
      local_var_path = "/carts/{id}/shipping-address".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'cart_shipping_address_request'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreShoppingCartsApi#update_shipping_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
