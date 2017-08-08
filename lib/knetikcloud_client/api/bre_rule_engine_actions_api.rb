=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module KnetikCloudClient
  class BRERuleEngineActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a list of available actions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_category Filter for actions that are within a specific category
    # @option opts [String] :filter_name Filter for actions that have names containing the given string
    # @option opts [String] :filter_tags Filter for actions that have all of the given tags (comma separated list)
    # @option opts [String] :filter_search Filter for actions containing the given words somewhere within name, description and tags
    # @return [Array<ActionResource>]
    def get_bre_actions(opts = {})
      data, _status_code, _headers = get_bre_actions_with_http_info(opts)
      return data
    end

    # Get a list of available actions
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_category Filter for actions that are within a specific category
    # @option opts [String] :filter_name Filter for actions that have names containing the given string
    # @option opts [String] :filter_tags Filter for actions that have all of the given tags (comma separated list)
    # @option opts [String] :filter_search Filter for actions containing the given words somewhere within name, description and tags
    # @return [Array<(Array<ActionResource>, Fixnum, Hash)>] Array<ActionResource> data, response status code and response headers
    def get_bre_actions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BRERuleEngineActionsApi.get_bre_actions ..."
      end
      if @api_client.config.client_side_validation && opts[:'filter_category'] && !['achievement', 'behavior', 'comment', 'disposition', 'device', 'entitlement', 'friends', 'fulfillment', 'gamification', 'inventory', 'invoice', 'media', 'scheduler', 'store', 'subscription', 'user', 'wallet', 'custom', 'challenge', 'activity', 'campaign', 'event'].include?(opts[:'filter_category'])
        fail ArgumentError, 'invalid value for "filter_category", must be one of achievement, behavior, comment, disposition, device, entitlement, friends, fulfillment, gamification, inventory, invoice, media, scheduler, store, subscription, user, wallet, custom, challenge, activity, campaign, event'
      end
      # resource path
      local_var_path = "/bre/actions"

      # query parameters
      query_params = {}
      query_params[:'filter_category'] = opts[:'filter_category'] if !opts[:'filter_category'].nil?
      query_params[:'filter_name'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
      query_params[:'filter_tags'] = opts[:'filter_tags'] if !opts[:'filter_tags'].nil?
      query_params[:'filter_search'] = opts[:'filter_search'] if !opts[:'filter_search'].nil?

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
        :return_type => 'Array<ActionResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BRERuleEngineActionsApi#get_bre_actions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
