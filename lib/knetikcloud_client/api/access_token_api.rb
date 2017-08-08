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
  class AccessTokenApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get access token
    # 
    # @param grant_type Grant type
    # @param client_id The id of the client
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_secret The secret key of the client.  Used only with a grant_type of client_credentials
    # @option opts [String] :username The username of the client.  Used only with a grant_type of password
    # @option opts [String] :password The password of the client.  Used only with a grant_type of password
    # @return [OAuth2Resource]
    def get_o_auth_token(grant_type, client_id, opts = {})
      data, _status_code, _headers = get_o_auth_token_with_http_info(grant_type, client_id, opts)
      return data
    end

    # Get access token
    # 
    # @param grant_type Grant type
    # @param client_id The id of the client
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_secret The secret key of the client.  Used only with a grant_type of client_credentials
    # @option opts [String] :username The username of the client.  Used only with a grant_type of password
    # @option opts [String] :password The password of the client.  Used only with a grant_type of password
    # @return [Array<(OAuth2Resource, Fixnum, Hash)>] OAuth2Resource data, response status code and response headers
    def get_o_auth_token_with_http_info(grant_type, client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccessTokenApi.get_o_auth_token ..."
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling AccessTokenApi.get_o_auth_token"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['client_credentials', 'password'].include?(grant_type)
        fail ArgumentError, "invalid value for 'grant_type', must be one of client_credentials, password"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AccessTokenApi.get_o_auth_token"
      end
      # resource path
      local_var_path = "/oauth/token"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["grant_type"] = grant_type
      form_params["client_id"] = client_id
      form_params["client_secret"] = opts[:'client_secret'] if !opts[:'client_secret'].nil?
      form_params["username"] = opts[:'username'] if !opts[:'username'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OAuth2Resource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessTokenApi#get_o_auth_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
