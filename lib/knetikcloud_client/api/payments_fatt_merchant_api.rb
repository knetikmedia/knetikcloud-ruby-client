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
  class PaymentsFattMerchantApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create or update a FattMerchant payment method for a user
    # Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [FattMerchantPaymentMethodRequest] :request Request containing payment method information for user
    # @return [PaymentMethodResource]
    def create_or_update_fatt_merchant_payment_method(opts = {})
      data, _status_code, _headers = create_or_update_fatt_merchant_payment_method_with_http_info(opts)
      return data
    end

    # Create or update a FattMerchant payment method for a user
    # Stores customer information and creates a payment method that can be used to pay invoices through the payments endpoints.
    # @param [Hash] opts the optional parameters
    # @option opts [FattMerchantPaymentMethodRequest] :request Request containing payment method information for user
    # @return [Array<(PaymentMethodResource, Fixnum, Hash)>] PaymentMethodResource data, response status code and response headers
    def create_or_update_fatt_merchant_payment_method_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsFattMerchantApi.create_or_update_fatt_merchant_payment_method ..."
      end
      # resource path
      local_var_path = "/payment/provider/fattmerchant/payment-methods"

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentMethodResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsFattMerchantApi#create_or_update_fatt_merchant_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
