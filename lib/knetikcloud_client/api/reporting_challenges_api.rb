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
  class ReportingChallengesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve a challenge event leaderboard details
    # Lists all leaderboard entries with additional user details
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChallengeEventParticipantResource]
    def get_challenge_event_leaderboard(opts = {})
      data, _status_code, _headers = get_challenge_event_leaderboard_with_http_info(opts)
      return data
    end

    # Retrieve a challenge event leaderboard details
    # Lists all leaderboard entries with additional user details
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChallengeEventParticipantResource, Fixnum, Hash)>] PageResourceChallengeEventParticipantResource data, response status code and response headers
    def get_challenge_event_leaderboard_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingChallengesApi.get_challenge_event_leaderboard ..."
      end
      # resource path
      local_var_path = "/reporting/events/leaderboard"

      # query parameters
      query_params = {}
      query_params[:'filter_event'] = opts[:'filter_event'] if !opts[:'filter_event'].nil?
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
        :return_type => 'PageResourceChallengeEventParticipantResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingChallengesApi#get_challenge_event_leaderboard\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a challenge event participant details
    # Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChallengeEventParticipantResource]
    def get_challenge_event_participants(opts = {})
      data, _status_code, _headers = get_challenge_event_participants_with_http_info(opts)
      return data
    end

    # Retrieve a challenge event participant details
    # Lists all user submitted scores sorted by value, including those that do not apear in the leaderboard due to value or aggregation
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :filter_event A sepecific challenge event id
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChallengeEventParticipantResource, Fixnum, Hash)>] PageResourceChallengeEventParticipantResource data, response status code and response headers
    def get_challenge_event_participants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingChallengesApi.get_challenge_event_participants ..."
      end
      # resource path
      local_var_path = "/reporting/events/participants"

      # query parameters
      query_params = {}
      query_params[:'filter_event'] = opts[:'filter_event'] if !opts[:'filter_event'].nil?
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
        :return_type => 'PageResourceChallengeEventParticipantResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingChallengesApi#get_challenge_event_participants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
