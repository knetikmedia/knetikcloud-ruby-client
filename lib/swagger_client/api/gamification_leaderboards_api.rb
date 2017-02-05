=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class GamificationLeaderboardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieves leaderboard details and paginated entries
    # The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.
    # @param context_type The context type for the leaderboard
    # @param context_id The context id for the leaderboard
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [LeaderboardResource]
    def get_leaderboard_using_get(context_type, context_id, opts = {})
      data, _status_code, _headers = get_leaderboard_using_get_with_http_info(context_type, context_id, opts)
      return data
    end

    # Retrieves leaderboard details and paginated entries
    # The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard.
    # @param context_type The context type for the leaderboard
    # @param context_id The context id for the leaderboard
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(LeaderboardResource, Fixnum, Hash)>] LeaderboardResource data, response status code and response headers
    def get_leaderboard_using_get_with_http_info(context_type, context_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLeaderboardsApi.get_leaderboard_using_get ..."
      end
      # verify the required parameter 'context_type' is set
      fail ArgumentError, "Missing the required parameter 'context_type' when calling GamificationLeaderboardsApi.get_leaderboard_using_get" if context_type.nil?
      # verify the required parameter 'context_id' is set
      fail ArgumentError, "Missing the required parameter 'context_id' when calling GamificationLeaderboardsApi.get_leaderboard_using_get" if context_id.nil?
      # resource path
      local_var_path = "/leaderboards/{context_type}/{context_id}".sub('{format}','json').sub('{' + 'context_type' + '}', context_type.to_s).sub('{' + 'context_id' + '}', context_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
        :return_type => 'LeaderboardResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLeaderboardsApi#get_leaderboard_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of available leaderboard strategy names
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def get_strategies_using_get(opts = {})
      data, _status_code, _headers = get_strategies_using_get_with_http_info(opts)
      return data
    end

    # Get a list of available leaderboard strategy names
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Fixnum, Hash)>] Array<String> data, response status code and response headers
    def get_strategies_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLeaderboardsApi.get_strategies_using_get ..."
      end
      # resource path
      local_var_path = "/leaderboards/strategies".sub('{format}','json')

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
        :return_type => 'Array<String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLeaderboardsApi#get_strategies_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a specific user entry with rank
    # The context type identifies the type of entity (i.e., 'activity') being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard
    # @param context_type The context type for the leaderboard
    # @param context_id The context id for the leaderboard
    # @param id The id of a user
    # @param [Hash] opts the optional parameters
    # @return [LeaderboardEntryResource]
    def get_user_rank_using_get(context_type, context_id, id, opts = {})
      data, _status_code, _headers = get_user_rank_using_get_with_http_info(context_type, context_id, id, opts)
      return data
    end

    # Retrieves a specific user entry with rank
    # The context type identifies the type of entity (i.e., &#39;activity&#39;) being tracked on the leaderboard. The context ID is the unique ID of the actual entity tracked by the leaderboard
    # @param context_type The context type for the leaderboard
    # @param context_id The context id for the leaderboard
    # @param id The id of a user
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaderboardEntryResource, Fixnum, Hash)>] LeaderboardEntryResource data, response status code and response headers
    def get_user_rank_using_get_with_http_info(context_type, context_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: GamificationLeaderboardsApi.get_user_rank_using_get ..."
      end
      # verify the required parameter 'context_type' is set
      fail ArgumentError, "Missing the required parameter 'context_type' when calling GamificationLeaderboardsApi.get_user_rank_using_get" if context_type.nil?
      # verify the required parameter 'context_id' is set
      fail ArgumentError, "Missing the required parameter 'context_id' when calling GamificationLeaderboardsApi.get_user_rank_using_get" if context_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling GamificationLeaderboardsApi.get_user_rank_using_get" if id.nil?
      # resource path
      local_var_path = "/leaderboards/{context_type}/{context_id}/users/{id}/rank".sub('{format}','json').sub('{' + 'context_type' + '}', context_type.to_s).sub('{' + 'context_id' + '}', context_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'LeaderboardEntryResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GamificationLeaderboardsApi#get_user_rank_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
