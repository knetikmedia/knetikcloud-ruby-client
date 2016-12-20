=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new config
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Config] :config The config object
    # @return [Config]
    def create_config_using_post(opts = {})
      data, _status_code, _headers = create_config_using_post_with_http_info(opts)
      return data
    end

    # Create a new config
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Config] :config The config object
    # @return [Array<(Config, Fixnum, Hash)>] Config data, response status code and response headers
    def create_config_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigsApi.create_config_using_post ..."
      end
      # resource path
      local_var_path = "/configs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'config'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Config')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigsApi#create_config_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing config
    # 
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_config_using_delete(name, opts = {})
      delete_config_using_delete_with_http_info(name, opts)
      return nil
    end

    # Delete an existing config
    # 
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_config_using_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigsApi.delete_config_using_delete ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling ConfigsApi.delete_config_using_delete" if name.nil?
      # resource path
      local_var_path = "/configs/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: ConfigsApi#delete_config_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single config
    # Only configs that are public readable will be shown without admin access
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @return [Config]
    def get_config_using_get(name, opts = {})
      data, _status_code, _headers = get_config_using_get_with_http_info(name, opts)
      return data
    end

    # Get a single config
    # Only configs that are public readable will be shown without admin access
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Config, Fixnum, Hash)>] Config data, response status code and response headers
    def get_config_using_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigsApi.get_config_using_get ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling ConfigsApi.get_config_using_get" if name.nil?
      # resource path
      local_var_path = "/configs/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'Config')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigsApi#get_config_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search configs
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_search Filter for configs whose name contains the given string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageConfig]
    def get_configs_using_get(opts = {})
      data, _status_code, _headers = get_configs_using_get_with_http_info(opts)
      return data
    end

    # List and search configs
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_search Filter for configs whose name contains the given string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageConfig, Fixnum, Hash)>] PageConfig data, response status code and response headers
    def get_configs_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigsApi.get_configs_using_get ..."
      end
      # resource path
      local_var_path = "/configs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_search'] = opts[:'filter_search'] if !opts[:'filter_search'].nil?
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
        :return_type => 'PageConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigsApi#get_configs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing config
    # 
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @option opts [Config] :config The config object
    # @return [nil]
    def update_config_using_put(name, opts = {})
      update_config_using_put_with_http_info(name, opts)
      return nil
    end

    # Update an existing config
    # 
    # @param name The config name
    # @param [Hash] opts the optional parameters
    # @option opts [Config] :config The config object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_config_using_put_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigsApi.update_config_using_put ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling ConfigsApi.update_config_using_put" if name.nil?
      # resource path
      local_var_path = "/configs/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'config'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigsApi#update_config_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
