=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UtilSecurityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns the authentication log for a user
    # A log entry is recorded everytime a user requests a new token. Standard pagination available
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The user id
    # @return [PageResourceLocationLogResource]
    def get_user_location_log(opts = {})
      data, _status_code, _headers = get_user_location_log_with_http_info(opts)
      return data
    end

    # Returns the authentication log for a user
    # A log entry is recorded everytime a user requests a new token. Standard pagination available
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :user_id The user id
    # @return [Array<(PageResourceLocationLogResource, Fixnum, Hash)>] PageResourceLocationLogResource data, response status code and response headers
    def get_user_location_log_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilSecurityApi.get_user_location_log ..."
      end
      # resource path
      local_var_path = "/security/country-log".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'user_id'] = opts[:'user_id'] if !opts[:'user_id'].nil?

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
        :return_type => 'PageResourceLocationLogResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilSecurityApi#get_user_location_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the authentication token details. Use /users endpoint for detailed user's info
    # 
    # @param [Hash] opts the optional parameters
    # @return [TokenDetailsResource]
    def get_user_token_details(opts = {})
      data, _status_code, _headers = get_user_token_details_with_http_info(opts)
      return data
    end

    # Returns the authentication token details. Use /users endpoint for detailed user&#39;s info
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenDetailsResource, Fixnum, Hash)>] TokenDetailsResource data, response status code and response headers
    def get_user_token_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilSecurityApi.get_user_token_details ..."
      end
      # resource path
      local_var_path = "/me".sub('{format}','json')

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
        :return_type => 'TokenDetailsResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilSecurityApi#get_user_token_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
