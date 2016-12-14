=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class BRERuleEngineTriggersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a trigger
    # Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
    # @param [Hash] opts the optional parameters
    # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
    # @return [BreTriggerResource]
    def create_trigger_using_post(opts = {})
      data, _status_code, _headers = create_trigger_using_post_with_http_info(opts)
      return data
    end

    # Create a trigger
    # Customer added triggers will not be fired automatically or have rules associated with them by default. Custom rules must be added to get use from the trigger and it must then be fired from the outside. See the Bre Event services
    # @param [Hash] opts the optional parameters
    # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
    # @return [Array<(BreTriggerResource, Fixnum, Hash)>] BreTriggerResource data, response status code and response headers
    def create_trigger_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineTriggersApi.create_trigger_using_post ..."
      end
      # resource path
      local_var_path = "/bre/triggers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'bre_trigger_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BreTriggerResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineTriggersApi#create_trigger_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a trigger
    # May fail if there are existing rules against it. Cannot delete core triggers
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_trigger_using_delete(event_name, opts = {})
      delete_trigger_using_delete_with_http_info(event_name, opts)
      return nil
    end

    # Delete a trigger
    # May fail if there are existing rules against it. Cannot delete core triggers
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_trigger_using_delete_with_http_info(event_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineTriggersApi.delete_trigger_using_delete ..."
      end
      # verify the required parameter 'event_name' is set
      fail ArgumentError, "Missing the required parameter 'event_name' when calling BRERuleEngineTriggersApi.delete_trigger_using_delete" if event_name.nil?
      # resource path
      local_var_path = "/bre/triggers/{event_name}".sub('{format}','json').sub('{' + 'event_name' + '}', event_name.to_s)

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineTriggersApi#delete_trigger_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single trigger
    # 
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @return [BreTriggerResource]
    def get_trigger_using_get(event_name, opts = {})
      data, _status_code, _headers = get_trigger_using_get_with_http_info(event_name, opts)
      return data
    end

    # Get a single trigger
    # 
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @return [Array<(BreTriggerResource, Fixnum, Hash)>] BreTriggerResource data, response status code and response headers
    def get_trigger_using_get_with_http_info(event_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineTriggersApi.get_trigger_using_get ..."
      end
      # verify the required parameter 'event_name' is set
      fail ArgumentError, "Missing the required parameter 'event_name' when calling BRERuleEngineTriggersApi.get_trigger_using_get" if event_name.nil?
      # resource path
      local_var_path = "/bre/triggers/{event_name}".sub('{format}','json').sub('{' + 'event_name' + '}', event_name.to_s)

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BreTriggerResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineTriggersApi#get_trigger_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List triggers
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_system Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
    # @option opts [String] :filter_category Filter for triggers that are within a specific category
    # @option opts [String] :filter_name Filter for triggers that have names containing the given string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageBreTriggerResource]
    def get_triggers_using_get(opts = {})
      data, _status_code, _headers = get_triggers_using_get_with_http_info(opts)
      return data
    end

    # List triggers
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_system Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed
    # @option opts [String] :filter_category Filter for triggers that are within a specific category
    # @option opts [String] :filter_name Filter for triggers that have names containing the given string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageBreTriggerResource, Fixnum, Hash)>] PageBreTriggerResource data, response status code and response headers
    def get_triggers_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineTriggersApi.get_triggers_using_get ..."
      end
      if opts[:'filter_category'] && !['achievement', 'behavior', 'comment', 'disposition', 'entitlement', 'friends', 'fulfillment', 'gamification', 'inventory', 'invoice', 'media', 'scheduler', 'store', 'subscription', 'user', 'wallet', 'custom', 'challenge', 'activity', 'campaign', 'event'].include?(opts[:'filter_category'])
        fail ArgumentError, 'invalid value for "filter_category", must be one of achievement, behavior, comment, disposition, entitlement, friends, fulfillment, gamification, inventory, invoice, media, scheduler, store, subscription, user, wallet, custom, challenge, activity, campaign, event'
      end
      # resource path
      local_var_path = "/bre/triggers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_system'] = opts[:'filter_system'] if !opts[:'filter_system'].nil?
      query_params[:'filter_category'] = opts[:'filter_category'] if !opts[:'filter_category'].nil?
      query_params[:'filter_name'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'PageBreTriggerResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineTriggersApi#get_triggers_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a trigger
    # May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
    # @return [nil]
    def update_trigger_using_put(event_name, opts = {})
      update_trigger_using_put_with_http_info(event_name, opts)
      return nil
    end

    # Update a trigger
    # May fail if new parameters mismatch requirements of existing rules. Cannot update core triggers
    # @param event_name The trigger event name
    # @param [Hash] opts the optional parameters
    # @option opts [BreTriggerResource] :bre_trigger_resource The BRE trigger resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_trigger_using_put_with_http_info(event_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineTriggersApi.update_trigger_using_put ..."
      end
      # verify the required parameter 'event_name' is set
      fail ArgumentError, "Missing the required parameter 'event_name' when calling BRERuleEngineTriggersApi.update_trigger_using_put" if event_name.nil?
      # resource path
      local_var_path = "/bre/triggers/{event_name}".sub('{format}','json').sub('{' + 'event_name' + '}', event_name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'bre_trigger_resource'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineTriggersApi#update_trigger_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
