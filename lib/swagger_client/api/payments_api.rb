=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being created
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentMethodResource] :payment_method Payment method being created
    # @return [PaymentMethodResource]
    def create_payment_method_using_post(user_id, opts = {})
      data, _status_code, _headers = create_payment_method_using_post_with_http_info(user_id, opts)
      return data
    end

    # Create a new payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being created
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentMethodResource] :payment_method Payment method being created
    # @return [Array<(PaymentMethodResource, Fixnum, Hash)>] PaymentMethodResource data, response status code and response headers
    def create_payment_method_using_post_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.create_payment_method_using_post ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsApi.create_payment_method_using_post" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/payment-methods".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'payment_method'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentMethodResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create_payment_method_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being updated
    # @param id ID of the payment method being deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payment_method_using_delete(user_id, id, opts = {})
      delete_payment_method_using_delete_with_http_info(user_id, id, opts)
      return nil
    end

    # Delete an existing payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being updated
    # @param id ID of the payment method being deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_payment_method_using_delete_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.delete_payment_method_using_delete ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsApi.delete_payment_method_using_delete" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.delete_payment_method_using_delete" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/payment-methods/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#delete_payment_method_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being retrieved
    # @param id ID of the payment method being retrieved
    # @param [Hash] opts the optional parameters
    # @return [PaymentMethodResource]
    def get_payment_method_using_get(user_id, id, opts = {})
      data, _status_code, _headers = get_payment_method_using_get_with_http_info(user_id, id, opts)
      return data
    end

    # Get a single payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being retrieved
    # @param id ID of the payment method being retrieved
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentMethodResource, Fixnum, Hash)>] PaymentMethodResource data, response status code and response headers
    def get_payment_method_using_get_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.get_payment_method_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsApi.get_payment_method_using_get" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.get_payment_method_using_get" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/payment-methods/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentMethodResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment_method_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all payment methods for a user
    # 
    # @param user_id ID of the user for whom the payment methods are being retrieved
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [Array<PaymentMethodResource>]
    def get_payment_methods_using_get(user_id, opts = {})
      data, _status_code, _headers = get_payment_methods_using_get_with_http_info(user_id, opts)
      return data
    end

    # Get all payment methods for a user
    # 
    # @param user_id ID of the user for whom the payment methods are being retrieved
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(Array<PaymentMethodResource>, Fixnum, Hash)>] Array<PaymentMethodResource> data, response status code and response headers
    def get_payment_methods_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.get_payment_methods_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsApi.get_payment_methods_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/payment-methods".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}
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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<PaymentMethodResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment_methods_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Authorize payment of an invoice for later capture
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentAuthorizationResource] :request Payment authorization request
    # @return [PaymentAuthorizationResource]
    def payment_authorization_using_post(opts = {})
      data, _status_code, _headers = payment_authorization_using_post_with_http_info(opts)
      return data
    end

    # Authorize payment of an invoice for later capture
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentAuthorizationResource] :request Payment authorization request
    # @return [Array<(PaymentAuthorizationResource, Fixnum, Hash)>] PaymentAuthorizationResource data, response status code and response headers
    def payment_authorization_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.payment_authorization_using_post ..."
      end
      # resource path
      local_var_path = "/payment/authorizations".sub('{format}','json')

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentAuthorizationResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#payment_authorization_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture an existing invoice payment authorization
    # 
    # @param id ID of the payment authorization to capture
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def payment_capture_using_post(id, opts = {})
      payment_capture_using_post_with_http_info(id, opts)
      return nil
    end

    # Capture an existing invoice payment authorization
    # 
    # @param id ID of the payment authorization to capture
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def payment_capture_using_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.payment_capture_using_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.payment_capture_using_post" if id.nil?
      # resource path
      local_var_path = "/payment/authorizations/{id}/capture".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#payment_capture_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being updated
    # @param id ID of the payment method being updated
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentMethodResource] :payment_method The updated payment method data
    # @return [nil]
    def update_payment_method_using_put(user_id, id, opts = {})
      update_payment_method_using_put_with_http_info(user_id, id, opts)
      return nil
    end

    # Update an existing payment method for a user
    # 
    # @param user_id ID of the user for whom the payment method is being updated
    # @param id ID of the payment method being updated
    # @param [Hash] opts the optional parameters
    # @option opts [PaymentMethodResource] :payment_method The updated payment method data
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_payment_method_using_put_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentsApi.update_payment_method_using_put ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling PaymentsApi.update_payment_method_using_put" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.update_payment_method_using_put" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/payment-methods/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'payment_method'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#update_payment_method_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
