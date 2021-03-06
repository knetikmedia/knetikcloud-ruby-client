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
  class UsersFriendshipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a friend
    # As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_friend(user_id, id, opts = {})
      add_friend_with_http_info(user_id, id, opts)
      return nil
    end

    # Add a friend
    # As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_friend_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.add_friend ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.add_friend"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersFriendshipsApi.add_friend"
      end
      # resource path
      local_var_path = "/users/{user_id}/friends/{id}".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#add_friend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get friends list
    # <b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_username Filter for friends with the given username
    # @option opts [Integer] :filter_user_id Filter for friends by user id
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceSimpleUserResource]
    def get_friends(user_id, opts = {})
      data, _status_code, _headers = get_friends_with_http_info(user_id, opts)
      return data
    end

    # Get friends list
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_username Filter for friends with the given username
    # @option opts [Integer] :filter_user_id Filter for friends by user id
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceSimpleUserResource, Fixnum, Hash)>] PageResourceSimpleUserResource data, response status code and response headers
    def get_friends_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_friends ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_friends"
      end
      # resource path
      local_var_path = "/users/{user_id}/friends".sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'filter_username'] = opts[:'filter_username'] if !opts[:'filter_username'].nil?
      query_params[:'filter_user_id'] = opts[:'filter_user_id'] if !opts[:'filter_user_id'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSimpleUserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_friends\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the invite token
    # This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_invite_token(user_id, opts = {})
      data, _status_code, _headers = get_invite_token_with_http_info(user_id, opts)
      return data
    end

    # Returns the invite token
    # This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_invite_token_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_invite_token ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_invite_token"
      end
      # resource path
      local_var_path = "/users/{user_id}/invite-token".sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_invite_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get pending invites
    # Invites that the specified user received. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceSimpleUserResource]
    def get_invites(user_id, opts = {})
      data, _status_code, _headers = get_invites_with_http_info(user_id, opts)
      return data
    end

    # Get pending invites
    # Invites that the specified user received. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceSimpleUserResource, Fixnum, Hash)>] PageResourceSimpleUserResource data, response status code and response headers
    def get_invites_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.get_invites ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.get_invites"
      end
      # resource path
      local_var_path = "/users/{user_id}/invites".sub('{' + 'user_id' + '}', user_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceSimpleUserResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#get_invites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Redeem friendship token
    # Immediately connects the requested user with the user mapped by the provided invite token. <br><br><b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @option opts [StringWrapper] :token The invite token
    # @return [nil]
    def redeem_friendship_token(user_id, opts = {})
      redeem_friendship_token_with_http_info(user_id, opts)
      return nil
    end

    # Redeem friendship token
    # Immediately connects the requested user with the user mapped by the provided invite token. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param [Hash] opts the optional parameters
    # @option opts [StringWrapper] :token The invite token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def redeem_friendship_token_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.redeem_friendship_token ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.redeem_friendship_token"
      end
      # resource path
      local_var_path = "/users/{user_id}/friends/tokens".sub('{' + 'user_id' + '}', user_id.to_s)

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
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#redeem_friendship_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove or decline a friend
    # <b>Permissions Needed:</b> FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_or_decline_friend(user_id, id, opts = {})
      remove_or_decline_friend_with_http_info(user_id, id, opts)
      return nil
    end

    # Remove or decline a friend
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; FRIENDSHIPS_ADMIN or (FRIENDSHIPS_USER and owner)
    # @param user_id The id of the user or &#39;me&#39; if logged in
    # @param id The id of the user to befriend
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_or_decline_friend_with_http_info(user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersFriendshipsApi.remove_or_decline_friend ..."
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersFriendshipsApi.remove_or_decline_friend"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersFriendshipsApi.remove_or_decline_friend"
      end
      # resource path
      local_var_path = "/users/{user_id}/friends/{id}".sub('{' + 'user_id' + '}', user_id.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersFriendshipsApi#remove_or_decline_friend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
