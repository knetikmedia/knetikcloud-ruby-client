=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ReportingChallengesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve a challenge event leaderboard details
    # Lists all leaderboard entries with additional user details
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @return [PageResourceChallengeEventParticipantResource]
    def get_challenge_event_leaderboard_using_get(opts = {})
      data, _status_code, _headers = get_challenge_event_leaderboard_using_get_with_http_info(opts)
      return data
    end

    # Retrieve a challenge event leaderboard details
    # Lists all leaderboard entries with additional user details
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @return [Array<(PageResourceChallengeEventParticipantResource, Fixnum, Hash)>] PageResourceChallengeEventParticipantResource data, response status code and response headers
    def get_challenge_event_leaderboard_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingChallengesApi.get_challenge_event_leaderboard_using_get ..."
      end
      # resource path
      local_var_path = "/reporting/events/leaderboard".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_event'] = opts[:'filter_event'] if !opts[:'filter_event'].nil?

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
        :return_type => 'PageResourceChallengeEventParticipantResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingChallengesApi#get_challenge_event_leaderboard_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a challenge event participant details
    # Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @return [PageResourceChallengeEventParticipantResource]
    def get_challenge_event_participants_using_get(opts = {})
      data, _status_code, _headers = get_challenge_event_participants_using_get_with_http_info(opts)
      return data
    end

    # Retrieve a challenge event participant details
    # Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @return [Array<(PageResourceChallengeEventParticipantResource, Fixnum, Hash)>] PageResourceChallengeEventParticipantResource data, response status code and response headers
    def get_challenge_event_participants_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingChallengesApi.get_challenge_event_participants_using_get ..."
      end
      # resource path
      local_var_path = "/reporting/events/participants".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_event'] = opts[:'filter_event'] if !opts[:'filter_event'].nil?

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
        :return_type => 'PageResourceChallengeEventParticipantResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingChallengesApi#get_challenge_event_participants_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
