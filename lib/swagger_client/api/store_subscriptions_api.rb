=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class StoreSubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a subscription template
    # Subscription Templates define a type of subscription and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionTemplateResource] :subscription_template_resource The new subscription template
    # @return [SubscriptionTemplateResource]
    def create_subscription_template_using_post(opts = {})
      data, _status_code, _headers = create_subscription_template_using_post_with_http_info(opts)
      return data
    end

    # Create a subscription template
    # Subscription Templates define a type of subscription and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionTemplateResource] :subscription_template_resource The new subscription template
    # @return [Array<(SubscriptionTemplateResource, Fixnum, Hash)>] SubscriptionTemplateResource data, response status code and response headers
    def create_subscription_template_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.create_subscription_template_using_post ..."
      end
      # resource path
      local_var_path = "/subscriptions/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'subscription_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#create_subscription_template_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a subscription item and associated plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionResource] :subscription_resource The subscription to be created
    # @return [SubscriptionResource]
    def create_subscription_using_post(opts = {})
      data, _status_code, _headers = create_subscription_using_post_with_http_info(opts)
      return data
    end

    # Creates a subscription item and associated plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionResource] :subscription_resource The subscription to be created
    # @return [Array<(SubscriptionResource, Fixnum, Hash)>] SubscriptionResource data, response status code and response headers
    def create_subscription_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.create_subscription_using_post ..."
      end
      # resource path
      local_var_path = "/subscriptions".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'subscription_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#create_subscription_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a subscription plan
    # Must not be locked or a migration target
    # @param id The id of the subscription
    # @param plan_id The id of the plan
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_using_delete(id, plan_id, opts = {})
      delete_plan_using_delete_with_http_info(id, plan_id, opts)
      return nil
    end

    # Delete a subscription plan
    # Must not be locked or a migration target
    # @param id The id of the subscription
    # @param plan_id The id of the plan
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_plan_using_delete_with_http_info(id, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.delete_plan_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.delete_plan_using_delete" if id.nil?
      # verify the required parameter 'plan_id' is set
      fail ArgumentError, "Missing the required parameter 'plan_id' when calling StoreSubscriptionsApi.delete_plan_using_delete" if plan_id.nil?
      # resource path
      local_var_path = "/subscriptions/{id}/plans/{plan_id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'plan_id' + '}', plan_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#delete_plan_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a subscription template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [nil]
    def delete_subscription_template_using_delete(id, opts = {})
      delete_subscription_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a subscription template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_subscription_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.delete_subscription_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.delete_subscription_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/subscriptions/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#delete_subscription_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single subscription template
    # Subscription Templates define a type of subscription and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionTemplateResource]
    def get_subscription_template_using_get(id, opts = {})
      data, _status_code, _headers = get_subscription_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single subscription template
    # Subscription Templates define a type of subscription and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionTemplateResource, Fixnum, Hash)>] SubscriptionTemplateResource data, response status code and response headers
    def get_subscription_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.get_subscription_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.get_subscription_template_using_get" if id.nil?
      # resource path
      local_var_path = "/subscriptions/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SubscriptionTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#get_subscription_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search subscription templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageSubscriptionTemplateResource]
    def get_subscription_templates_using_get(opts = {})
      data, _status_code, _headers = get_subscription_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search subscription templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageSubscriptionTemplateResource, Fixnum, Hash)>] PageSubscriptionTemplateResource data, response status code and response headers
    def get_subscription_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.get_subscription_templates_using_get ..."
      end
      # resource path
      local_var_path = "/subscriptions/templates".sub('{format}','json')

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageSubscriptionTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#get_subscription_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a single subscription item and associated plans
    # 
    # @param id The id of the subscription
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionResource]
    def get_subscription_using_get(id, opts = {})
      data, _status_code, _headers = get_subscription_using_get_with_http_info(id, opts)
      return data
    end

    # Retrieve a single subscription item and associated plans
    # 
    # @param id The id of the subscription
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionResource, Fixnum, Hash)>] SubscriptionResource data, response status code and response headers
    def get_subscription_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.get_subscription_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.get_subscription_using_get" if id.nil?
      # resource path
      local_var_path = "/subscriptions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#get_subscription_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List available subscription items and associated plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageSubscriptionResource]
    def list_subscriptions_using_get(opts = {})
      data, _status_code, _headers = list_subscriptions_using_get_with_http_info(opts)
      return data
    end

    # List available subscription items and associated plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageSubscriptionResource, Fixnum, Hash)>] PageSubscriptionResource data, response status code and response headers
    def list_subscriptions_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.list_subscriptions_using_get ..."
      end
      # resource path
      local_var_path = "/subscriptions".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageSubscriptionResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#list_subscriptions_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Processes subscriptions and charge dues
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def process_using_post(opts = {})
      process_using_post_with_http_info(opts)
      return nil
    end

    # Processes subscriptions and charge dues
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def process_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.process_using_post ..."
      end
      # resource path
      local_var_path = "/subscriptions/process".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#process_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a subscription template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionTemplateResource] :subscription_template_resource The subscription template resource object
    # @return [nil]
    def update_subscription_template_using_put(id, opts = {})
      update_subscription_template_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a subscription template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionTemplateResource] :subscription_template_resource The subscription template resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_subscription_template_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.update_subscription_template_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.update_subscription_template_using_put" if id.nil?
      # resource path
      local_var_path = "/subscriptions/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'subscription_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#update_subscription_template_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a subscription item and associated plans
    # Will not remove plans left out
    # @param id The id of the subscription
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionResource] :subscription_resource The subscription resource object
    # @return [nil]
    def update_subscription_using_put(id, opts = {})
      update_subscription_using_put_with_http_info(id, opts)
      return nil
    end

    # Updates a subscription item and associated plans
    # Will not remove plans left out
    # @param id The id of the subscription
    # @param [Hash] opts the optional parameters
    # @option opts [SubscriptionResource] :subscription_resource The subscription resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_subscription_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreSubscriptionsApi.update_subscription_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling StoreSubscriptionsApi.update_subscription_using_put" if id.nil?
      # resource path
      local_var_path = "/subscriptions/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'subscription_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreSubscriptionsApi#update_subscription_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
