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
  class PaymentsPayPalClassicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a PayPal Classic billing agreement for the user
    # Returns the token that should be used to forward the user to PayPal so they can accept the agreement.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateBillingAgreementRequest] :request The request to create a PayPal billing agreement
    # @return [String]
    def create_pay_pal_billing_agreement_url(opts = {})
      data, _status_code, _headers = create_pay_pal_billing_agreement_url_with_http_info(opts)
      return data
    end

    # Create a PayPal Classic billing agreement for the user
    # Returns the token that should be used to forward the user to PayPal so they can accept the agreement.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateBillingAgreementRequest] :request The request to create a PayPal billing agreement
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_pay_pal_billing_agreement_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsPayPalClassicApi.create_pay_pal_billing_agreement_url ..."
      end
      # resource path
      local_var_path = "/payment/provider/paypal/classic/agreements/start"

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
        @api_client.config.logger.debug "API called: PaymentsPayPalClassicApi#create_pay_pal_billing_agreement_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a payment token for PayPal express checkout
    # Returns the token that should be used to forward the user to PayPal so they can complete the checkout.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayPalPaymentRequest] :request The request to create a PayPal payment token
    # @return [String]
    def create_pay_pal_express_checkout(opts = {})
      data, _status_code, _headers = create_pay_pal_express_checkout_with_http_info(opts)
      return data
    end

    # Create a payment token for PayPal express checkout
    # Returns the token that should be used to forward the user to PayPal so they can complete the checkout.
    # @param [Hash] opts the optional parameters
    # @option opts [CreatePayPalPaymentRequest] :request The request to create a PayPal payment token
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_pay_pal_express_checkout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsPayPalClassicApi.create_pay_pal_express_checkout ..."
      end
      # resource path
      local_var_path = "/payment/provider/paypal/classic/checkout/start"

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
        @api_client.config.logger.debug "API called: PaymentsPayPalClassicApi#create_pay_pal_express_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalizes a billing agreement after the user has accepted through PayPal
    # Returns the ID of the new payment method created for the user for the billing agreement.
    # @param [Hash] opts the optional parameters
    # @option opts [FinalizeBillingAgreementRequest] :request The request to finalize a PayPal billing agreement
    # @return [Integer]
    def finalize_pay_pal_billing_agreement(opts = {})
      data, _status_code, _headers = finalize_pay_pal_billing_agreement_with_http_info(opts)
      return data
    end

    # Finalizes a billing agreement after the user has accepted through PayPal
    # Returns the ID of the new payment method created for the user for the billing agreement.
    # @param [Hash] opts the optional parameters
    # @option opts [FinalizeBillingAgreementRequest] :request The request to finalize a PayPal billing agreement
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def finalize_pay_pal_billing_agreement_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsPayPalClassicApi.finalize_pay_pal_billing_agreement ..."
      end
      # resource path
      local_var_path = "/payment/provider/paypal/classic/agreements/finish"

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
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsPayPalClassicApi#finalize_pay_pal_billing_agreement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Finalizes a payment after the user has completed checkout with PayPal
    # The invoice will be marked paid/failed by asynchronous IPN callback.
    # @param [Hash] opts the optional parameters
    # @option opts [FinalizePayPalPaymentRequest] :request The request to finalize the payment
    # @return [nil]
    def finalize_pay_pal_checkout(opts = {})
      finalize_pay_pal_checkout_with_http_info(opts)
      return nil
    end

    # Finalizes a payment after the user has completed checkout with PayPal
    # The invoice will be marked paid/failed by asynchronous IPN callback.
    # @param [Hash] opts the optional parameters
    # @option opts [FinalizePayPalPaymentRequest] :request The request to finalize the payment
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finalize_pay_pal_checkout_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsPayPalClassicApi.finalize_pay_pal_checkout ..."
      end
      # resource path
      local_var_path = "/payment/provider/paypal/classic/checkout/finish"

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsPayPalClassicApi#finalize_pay_pal_checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end