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
  class PaymentsOptimalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Initiate silent post with Optimal
    # Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.
    # @param [Hash] opts the optional parameters
    # @option opts [OptimalPaymentRequest] :request The payment request to initiate
    # @return [String]
    def silent_post_optimal(opts = {})
      data, _status_code, _headers = silent_post_optimal_with_http_info(opts)
      return data
    end

    # Initiate silent post with Optimal
    # Will return the url for a hosted payment endpoint to post to. See Optimal documentation for details.
    # @param [Hash] opts the optional parameters
    # @option opts [OptimalPaymentRequest] :request The payment request to initiate
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def silent_post_optimal_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsOptimalApi.silent_post_optimal ..."
      end
      # resource path
      local_var_path = "/payment/provider/optimal/silent"

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
      post_body = @api_client.object_to_http_body(opts[:'request'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsOptimalApi#silent_post_optimal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
