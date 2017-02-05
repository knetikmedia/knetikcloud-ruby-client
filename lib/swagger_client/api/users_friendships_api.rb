=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UsersFriendshipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a friend
    # As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_friend_using_post(user_id, id, opts = {})
      add_friend_using_post_with_http_info(user_id, id, opts)
      return nil
    end

    # Add a friend
    # As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_friend_using_post_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.add_friend_using_post ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.add_friend_using_post" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersFriendshipsApi.add_friend_using_post" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/friends/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#add_friend_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redeem friendship token
    # Immediately connects the requested user with the user mapped by the provided invite token
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token The invite token
    # @return [nil]
    def connect_using_token_using_post(user_id, opts = {})
      connect_using_token_using_post_with_http_info(user_id, opts)
      return nil
    end

    # Redeem friendship token
    # Immediately connects the requested user with the user mapped by the provided invite token
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token The invite token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def connect_using_token_using_post_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.connect_using_token_using_post ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.connect_using_token_using_post" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/friends/tokens".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'token'])
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#connect_using_token_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get friends list
    # 
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceSimpleUserResource]
    def get_friends_using_get(user_id, opts = {})
      data, _status_code, _headers = get_friends_using_get_with_http_info(user_id, opts)
      return data
    end

    # Get friends list
    # 
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceSimpleUserResource, Fixnum, Hash)>] PageResourceSimpleUserResource data, response status code and response headers
    def get_friends_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_friends_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_friends_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/friends".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSimpleUserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_friends_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the invite token
    # This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_invite_token_using_get(user_id, opts = {})
      data, _status_code, _headers = get_invite_token_using_get_with_http_info(user_id, opts)
      return data
    end

    # Returns the invite token
    # This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_invite_token_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_invite_token_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_invite_token_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/invite-token".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_invite_token_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pending invites
    # Invites that the specified user received
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceSimpleUserResource]
    def get_invites_using_get(user_id, opts = {})
      data, _status_code, _headers = get_invites_using_get_with_http_info(user_id, opts)
      return data
    end

    # Get pending invites
    # Invites that the specified user received
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceSimpleUserResource, Fixnum, Hash)>] PageResourceSimpleUserResource data, response status code and response headers
    def get_invites_using_get_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_invites_using_get ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_invites_using_get" if user_id.nil?
      # resource path
      local_var_path = "/users/{user_id}/invites".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s)

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSimpleUserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_invites_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove or decline a friend
    # 
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_friend_using_delete(user_id, id, opts = {})
      remove_friend_using_delete_with_http_info(user_id, id, opts)
      return nil
    end

    # Remove or decline a friend
    # 
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_friend_using_delete_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.remove_friend_using_delete ..."
      end
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.remove_friend_using_delete" if user_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersFriendshipsApi.remove_friend_using_delete" if id.nil?
      # resource path
      local_var_path = "/users/{user_id}/friends/{id}".sub('{format}','json').sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#remove_friend_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
