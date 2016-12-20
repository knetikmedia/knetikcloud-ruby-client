=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class CurrenciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a currency
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CurrencyResource] :currency The currency object
    # @return [CurrencyResource]
    def create_currency_using_post(opts = {})
      data, _status_code, _headers = create_currency_using_post_with_http_info(opts)
      return data
    end

    # Create a currency
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CurrencyResource] :currency The currency object
    # @return [Array<(CurrencyResource, Fixnum, Hash)>] CurrencyResource data, response status code and response headers
    def create_currency_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.create_currency_using_post ..."
      end
      # resource path
      local_var_path = "/currencies".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'currency'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CurrencyResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#create_currency_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_currency_using_delete(code, opts = {})
      delete_currency_using_delete_with_http_info(code, opts)
      return nil
    end

    # Delete a currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_currency_using_delete_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.delete_currency_using_delete ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling CurrenciesApi.delete_currency_using_delete" if code.nil?
      # resource path
      local_var_path = "/currencies/{code}".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)

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
        @api_client.config.logger.debug "API called: CurrenciesApi#delete_currency_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search currencies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_enabled_currencies Filter for alternate currencies setup explicitely in system config
    # @option opts [String] :filter_type Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;)
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to name:ASC)
    # @return [PageResourceCurrencyResource]
    def get_currencies_using_get(opts = {})
      data, _status_code, _headers = get_currencies_using_get_with_http_info(opts)
      return data
    end

    # List and search currencies
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_enabled_currencies Filter for alternate currencies setup explicitely in system config
    # @option opts [String] :filter_type Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;)
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceCurrencyResource, Fixnum, Hash)>] PageResourceCurrencyResource data, response status code and response headers
    def get_currencies_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.get_currencies_using_get ..."
      end
      # resource path
      local_var_path = "/currencies".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_enabled_currencies'] = opts[:'filter_enabled_currencies'] if !opts[:'filter_enabled_currencies'].nil?
      query_params[:'filter_type'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?
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
        :return_type => 'PageResourceCurrencyResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currencies_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @return [CurrencyResource]
    def get_currency_using_get(code, opts = {})
      data, _status_code, _headers = get_currency_using_get_with_http_info(code, opts)
      return data
    end

    # Get a single currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @return [Array<(CurrencyResource, Fixnum, Hash)>] CurrencyResource data, response status code and response headers
    def get_currency_using_get_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.get_currency_using_get ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling CurrenciesApi.get_currency_using_get" if code.nil?
      # resource path
      local_var_path = "/currencies/{code}".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)

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
        :return_type => 'CurrencyResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currency_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @option opts [CurrencyResource] :currency The currency object
    # @return [nil]
    def update_currency_using_put(code, opts = {})
      update_currency_using_put_with_http_info(code, opts)
      return nil
    end

    # Update a currency
    # 
    # @param code The currency code
    # @param [Hash] opts the optional parameters
    # @option opts [CurrencyResource] :currency The currency object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_currency_using_put_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi.update_currency_using_put ..."
      end
      # verify the required parameter 'code' is set
      fail ArgumentError, "Missing the required parameter 'code' when calling CurrenciesApi.update_currency_using_put" if code.nil?
      # resource path
      local_var_path = "/currencies/{code}".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'currency'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#update_currency_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
