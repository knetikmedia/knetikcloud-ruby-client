=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class LogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new user log entry
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [UserActionLog] :log_entry The user log entry to be added
    # @return [nil]
    def add_user_log_using_post(opts = {})
      add_user_log_using_post_with_http_info(opts)
      return nil
    end

    # Add a new user log entry
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [UserActionLog] :log_entry The user log entry to be added
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_user_log_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.add_user_log_using_post ..."
      end
      # resource path
      local_var_path = "/audit/logs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'log_entry'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#add_user_log_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an existing BRE event log entry by id
    # 
    # @param id The BRE event log entry id
    # @param [Hash] opts the optional parameters
    # @return [BreEventLog]
    def get_event_log_using_get(id, opts = {})
      data, _status_code, _headers = get_event_log_using_get_with_http_info(id, opts)
      return data
    end

    # Get an existing BRE event log entry by id
    # 
    # @param id The BRE event log entry id
    # @param [Hash] opts the optional parameters
    # @return [Array<(BreEventLog, Fixnum, Hash)>] BreEventLog data, response status code and response headers
    def get_event_log_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_event_log_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LogsApi.get_event_log_using_get" if id.nil?
      # resource path
      local_var_path = "/bre/logs/event-log/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BreEventLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_event_log_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of BRE event log entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_event_name Filter event logs by event name
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageBreEventLog]
    def get_events_logs_using_get(opts = {})
      data, _status_code, _headers = get_events_logs_using_get_with_http_info(opts)
      return data
    end

    # Returns a list of BRE event log entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_event_name Filter event logs by event name
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageBreEventLog, Fixnum, Hash)>] PageBreEventLog data, response status code and response headers
    def get_events_logs_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_events_logs_using_get ..."
      end
      # resource path
      local_var_path = "/bre/logs/event-log".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_start_date'] = opts[:'filter_start_date'] if !opts[:'filter_start_date'].nil?
      query_params[:'filter_event_name'] = opts[:'filter_event_name'] if !opts[:'filter_event_name'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageBreEventLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_events_logs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an existing forward log entry by id
    # 
    # @param id The forward log entry id
    # @param [Hash] opts the optional parameters
    # @return [ForwardLog]
    def get_forward_log_using_get(id, opts = {})
      data, _status_code, _headers = get_forward_log_using_get_with_http_info(id, opts)
      return data
    end

    # Get an existing forward log entry by id
    # 
    # @param id The forward log entry id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ForwardLog, Fixnum, Hash)>] ForwardLog data, response status code and response headers
    def get_forward_log_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_forward_log_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LogsApi.get_forward_log_using_get" if id.nil?
      # resource path
      local_var_path = "/bre/logs/forward-log/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ForwardLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_forward_log_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of forward log entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_end_date A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [Integer] :filter_status_code Filter forward logs by http status code
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageForwardLog]
    def get_forward_logs_using_get(opts = {})
      data, _status_code, _headers = get_forward_logs_using_get_with_http_info(opts)
      return data
    end

    # Returns a list of forward log entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [String] :filter_end_date A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
    # @option opts [Integer] :filter_status_code Filter forward logs by http status code
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageForwardLog, Fixnum, Hash)>] PageForwardLog data, response status code and response headers
    def get_forward_logs_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_forward_logs_using_get ..."
      end
      # resource path
      local_var_path = "/bre/logs/forward-log".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_start_date'] = opts[:'filter_start_date'] if !opts[:'filter_start_date'].nil?
      query_params[:'filter_end_date'] = opts[:'filter_end_date'] if !opts[:'filter_end_date'].nil?
      query_params[:'filter_status_code'] = opts[:'filter_status_code'] if !opts[:'filter_status_code'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageForwardLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_forward_logs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a user log entry by id
    # 
    # @param id The user log entry id
    # @param [Hash] opts the optional parameters
    # @return [UserActionLog]
    def get_user_logs_using_get(id, opts = {})
      data, _status_code, _headers = get_user_logs_using_get_with_http_info(id, opts)
      return data
    end

    # Returns a user log entry by id
    # 
    # @param id The user log entry id
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserActionLog, Fixnum, Hash)>] UserActionLog data, response status code and response headers
    def get_user_logs_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_user_logs_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling LogsApi.get_user_logs_using_get" if id.nil?
      # resource path
      local_var_path = "/audit/logs/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'UserActionLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_user_logs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a page of user logs entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_user Filter for actions taken by a specific user by id
    # @option opts [String] :filter_action_name Filter for actions of a specific name
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageUserActionLog]
    def get_user_logs_using_get1(opts = {})
      data, _status_code, _headers = get_user_logs_using_get1_with_http_info(opts)
      return data
    end

    # Returns a page of user logs entries
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_user Filter for actions taken by a specific user by id
    # @option opts [String] :filter_action_name Filter for actions of a specific name
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageUserActionLog, Fixnum, Hash)>] PageUserActionLog data, response status code and response headers
    def get_user_logs_using_get1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LogsApi.get_user_logs_using_get1 ..."
      end
      # resource path
      local_var_path = "/audit/logs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_user'] = opts[:'filter_user'] if !opts[:'filter_user'].nil?
      query_params[:'filter_action_name'] = opts[:'filter_action_name'] if !opts[:'filter_action_name'].nil?
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
        :return_type => 'PageUserActionLog')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#get_user_logs_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
