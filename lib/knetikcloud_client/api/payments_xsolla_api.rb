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
  class PaymentsXsollaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a payment token that should be used to forward the user to Xsolla so they can complete payment
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [XsollaPaymentRequest] :request The payment request to be sent to XSolla
    # @return [String]
    def create_xsolla_token_url(opts = {})
      data, _status_code, _headers = create_xsolla_token_url_with_http_info(opts)
      return data
    end

    # Create a payment token that should be used to forward the user to Xsolla so they can complete payment
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [XsollaPaymentRequest] :request The payment request to be sent to XSolla
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_xsolla_token_url_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsXsollaApi.create_xsolla_token_url ..."
      end
      # resource path
      local_var_path = "/payment/provider/xsolla/payment"

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsXsollaApi#create_xsolla_token_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Receives payment response from Xsolla
    # Only used by Xsolla to call back to JSAPI after processing user payment action
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def receive_xsolla_notification(opts = {})
      receive_xsolla_notification_with_http_info(opts)
      return nil
    end

    # Receives payment response from Xsolla
    # Only used by Xsolla to call back to JSAPI after processing user payment action
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def receive_xsolla_notification_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsXsollaApi.receive_xsolla_notification ..."
      end
      # resource path
      local_var_path = "/payment/provider/xsolla/notifications"

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsXsollaApi#receive_xsolla_notification\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
