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
  class TaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a country tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [CountryTaxResource]
    def create_country_tax(opts = {})
      data, _status_code, _headers = create_country_tax_with_http_info(opts)
      return data
    end

    # Create a country tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [Array<(CountryTaxResource, Fixnum, Hash)>] CountryTaxResource data, response status code and response headers
    def create_country_tax_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.create_country_tax ..."
      end
      # resource path
      local_var_path = "/tax/countries"

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#create_country_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a state tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [StateTaxResource]
    def create_state_tax(country_code_iso3, opts = {})
      data, _status_code, _headers = create_state_tax_with_http_info(country_code_iso3, opts)
      return data
    end

    # Create a state tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [Array<(StateTaxResource, Fixnum, Hash)>] StateTaxResource data, response status code and response headers
    def create_state_tax_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.create_state_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.create_state_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#create_state_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_country_tax(country_code_iso3, opts = {})
      delete_country_tax_with_http_info(country_code_iso3, opts)
      return nil
    end

    # Delete an existing tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_country_tax_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.delete_country_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.delete_country_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_country_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing state tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_state_tax(country_code_iso3, state_code, opts = {})
      delete_state_tax_with_http_info(country_code_iso3, state_code, opts)
      return nil
    end

    # Delete an existing state tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_state_tax_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.delete_state_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.delete_state_tax"
      end
      # verify the required parameter 'state_code' is set
      if @api_client.config.client_side_validation && state_code.nil?
        fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.delete_state_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#delete_state_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single tax
    # <b>Permissions Needed:</b> ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [CountryTaxResource]
    def get_country_tax(country_code_iso3, opts = {})
      data, _status_code, _headers = get_country_tax_with_http_info(country_code_iso3, opts)
      return data
    end

    # Get a single tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<(CountryTaxResource, Fixnum, Hash)>] CountryTaxResource data, response status code and response headers
    def get_country_tax_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_country_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_country_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
        :return_type => 'CountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_country_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to name:ASC)
    # @return [PageResourceCountryTaxResource]
    def get_country_taxes(opts = {})
      data, _status_code, _headers = get_country_taxes_with_http_info(opts)
      return data
    end

    # List and search taxes
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceCountryTaxResource, Fixnum, Hash)>] PageResourceCountryTaxResource data, response status code and response headers
    def get_country_taxes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_country_taxes ..."
      end
      # resource path
      local_var_path = "/tax/countries"

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
        :return_type => 'PageResourceCountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_country_taxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single state tax
    # <b>Permissions Needed:</b> ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [StateTaxResource]
    def get_state_tax(country_code_iso3, state_code, opts = {})
      data, _status_code, _headers = get_state_tax_with_http_info(country_code_iso3, state_code, opts)
      return data
    end

    # Get a single state tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<(StateTaxResource, Fixnum, Hash)>] StateTaxResource data, response status code and response headers
    def get_state_tax_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_state_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_state_tax"
      end
      # verify the required parameter 'state_code' is set
      if @api_client.config.client_side_validation && state_code.nil?
        fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.get_state_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
        :return_type => 'StateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_state_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes across all countries
    # <b>Permissions Needed:</b> ANY
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceStateTaxResource]
    def get_state_taxes_for_countries(opts = {})
      data, _status_code, _headers = get_state_taxes_for_countries_with_http_info(opts)
      return data
    end

    # List and search taxes across all countries
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceStateTaxResource, Fixnum, Hash)>] PageResourceStateTaxResource data, response status code and response headers
    def get_state_taxes_for_countries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_state_taxes_for_countries ..."
      end
      # resource path
      local_var_path = "/tax/states"

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
        :return_type => 'PageResourceStateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_state_taxes_for_countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search taxes within a country
    # <b>Permissions Needed:</b> ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceStateTaxResource]
    def get_state_taxes_for_country(country_code_iso3, opts = {})
      data, _status_code, _headers = get_state_taxes_for_country_with_http_info(country_code_iso3, opts)
      return data
    end

    # List and search taxes within a country
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceStateTaxResource, Fixnum, Hash)>] PageResourceStateTaxResource data, response status code and response headers
    def get_state_taxes_for_country_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.get_state_taxes_for_country ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.get_state_taxes_for_country"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
        :return_type => 'PageResourceStateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#get_state_taxes_for_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update a tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [CountryTaxResource]
    def update_country_tax(country_code_iso3, opts = {})
      data, _status_code, _headers = update_country_tax_with_http_info(country_code_iso3, opts)
      return data
    end

    # Create or update a tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @option opts [CountryTaxResource] :tax_resource The tax object
    # @return [Array<(CountryTaxResource, Fixnum, Hash)>] CountryTaxResource data, response status code and response headers
    def update_country_tax_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_country_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.update_country_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CountryTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_country_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update a state tax
    # <b>Permissions Needed:</b> TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [StateTaxResource]
    def update_state_tax(country_code_iso3, state_code, opts = {})
      data, _status_code, _headers = update_state_tax_with_http_info(country_code_iso3, state_code, opts)
      return data
    end

    # Create or update a state tax
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TAX_ADMIN
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @option opts [StateTaxResource] :tax_resource The tax object
    # @return [Array<(StateTaxResource, Fixnum, Hash)>] StateTaxResource data, response status code and response headers
    def update_state_tax_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxesApi.update_state_tax ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      if @api_client.config.client_side_validation && country_code_iso3.nil?
        fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling TaxesApi.update_state_tax"
      end
      # verify the required parameter 'state_code' is set
      if @api_client.config.client_side_validation && state_code.nil?
        fail ArgumentError, "Missing the required parameter 'state_code' when calling TaxesApi.update_state_tax"
      end
      # resource path
      local_var_path = "/tax/countries/{country_code_iso3}/states/{state_code}".sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'tax_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StateTaxResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxesApi#update_state_tax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
