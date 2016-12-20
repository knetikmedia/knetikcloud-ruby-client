=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class DispositionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new disposition. 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [DispositionResource] :disposition The new disposition record
    # @return [DispositionResource]
    def add_disposition_using_post(opts = {})
      data, _status_code, _headers = add_disposition_using_post_with_http_info(opts)
      return data
    end

    # Add a new disposition. 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [DispositionResource] :disposition The new disposition record
    # @return [Array<(DispositionResource, Fixnum, Hash)>] DispositionResource data, response status code and response headers
    def add_disposition_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DispositionsApi.add_disposition_using_post ..."
      end
      # resource path
      local_var_path = "/dispositions".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'disposition'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DispositionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DispositionsApi#add_disposition_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a disposition
    # 
    # @param id The id of the disposition record
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_disposition_using_delete(id, opts = {})
      delete_disposition_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a disposition
    # 
    # @param id The id of the disposition record
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_disposition_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DispositionsApi.delete_disposition_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DispositionsApi.delete_disposition_using_delete" if id.nil?
      # resource path
      local_var_path = "/dispositions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: DispositionsApi#delete_disposition_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of disposition counts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47
    # @option opts [String] :filter_owner Filter for dispositions from a specific user by id or &#39;me&#39;
    # @return [Array<DispositionCount>]
    def get_disposition_count_using_get(opts = {})
      data, _status_code, _headers = get_disposition_count_using_get_with_http_info(opts)
      return data
    end

    # Returns a list of disposition counts
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47
    # @option opts [String] :filter_owner Filter for dispositions from a specific user by id or &#39;me&#39;
    # @return [Array<(Array<DispositionCount>, Fixnum, Hash)>] Array<DispositionCount> data, response status code and response headers
    def get_disposition_count_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DispositionsApi.get_disposition_count_using_get ..."
      end
      # resource path
      local_var_path = "/dispositions/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_context'] = opts[:'filter_context'] if !opts[:'filter_context'].nil?
      query_params[:'filter_owner'] = opts[:'filter_owner'] if !opts[:'filter_owner'].nil?

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
        :return_type => 'Array<DispositionCount>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DispositionsApi#get_disposition_count_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a disposition
    # 
    # @param id The id of the disposition record
    # @param [Hash] opts the optional parameters
    # @return [DispositionResource]
    def get_disposition_using_get(id, opts = {})
      data, _status_code, _headers = get_disposition_using_get_with_http_info(id, opts)
      return data
    end

    # Returns a disposition
    # 
    # @param id The id of the disposition record
    # @param [Hash] opts the optional parameters
    # @return [Array<(DispositionResource, Fixnum, Hash)>] DispositionResource data, response status code and response headers
    def get_disposition_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DispositionsApi.get_disposition_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DispositionsApi.get_disposition_using_get" if id.nil?
      # resource path
      local_var_path = "/dispositions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'DispositionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DispositionsApi#get_disposition_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a page of dispositions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47
    # @option opts [String] :filter_owner Filter for dispositions from a specific user by id or &#39;me&#39;
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageDispositionResource]
    def get_dispositions_using_get(opts = {})
      data, _status_code, _headers = get_dispositions_using_get_with_http_info(opts)
      return data
    end

    # Returns a page of dispositions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47
    # @option opts [String] :filter_owner Filter for dispositions from a specific user by id or &#39;me&#39;
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageDispositionResource, Fixnum, Hash)>] PageDispositionResource data, response status code and response headers
    def get_dispositions_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DispositionsApi.get_dispositions_using_get ..."
      end
      # resource path
      local_var_path = "/dispositions".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_context'] = opts[:'filter_context'] if !opts[:'filter_context'].nil?
      query_params[:'filter_owner'] = opts[:'filter_owner'] if !opts[:'filter_owner'].nil?
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
        :return_type => 'PageDispositionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DispositionsApi#get_dispositions_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
