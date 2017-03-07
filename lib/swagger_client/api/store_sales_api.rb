=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class StoreSalesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a sale
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CatalogSale] :catalog_sale The catalog sale object
    # @return [CatalogSale]
    def create_catalog_sale(opts = {})
      data, _status_code, _headers = create_catalog_sale_with_http_info(opts)
      return data
    end

    # Create a sale
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CatalogSale] :catalog_sale The catalog sale object
    # @return [Array<(CatalogSale, Fixnum, Hash)>] CatalogSale data, response status code and response headers
    def create_catalog_sale_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSalesApi.create_catalog_sale ..."
      end
      # resource path
      local_var_path = "/store/sales".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'catalog_sale'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CatalogSale')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSalesApi#create_catalog_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_catalog_sale(id, opts = {})
      delete_catalog_sale_with_http_info(id, opts)
      return nil
    end

    # Delete a sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_catalog_sale_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSalesApi.delete_catalog_sale ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSalesApi.delete_catalog_sale" if id.nil?
      # resource path
      local_var_path = "/store/sales/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreSalesApi#delete_catalog_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @return [CatalogSale]
    def get_catalog_sale(id, opts = {})
      data, _status_code, _headers = get_catalog_sale_with_http_info(id, opts)
      return data
    end

    # Get a single sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @return [Array<(CatalogSale, Fixnum, Hash)>] CatalogSale data, response status code and response headers
    def get_catalog_sale_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSalesApi.get_catalog_sale ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSalesApi.get_catalog_sale" if id.nil?
      # resource path
      local_var_path = "/store/sales/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CatalogSale')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSalesApi#get_catalog_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search sales
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceCatalogSale]
    def get_catalog_sales(opts = {})
      data, _status_code, _headers = get_catalog_sales_with_http_info(opts)
      return data
    end

    # List and search sales
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceCatalogSale, Fixnum, Hash)>] PageResourceCatalogSale data, response status code and response headers
    def get_catalog_sales_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSalesApi.get_catalog_sales ..."
      end
      # resource path
      local_var_path = "/store/sales".sub('{format}','json')

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
        :return_type => 'PageResourceCatalogSale')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSalesApi#get_catalog_sales\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @option opts [CatalogSale] :catalog_sale The catalog sale object
    # @return [CatalogSale]
    def update_catalog_sale(id, opts = {})
      data, _status_code, _headers = update_catalog_sale_with_http_info(id, opts)
      return data
    end

    # Update a sale
    # 
    # @param id The id of the sale
    # @param [Hash] opts the optional parameters
    # @option opts [CatalogSale] :catalog_sale The catalog sale object
    # @return [Array<(CatalogSale, Fixnum, Hash)>] CatalogSale data, response status code and response headers
    def update_catalog_sale_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSalesApi.update_catalog_sale ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSalesApi.update_catalog_sale" if id.nil?
      # resource path
      local_var_path = "/store/sales/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'catalog_sale'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CatalogSale')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSalesApi#update_catalog_sale\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
