=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class PaymentsGoogleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Mark an invoice paid with Google
    # Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.
    # @param [Hash] opts the optional parameters
    # @option opts [GooglePaymentRequest] :request The request for paying an invoice through a Google in-app payment
    # @return [Integer]
    def handle_payment_using_post(opts = {})
      data, _status_code, _headers = handle_payment_using_post_with_http_info(opts)
      return data
    end

    # Mark an invoice paid with Google
    # Mark an invoice paid with Google. Verifies signature from Google and treats the developerPayload field inside the json payload as the id of the invoice to pay. Returns the transaction ID if successful.
    # @param [Hash] opts the optional parameters
    # @option opts [GooglePaymentRequest] :request The request for paying an invoice through a Google in-app payment
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def handle_payment_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsGoogleApi.handle_payment_using_post ..."
      end
      # resource path
      local_var_path = "/payment/provider/google/payments".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'request'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsGoogleApi#handle_payment_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
