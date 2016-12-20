=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class LocationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of a state's cities
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<CityResource>]
    def cities_using_get(country_code_iso3, state_code, opts = {})
      data, _status_code, _headers = cities_using_get_with_http_info(country_code_iso3, state_code, opts)
      return data
    end

    # Get a list of a state&#39;s cities
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param state_code The code of the state
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CityResource>, Fixnum, Hash)>] Array<CityResource> data, response status code and response headers
    def cities_using_get_with_http_info(country_code_iso3, state_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationsApi.cities_using_get ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling LocationsApi.cities_using_get" if country_code_iso3.nil?
      # verify the required parameter 'state_code' is set
      fail ArgumentError, "Missing the required parameter 'state_code' when calling LocationsApi.cities_using_get" if state_code.nil?
      # resource path
      local_var_path = "/location/countries/{country_code_iso3}/states/{state_code}/cities".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s).sub('{' + 'state_code' + '}', state_code.to_s)

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
        :return_type => 'Array<CityResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#cities_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of countries
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<CountryResource>]
    def countries_using_get(opts = {})
      data, _status_code, _headers = countries_using_get_with_http_info(opts)
      return data
    end

    # Get a list of countries
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CountryResource>, Fixnum, Hash)>] Array<CountryResource> data, response status code and response headers
    def countries_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationsApi.countries_using_get ..."
      end
      # resource path
      local_var_path = "/location/countries".sub('{format}','json')

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
        :return_type => 'Array<CountryResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#countries_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the currency information of your country
    # Determined by geo ip location, currency to country mapping and a fallback setting
    # @param [Hash] opts the optional parameters
    # @return [CurrencyResource]
    def get_currency_by_geo_location_using_get(opts = {})
      data, _status_code, _headers = get_currency_by_geo_location_using_get_with_http_info(opts)
      return data
    end

    # Get the currency information of your country
    # Determined by geo ip location, currency to country mapping and a fallback setting
    # @param [Hash] opts the optional parameters
    # @return [Array<(CurrencyResource, Fixnum, Hash)>] CurrencyResource data, response status code and response headers
    def get_currency_by_geo_location_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationsApi.get_currency_by_geo_location_using_get ..."
      end
      # resource path
      local_var_path = "/location/geolocation/currency".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: LocationsApi#get_currency_by_geo_location_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the iso3 code of your country
    # Determined by geo ip location
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_geo_location_country_using_get(opts = {})
      data, _status_code, _headers = get_geo_location_country_using_get_with_http_info(opts)
      return data
    end

    # Get the iso3 code of your country
    # Determined by geo ip location
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_geo_location_country_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationsApi.get_geo_location_country_using_get ..."
      end
      # resource path
      local_var_path = "/location/geolocation/country".sub('{format}','json')

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#get_geo_location_country_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of a country's states
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<StateResource>]
    def states_using_get(country_code_iso3, opts = {})
      data, _status_code, _headers = states_using_get_with_http_info(country_code_iso3, opts)
      return data
    end

    # Get a list of a country&#39;s states
    # 
    # @param country_code_iso3 The iso3 code of the country
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<StateResource>, Fixnum, Hash)>] Array<StateResource> data, response status code and response headers
    def states_using_get_with_http_info(country_code_iso3, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationsApi.states_using_get ..."
      end
      # verify the required parameter 'country_code_iso3' is set
      fail ArgumentError, "Missing the required parameter 'country_code_iso3' when calling LocationsApi.states_using_get" if country_code_iso3.nil?
      # resource path
      local_var_path = "/location/countries/{country_code_iso3}/states".sub('{format}','json').sub('{' + 'country_code_iso3' + '}', country_code_iso3.to_s)

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
        :return_type => 'Array<StateResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationsApi#states_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end