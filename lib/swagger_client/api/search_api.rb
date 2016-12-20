=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new object to an index
    # Mainly intended for internal use.
    # @param type The index type
    # @param id The ID of the object
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :object The object to add
    # @return [nil]
    def external_add_using_post(type, id, opts = {})
      external_add_using_post_with_http_info(type, id, opts)
      return nil
    end

    # Add a new object to an index
    # Mainly intended for internal use.
    # @param type The index type
    # @param id The ID of the object
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :object The object to add
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def external_add_using_post_with_http_info(type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.external_add_using_post ..."
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling SearchApi.external_add_using_post" if type.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SearchApi.external_add_using_post" if id.nil?
      # resource path
      local_var_path = "/search/index/{type}/{id}".sub('{format}','json').sub('{' + 'type' + '}', type.to_s).sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'object'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#external_add_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all objects in an index
    # Mainly intended for internal use
    # @param type The index type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def external_delete_all_using_delete(type, opts = {})
      external_delete_all_using_delete_with_http_info(type, opts)
      return nil
    end

    # Delete all objects in an index
    # Mainly intended for internal use
    # @param type The index type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def external_delete_all_using_delete_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.external_delete_all_using_delete ..."
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling SearchApi.external_delete_all_using_delete" if type.nil?
      # resource path
      local_var_path = "/search/index/{type}".sub('{format}','json').sub('{' + 'type' + '}', type.to_s)

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#external_delete_all_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an object
    # Mainly intended for internal use. Requires SEARCH_ADMIN.
    # @param type The index type
    # @param id The ID of the object to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def external_delete_using_delete(type, id, opts = {})
      external_delete_using_delete_with_http_info(type, id, opts)
      return nil
    end

    # Delete an object
    # Mainly intended for internal use. Requires SEARCH_ADMIN.
    # @param type The index type
    # @param id The ID of the object to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def external_delete_using_delete_with_http_info(type, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.external_delete_using_delete ..."
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling SearchApi.external_delete_using_delete" if type.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SearchApi.external_delete_using_delete" if id.nil?
      # resource path
      local_var_path = "/search/index/{type}/{id}".sub('{format}','json').sub('{' + 'type' + '}', type.to_s).sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#external_delete_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register reference mappings
    # Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<SearchReferenceMapping>] :mappings The mappings to add
    # @return [nil]
    def external_register_using_post(opts = {})
      external_register_using_post_with_http_info(opts)
      return nil
    end

    # Register reference mappings
    # Add a new type mapping to connect data from one index to another, or discover an exsting one. Mainly intended for internal use.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<SearchReferenceMapping>] :mappings The mappings to add
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def external_register_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.external_register_using_post ..."
      end
      # resource path
      local_var_path = "/search/mappings".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'mappings'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#external_register_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search an index
    # The body is an ElasticSearch query in JSON format. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html'>documentation</a> for details on the format and search options. The searchable object's format depends on on the type. See individual search endpoints on other resources for details on their format.
    # @param type The index type
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :query The query to be used for the search
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageMapstringobject]
    def search_using_post(type, opts = {})
      data, _status_code, _headers = search_using_post_with_http_info(type, opts)
      return data
    end

    # Search an index
    # The body is an ElasticSearch query in JSON format. Please see their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html&#39;&gt;documentation&lt;/a&gt; for details on the format and search options. The searchable object&#39;s format depends on on the type. See individual search endpoints on other resources for details on their format.
    # @param type The index type
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :query The query to be used for the search
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageMapstringobject, Fixnum, Hash)>] PageMapstringobject data, response status code and response headers
    def search_using_post_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.search_using_post ..."
      end
      # verify the required parameter 'type' is set
      fail ArgumentError, "Missing the required parameter 'type' when calling SearchApi.search_using_post" if type.nil?
      # resource path
      local_var_path = "/search/index/{type}".sub('{format}','json').sub('{' + 'type' + '}', type.to_s)

      # query parameters
      query_params = {}
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
      post_body = @api_client.object_to_http_body(opts[:'query'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageMapstringobject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#search_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
