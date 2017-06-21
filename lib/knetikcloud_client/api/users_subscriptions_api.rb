=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
  class UsersSubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get details about a user's subscription
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @return [InventorySubscriptionResource]
    def get_user_subscription_details(user_id, inventory_id, opts = {})
      data, _status_code, _headers = get_user_subscription_details_with_http_info(user_id, inventory_id, opts)
      return data
    end

    # Get details about a user&#39;s subscription
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @return [Array<(InventorySubscriptionResource, Fixnum, Hash)>] InventorySubscriptionResource data, response status code and response headers
    def get_user_subscription_details_with_http_info(user_id, inventory_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.get_user_subscription_details ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.get_user_subscription_details" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.get_user_subscription_details" if inventory_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
        :return_type => 'InventorySubscriptionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#get_user_subscription_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details about a user's subscriptions
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<InventorySubscriptionResource>]
    def get_users_subscription_details(user_id, opts = {})
      data, _status_code, _headers = get_users_subscription_details_with_http_info(user_id, opts)
      return data
    end

    # Get details about a user&#39;s subscriptions
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InventorySubscriptionResource>, Fixnum, Hash)>] Array<InventorySubscriptionResource> data, response status code and response headers
    def get_users_subscription_details_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.get_users_subscription_details ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.get_users_subscription_details" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions".sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'Array<InventorySubscriptionResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#get_users_subscription_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reactivate a subscription and charge fee
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [ReactivateSubscriptionRequest] :reactivate_subscription_request The reactivate subscription request object inventory
    # @return [InvoiceResource]
    def reactivate_user_subscription(user_id, inventory_id, opts = {})
      data, _status_code, _headers = reactivate_user_subscription_with_http_info(user_id, inventory_id, opts)
      return data
    end

    # Reactivate a subscription and charge fee
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [ReactivateSubscriptionRequest] :reactivate_subscription_request The reactivate subscription request object inventory
    # @return [Array<(InvoiceResource, Fixnum, Hash)>] InvoiceResource data, response status code and response headers
    def reactivate_user_subscription_with_http_info(user_id, inventory_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.reactivate_user_subscription ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.reactivate_user_subscription" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.reactivate_user_subscription" if inventory_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}/reactivate".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'reactivate_subscription_request'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InvoiceResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#reactivate_user_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a new date to bill a subscription on
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param bill_date The new bill date. Unix timestamp in seconds
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_subscription_bill_date(user_id, inventory_id, bill_date, opts = {})
      set_subscription_bill_date_with_http_info(user_id, inventory_id, bill_date, opts)
      return nil
    end

    # Set a new date to bill a subscription on
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param bill_date The new bill date. Unix timestamp in seconds
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_subscription_bill_date_with_http_info(user_id, inventory_id, bill_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.set_subscription_bill_date ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.set_subscription_bill_date" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.set_subscription_bill_date" if inventory_id.nil?
      # verify the required parameter 'bill_date' is set
      fail ArgumentError, "Missing the required parameter 'bill_date' when calling UsersSubscriptionsApi.set_subscription_bill_date" if bill_date.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}/bill-date".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
      post_body = @api_client.object_to_http_body(bill_date)
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#set_subscription_bill_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the payment method to use for a subscription
    # May send null to use floating default
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :payment_method_id The id of the payment method
    # @return [nil]
    def set_subscription_payment_method(user_id, inventory_id, opts = {})
      set_subscription_payment_method_with_http_info(user_id, inventory_id, opts)
      return nil
    end

    # Set the payment method to use for a subscription
    # May send null to use floating default
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :payment_method_id The id of the payment method
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_subscription_payment_method_with_http_info(user_id, inventory_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.set_subscription_payment_method ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.set_subscription_payment_method" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.set_subscription_payment_method" if inventory_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}/payment-method".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'payment_method_id'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#set_subscription_payment_method\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the status of a subscription
    # The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param status The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_subscription_status(user_id, inventory_id, status, opts = {})
      set_subscription_status_with_http_info(user_id, inventory_id, status, opts)
      return nil
    end

    # Set the status of a subscription
    # The body is a json string (put in quotes) that should match a desired invoice status type. Note that the new status may be blocked if the system is not configured to allow the current status to be changed to the new, to enforce proper flow. The default options for statuses are shown below but may be altered for special use cases
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param status The new status for the subscription. Actual options may differ from the indicated set if the invoice status type data has been altered.  Allowable values: (&#39;current&#39;, &#39;canceled&#39;, &#39;stopped&#39;, &#39;payment_failed&#39;, &#39;suspended&#39;)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_subscription_status_with_http_info(user_id, inventory_id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.set_subscription_status ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.set_subscription_status" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.set_subscription_status" if inventory_id.nil?
      # verify the required parameter 'status' is set
      fail ArgumentError, "Missing the required parameter 'status' when calling UsersSubscriptionsApi.set_subscription_status" if status.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}/status".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#set_subscription_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a new subscription plan for a user
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :plan_id The id of the new plan. Must be from the same subscription
    # @return [nil]
    def set_user_subscription_plan(user_id, inventory_id, opts = {})
      set_user_subscription_plan_with_http_info(user_id, inventory_id, opts)
      return nil
    end

    # Set a new subscription plan for a user
    # 
    # @param user_id The id of the user
    # @param inventory_id The id of the user&#39;s inventory
    # @param [Hash] opts the optional parameters
    # @option opts [String] :plan_id The id of the new plan. Must be from the same subscription
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_user_subscription_plan_with_http_info(user_id, inventory_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersSubscriptionsApi.set_user_subscription_plan ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersSubscriptionsApi.set_user_subscription_plan" if user_id.nil?
      # verify the required parameter 'inventory_id' is set
      fail ArgumentError, "Missing the required parameter 'inventory_id' when calling UsersSubscriptionsApi.set_user_subscription_plan" if inventory_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/subscriptions/{inventory_id}/plan".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'inventory_id' + '}', inventory_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'plan_id'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersSubscriptionsApi#set_user_subscription_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end