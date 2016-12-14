=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [nil]
    def create_tax_using_post(country_code_iso3, opts = {})
      create_tax_using_post_with_http_info(country_code_iso3, opts)
      return nil
    end

    # Create a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_tax_using_post_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.create_tax_using_post ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.create_tax_using_post" if country_code_iso3.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#create_tax_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tax_using_delete(country_code_iso3, opts = {})
      delete_tax_using_delete_with_http_info(country_code_iso3, opts)
      return nil
    end

    # Delete an existing tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tax_using_delete_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.delete_tax_using_delete ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.delete_tax_using_delete" if country_code_iso3.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_tax_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tax_using_delete1(country_code_iso3, state_code, opts = {})
      delete_tax_using_delete1_with_http_info(country_code_iso3, state_code, opts)
      return nil
    end

    # Delete an existing tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tax_using_delete1_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.delete_tax_using_delete1 ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.delete_tax_using_delete1" if country_code_iso3.nil?
      # verify the required parameter 'state_code' is set
      fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.delete_tax_using_delete1" if state_code.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_tax_using_delete1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes across all countries
    # Get a list of taxes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageStateTaxResource]
    def get_all_taxes_using_get(opts = {})
      data, _status_code, _headers = get_all_taxes_using_get_with_http_info(opts)
      return data
    end

    # List and search taxes across all countries
    # Get a list of taxes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageStateTaxResource, Fixnum, Hash)>] PageStateTaxResource data, response status code and response headers
    def get_all_taxes_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_all_taxes_using_get ..."
      end
      # resource path
      local_var_path = "/tax/states".sub('{format}','json')

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
        :return_type => 'PageStateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_all_taxes_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [CountryTaxResource]
    def get_tax_using_get(country_code_iso3, opts = {})
      data, _status_code, _headers = get_tax_using_get_with_http_info(country_code_iso3, opts)
      return data
    end

    # Get a single tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<(CountryTaxResource, Fixnum, Hash)>] CountryTaxResource data, response status code and response headers
    def get_tax_using_get_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_tax_using_get ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_tax_using_get" if country_code_iso3.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
        :return_type => 'CountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_tax_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [StateTaxResource]
    def get_tax_using_get1(country_code_iso3, state_code, opts = {})
      data, _status_code, _headers = get_tax_using_get1_with_http_info(country_code_iso3, state_code, opts)
      return data
    end

    # Get a single tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<(StateTaxResource, Fixnum, Hash)>] StateTaxResource data, response status code and response headers
    def get_tax_using_get1_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_tax_using_get1 ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_tax_using_get1" if country_code_iso3.nil?
      # verify the required parameter 'state_code' is set
      fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.get_tax_using_get1" if state_code.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
        :return_type => 'StateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_tax_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes
    # Get a list of taxes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageCountryTaxResource]
    def get_taxes_using_get(opts = {})
      data, _status_code, _headers = get_taxes_using_get_with_http_info(opts)
      return data
    end

    # List and search taxes
    # Get a list of taxes
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageCountryTaxResource, Fixnum, Hash)>] PageCountryTaxResource data, response status code and response headers
    def get_taxes_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_taxes_using_get ..."
      end
      # resource path
      local_var_path = "/tax/countries".sub('{format}','json')

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
        :return_type => 'PageCountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_taxes_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes within a country
    # Get a list of taxes
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageStateTaxResource]
    def get_taxes_using_get1(country_code_iso3, opts = {})
      data, _status_code, _headers = get_taxes_using_get1_with_http_info(country_code_iso3, opts)
      return data
    end

    # List and search taxes within a country
    # Get a list of taxes
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageStateTaxResource, Fixnum, Hash)>] PageStateTaxResource data, response status code and response headers
    def get_taxes_using_get1_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_taxes_using_get1 ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_taxes_using_get1" if country_code_iso3.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
        :return_type => 'PageStateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_taxes_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a tax
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [nil]
    def update_tax_using_post(opts = {})
      update_tax_using_post_with_http_info(opts)
      return nil
    end

    # Create a tax
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_tax_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_tax_using_post ..."
      end
      # resource path
      local_var_path = "/tax/countries".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_tax_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [nil]
    def update_tax_using_put(country_code_iso3, opts = {})
      update_tax_using_put_with_http_info(country_code_iso3, opts)
      return nil
    end

    # Create or update a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_tax_using_put_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_tax_using_put ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.update_tax_using_put" if country_code_iso3.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_tax_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [nil]
    def update_tax_using_put1(country_code_iso3, state_code, opts = {})
      update_tax_using_put1_with_http_info(country_code_iso3, state_code, opts)
      return nil
    end

    # Create or update a tax
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_tax_using_put1_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_tax_using_put1 ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.update_tax_using_put1" if country_code_iso3.nil?
      # verify the required parameter 'state_code' is set
      fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.update_tax_using_put1" if state_code.nil?
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_tax_using_put1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
