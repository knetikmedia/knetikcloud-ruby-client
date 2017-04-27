=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
  class CampaignsRewardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a reward set
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
    # @return [RewardSetResource]
    def create_reward_set(opts = {})
      data, _status_code, _headers = create_reward_set_with_http_info(opts)
      return data
    end

    # Create a reward set
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
    # @return [Array<(RewardSetResource, Fixnum, Hash)>] RewardSetResource data, response status code and response headers
    def create_reward_set_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsRewardsApi.create_reward_set ..."
      end
      # resource path
      local_var_path = "/rewards"

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
      post_body = @api_client.object_to_http_body(opts[:'reward_set_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RewardSetResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsRewardsApi#create_reward_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_reward_set(id, opts = {})
      delete_reward_set_with_http_info(id, opts)
      return nil
    end

    # Delete a reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_reward_set_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsRewardsApi.delete_reward_set ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsRewardsApi.delete_reward_set" if id.nil?
      # resource path
      local_var_path = "/rewards/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignsRewardsApi#delete_reward_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @return [RewardSetResource]
    def get_reward_set(id, opts = {})
      data, _status_code, _headers = get_reward_set_with_http_info(id, opts)
      return data
    end

    # Get a single reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @return [Array<(RewardSetResource, Fixnum, Hash)>] RewardSetResource data, response status code and response headers
    def get_reward_set_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsRewardsApi.get_reward_set ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsRewardsApi.get_reward_set" if id.nil?
      # resource path
      local_var_path = "/rewards/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'RewardSetResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsRewardsApi#get_reward_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search reward sets
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceRewardSetResource]
    def get_reward_sets(opts = {})
      data, _status_code, _headers = get_reward_sets_with_http_info(opts)
      return data
    end

    # List and search reward sets
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceRewardSetResource, Fixnum, Hash)>] PageResourceRewardSetResource data, response status code and response headers
    def get_reward_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsRewardsApi.get_reward_sets ..."
      end
      # resource path
      local_var_path = "/rewards"

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
        :return_type => 'PageResourceRewardSetResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsRewardsApi#get_reward_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
    # @return [RewardSetResource]
    def update_reward_set(id, opts = {})
      data, _status_code, _headers = update_reward_set_with_http_info(id, opts)
      return data
    end

    # Update a reward set
    # 
    # @param id The reward id
    # @param [Hash] opts the optional parameters
    # @option opts [RewardSetResource] :reward_set_resource The reward set resource object
    # @return [Array<(RewardSetResource, Fixnum, Hash)>] RewardSetResource data, response status code and response headers
    def update_reward_set_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsRewardsApi.update_reward_set ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsRewardsApi.update_reward_set" if id.nil?
      # resource path
      local_var_path = "/rewards/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'reward_set_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RewardSetResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsRewardsApi#update_reward_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
