=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class BRERuleEngineGlobalsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a global definition
    # Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.
    # @param [Hash] opts the optional parameters
    # @option opts [BreGlobalResource] :bre_global_resource The BRE global resource object
    # @return [BreGlobalResource]
    def create_global_using_post(opts = {})
      data, _status_code, _headers = create_global_using_post_with_http_info(opts)
      return data
    end

    # Create a global definition
    # Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.
    # @param [Hash] opts the optional parameters
    # @option opts [BreGlobalResource] :bre_global_resource The BRE global resource object
    # @return [Array<(BreGlobalResource, Fixnum, Hash)>] BreGlobalResource data, response status code and response headers
    def create_global_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineGlobalsApi.create_global_using_post ..."
      end
      # resource path
      local_var_path = "/bre/globals/definitions".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'bre_global_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BreGlobalResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineGlobalsApi#create_global_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a global
    # May fail if there are existing rules against it. Cannot delete core globals
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_global_using_delete(id, opts = {})
      delete_global_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a global
    # May fail if there are existing rules against it. Cannot delete core globals
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_global_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineGlobalsApi.delete_global_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineGlobalsApi.delete_global_using_delete" if id.nil?
      # resource path
      local_var_path = "/bre/globals/definitions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BRERuleEngineGlobalsApi#delete_global_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single global definition
    # 
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @return [BreGlobalResource]
    def get_global_using_get(id, opts = {})
      data, _status_code, _headers = get_global_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single global definition
    # 
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @return [Array<(BreGlobalResource, Fixnum, Hash)>] BreGlobalResource data, response status code and response headers
    def get_global_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineGlobalsApi.get_global_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineGlobalsApi.get_global_using_get" if id.nil?
      # resource path
      local_var_path = "/bre/globals/definitions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BreGlobalResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineGlobalsApi#get_global_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List global definitions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_system Filter for globals that are system globals when true, or not when false. Leave off for both mixed
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageBreGlobalResource]
    def get_globals_using_get(opts = {})
      data, _status_code, _headers = get_globals_using_get_with_http_info(opts)
      return data
    end

    # List global definitions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_system Filter for globals that are system globals when true, or not when false. Leave off for both mixed
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageBreGlobalResource, Fixnum, Hash)>] PageBreGlobalResource data, response status code and response headers
    def get_globals_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineGlobalsApi.get_globals_using_get ..."
      end
      # resource path
      local_var_path = "/bre/globals/definitions".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_system'] = opts[:'filter_system'] if !opts[:'filter_system'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
        :return_type => 'PageBreGlobalResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineGlobalsApi#get_globals_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a global definition
    # May fail if new parameters mismatch requirements of existing rules. Cannot update core globals
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @option opts [BreGlobalResource] :bre_global_resource The BRE global resource object
    # @return [nil]
    def update_global_using_put(id, opts = {})
      update_global_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a global definition
    # May fail if new parameters mismatch requirements of existing rules. Cannot update core globals
    # @param id The id of the global definition
    # @param [Hash] opts the optional parameters
    # @option opts [BreGlobalResource] :bre_global_resource The BRE global resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_global_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineGlobalsApi.update_global_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling BRERuleEngineGlobalsApi.update_global_using_put" if id.nil?
      # resource path
      local_var_path = "/bre/globals/definitions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'bre_global_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineGlobalsApi#update_global_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
