=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class GamificationLevelingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Update or create a leveling progress record for a user
    # If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level's max_value it will be marked as earned and a BRE event will be triggered for the <code>BreAchievementEarnedTrigger</code>.
    # @param user_id The id of the user
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :progress The current progress amount
    # @return [nil]
    def change_user_level_experience_using_put(user_id, name, opts = {})
      change_user_level_experience_using_put_with_http_info(user_id, name, opts)
      return nil
    end

    # Update or create a leveling progress record for a user
    # If no progress record yet exists for the user, it will be created. Otherwise it will be updated. If progress meets or exceeds the level&#39;s max_value it will be marked as earned and a BRE event will be triggered for the &lt;code&gt;BreAchievementEarnedTrigger&lt;/code&gt;.
    # @param user_id The id of the user
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :progress The current progress amount
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def change_user_level_experience_using_put_with_http_info(user_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.change_user_level_experience_using_put ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling GamificationLevelingApi.change_user_level_experience_using_put" if user_id.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling GamificationLevelingApi.change_user_level_experience_using_put" if name.nil?
      # resource path
      local_var_path = "/users/{user_id}/leveling/{name}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'name' + '}', name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'progress'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#change_user_level_experience_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a level schema
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [LevelingResource] :level The level schema definition
    # @return [LevelingResource]
    def create_level_using_post(opts = {})
      data, _status_code, _headers = create_level_using_post_with_http_info(opts)
      return data
    end

    # Create a level schema
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [LevelingResource] :level The level schema definition
    # @return [Array<(LevelingResource, Fixnum, Hash)>] LevelingResource data, response status code and response headers
    def create_level_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.create_level_using_post ..."
      end
      # resource path
      local_var_path = "/leveling".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'level'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LevelingResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#create_level_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_level_using_delete(name, opts = {})
      delete_level_using_delete_with_http_info(name, opts)
      return nil
    end

    # Delete a level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_level_using_delete_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.delete_level_using_delete ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling GamificationLevelingApi.delete_level_using_delete" if name.nil?
      # resource path
      local_var_path = "/leveling/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        @api_client.config.logger.debug "API called: GamificationLevelingApi#delete_level_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the list of triggers that can be used to trigger a leveling progress update
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<BreTriggerResource>]
    def get_available_triggers_using_get1(opts = {})
      data, _status_code, _headers = get_available_triggers_using_get1_with_http_info(opts)
      return data
    end

    # Get the list of triggers that can be used to trigger a leveling progress update
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BreTriggerResource>, Fixnum, Hash)>] Array<BreTriggerResource> data, response status code and response headers
    def get_available_triggers_using_get1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.get_available_triggers_using_get1 ..."
      end
      # resource path
      local_var_path = "/leveling/triggers".sub('{format}','json')

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
        :return_type => 'Array<BreTriggerResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#get_available_triggers_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a particular level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [LevelingResource]
    def get_level_using_get(name, opts = {})
      data, _status_code, _headers = get_level_using_get_with_http_info(name, opts)
      return data
    end

    # Retrieve a particular level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [Array<(LevelingResource, Fixnum, Hash)>] LevelingResource data, response status code and response headers
    def get_level_using_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.get_level_using_get ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling GamificationLevelingApi.get_level_using_get" if name.nil?
      # resource path
      local_var_path = "/leveling/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'LevelingResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#get_level_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search levels
    # Get a list of levels schemas with optional filtering
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name Filter for level schemas whose name contains a given string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to name:ASC)
    # @return [PageLevelingResource]
    def get_levels_using_get(opts = {})
      data, _status_code, _headers = get_levels_using_get_with_http_info(opts)
      return data
    end

    # List and search levels
    # Get a list of levels schemas with optional filtering
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name Filter for level schemas whose name contains a given string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageLevelingResource, Fixnum, Hash)>] PageLevelingResource data, response status code and response headers
    def get_levels_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.get_levels_using_get ..."
      end
      # resource path
      local_var_path = "/leveling".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_name'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
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
        :return_type => 'PageLevelingResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#get_levels_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user's progress for a given level schema
    # 
    # @param user_id The id of the user
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [UserLevelingResource]
    def get_user_level_using_get(user_id, name, opts = {})
      data, _status_code, _headers = get_user_level_using_get_with_http_info(user_id, name, opts)
      return data
    end

    # Get a user&#39;s progress for a given level schema
    # 
    # @param user_id The id of the user
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserLevelingResource, Fixnum, Hash)>] UserLevelingResource data, response status code and response headers
    def get_user_level_using_get_with_http_info(user_id, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.get_user_level_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling GamificationLevelingApi.get_user_level_using_get" if user_id.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling GamificationLevelingApi.get_user_level_using_get" if name.nil?
      # resource path
      local_var_path = "/users/{user_id}/leveling/{name}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'UserLevelingResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#get_user_level_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user's progress for all level schemas
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @return [PageUserLevelingResource]
    def get_user_levels_using_get(user_id, opts = {})
      data, _status_code, _headers = get_user_levels_using_get_with_http_info(user_id, opts)
      return data
    end

    # Get a user&#39;s progress for all level schemas
    # 
    # @param user_id The id of the user
    # @param [Hash] opts the optional parameters
    # @return [Array<(PageUserLevelingResource, Fixnum, Hash)>] PageUserLevelingResource data, response status code and response headers
    def get_user_levels_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.get_user_levels_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling GamificationLevelingApi.get_user_levels_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/leveling".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'PageUserLevelingResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#get_user_levels_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @option opts [LevelingResource] :new_level The level schema definition
    # @return [nil]
    def update_level_using_put(name, opts = {})
      update_level_using_put_with_http_info(name, opts)
      return nil
    end

    # Update a level
    # 
    # @param name The level schema name
    # @param [Hash] opts the optional parameters
    # @option opts [LevelingResource] :new_level The level schema definition
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_level_using_put_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLevelingApi.update_level_using_put ..."
      end
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling GamificationLevelingApi.update_level_using_put" if name.nil?
      # resource path
      local_var_path = "/leveling/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'new_level'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLevelingApi#update_level_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
