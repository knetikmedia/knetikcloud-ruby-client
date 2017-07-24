=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module KnetikCloudClient
  class AuthTokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete tokens by username, client id, or both
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The username of the user
    # @option opts [String] :client_id The id of the client
    # @return [nil]
    def delete_tokens(opts = {})
      delete_tokens_with_http_info(opts)
      return nil
    end

    # Delete tokens by username, client id, or both
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username The username of the user
    # @option opts [String] :client_id The id of the client
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthTokensApi.delete_tokens ..."
      end
      # resource path
      local_var_path = "/auth/tokens"

      # query parameters
      query_params = {}
      query_params[:'username'] = opts[:'username'] if !opts[:'username'].nil?
      query_params[:'client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?

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
        @api_client.config.logger.debug "API called: AuthTokensApi#delete_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single token by username and client id
    # 
    # @param username The username of the user
    # @param client_id The id of the client
    # @param [Hash] opts the optional parameters
    # @return [OauthAccessTokenResource]
    def get_token(username, client_id, opts = {})
      data, _status_code, _headers = get_token_with_http_info(username, client_id, opts)
      return data
    end

    # Get a single token by username and client id
    # 
    # @param username The username of the user
    # @param client_id The id of the client
    # @param [Hash] opts the optional parameters
    # @return [Array<(OauthAccessTokenResource, Fixnum, Hash)>] OauthAccessTokenResource data, response status code and response headers
    def get_token_with_http_info(username, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthTokensApi.get_token ..."
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling AuthTokensApi.get_token"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AuthTokensApi.get_token"
      end
      # resource path
      local_var_path = "/auth/tokens/{username}/{client_id}".sub('{' + 'username' + '}', username.to_s).sub('{' + 'client_id' + '}', client_id.to_s)

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
        :return_type => 'OauthAccessTokenResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthTokensApi#get_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List usernames and client ids
    # Token value not shown
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_client_id Filters for token whose client id matches provided string
    # @option opts [String] :filter_username Filters for token whose username matches provided string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceOauthAccessTokenResource]
    def get_tokens(opts = {})
      data, _status_code, _headers = get_tokens_with_http_info(opts)
      return data
    end

    # List usernames and client ids
    # Token value not shown
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_client_id Filters for token whose client id matches provided string
    # @option opts [String] :filter_username Filters for token whose username matches provided string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceOauthAccessTokenResource, Fixnum, Hash)>] PageResourceOauthAccessTokenResource data, response status code and response headers
    def get_tokens_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthTokensApi.get_tokens ..."
      end
      # resource path
      local_var_path = "/auth/tokens"

      # query parameters
      query_params = {}
      query_params[:'filter_client_id'] = opts[:'filter_client_id'] if !opts[:'filter_client_id'].nil?
      query_params[:'filter_username'] = opts[:'filter_username'] if !opts[:'filter_username'].nil?
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
        :return_type => 'PageResourceOauthAccessTokenResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthTokensApi#get_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
