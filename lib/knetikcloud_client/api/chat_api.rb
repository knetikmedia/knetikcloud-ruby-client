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
  class ChatApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Acknowledge number of messages in a thread
    # <b>Permissions Needed:</b> owner
    # @param id The thread id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :read_count The amount of messages read
    # @return [nil]
    def acknowledge_chat_message(id, opts = {})
      acknowledge_chat_message_with_http_info(id, opts)
      return nil
    end

    # Acknowledge number of messages in a thread
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
    # @param id The thread id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :read_count The amount of messages read
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def acknowledge_chat_message_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.acknowledge_chat_message ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.acknowledge_chat_message"
      end
      # resource path
      local_var_path = "/chat/threads/{id}/acknowledge".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'read_count'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#acknowledge_chat_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a user to a chat message blacklist
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param blacklisted_user_id The user id to blacklist
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_chat_message_blacklist(blacklisted_user_id, id, opts = {})
      add_chat_message_blacklist_with_http_info(blacklisted_user_id, id, opts)
      return nil
    end

    # Add a user to a chat message blacklist
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param blacklisted_user_id The user id to blacklist
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_chat_message_blacklist_with_http_info(blacklisted_user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.add_chat_message_blacklist ..."
      end
      # verify the required parameter 'blacklisted_user_id' is set
      if @api_client.config.client_side_validation && blacklisted_user_id.nil?
        fail ArgumentError, "Missing the required parameter 'blacklisted_user_id' when calling ChatApi.add_chat_message_blacklist"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.add_chat_message_blacklist"
      end
      # resource path
      local_var_path = "/chat/users/{id}/blacklist/{blacklisted_user_id}".sub('{' + 'blacklisted_user_id' + '}', blacklisted_user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ChatApi#add_chat_message_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a message
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_chat_message(id, opts = {})
      delete_chat_message_with_http_info(id, opts)
      return nil
    end

    # Delete a message
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_chat_message_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.delete_chat_message ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.delete_chat_message"
      end
      # resource path
      local_var_path = "/chat/messages/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ChatApi#delete_chat_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit your message
    # <b>Permissions Needed:</b> owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
    # @return [nil]
    def edit_chat_message(id, opts = {})
      edit_chat_message_with_http_info(id, opts)
      return nil
    end

    # Edit your message
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def edit_chat_message_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.edit_chat_message ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.edit_chat_message"
      end
      # resource path
      local_var_path = "/chat/messages/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'chat_message_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#edit_chat_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a message
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @return [ChatMessageResource]
    def get_chat_message(id, opts = {})
      data, _status_code, _headers = get_chat_message_with_http_info(id, opts)
      return data
    end

    # Get a message
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param id The message id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ChatMessageResource, Fixnum, Hash)>] ChatMessageResource data, response status code and response headers
    def get_chat_message_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_chat_message ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.get_chat_message"
      end
      # resource path
      local_var_path = "/chat/messages/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ChatMessageResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_chat_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of blocked users for chat messaging
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<ChatBlacklistResource>]
    def get_chat_message_blacklist(id, opts = {})
      data, _status_code, _headers = get_chat_message_blacklist_with_http_info(id, opts)
      return data
    end

    # Get a list of blocked users for chat messaging
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ChatBlacklistResource>, Fixnum, Hash)>] Array<ChatBlacklistResource> data, response status code and response headers
    def get_chat_message_blacklist_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_chat_message_blacklist ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.get_chat_message_blacklist"
      end
      # resource path
      local_var_path = "/chat/users/{id}/blacklist".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ChatBlacklistResource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_chat_message_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List your threads
    # <b>Permissions Needed:</b> owner
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChatUserThreadResource]
    def get_chat_threads(opts = {})
      data, _status_code, _headers = get_chat_threads_with_http_info(opts)
      return data
    end

    # List your threads
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChatUserThreadResource, Fixnum, Hash)>] PageResourceChatUserThreadResource data, response status code and response headers
    def get_chat_threads_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_chat_threads ..."
      end
      # resource path
      local_var_path = "/chat/threads"

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageResourceChatUserThreadResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_chat_threads\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List messages with a user
    # <b>Permissions Needed:</b> owner
    # @param id The user id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChatMessageResource]
    def get_direct_messages(id, opts = {})
      data, _status_code, _headers = get_direct_messages_with_http_info(id, opts)
      return data
    end

    # List messages with a user
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; owner
    # @param id The user id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChatMessageResource, Fixnum, Hash)>] PageResourceChatMessageResource data, response status code and response headers
    def get_direct_messages_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_direct_messages ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.get_direct_messages"
      end
      # resource path
      local_var_path = "/chat/users/{id}/messages".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageResourceChatMessageResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_direct_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List messages in a thread
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param id The thread id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChatMessageResource]
    def get_thread_messages(id, opts = {})
      data, _status_code, _headers = get_thread_messages_with_http_info(id, opts)
      return data
    end

    # List messages in a thread
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param id The thread id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChatMessageResource, Fixnum, Hash)>] PageResourceChatMessageResource data, response status code and response headers
    def get_thread_messages_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_thread_messages ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.get_thread_messages"
      end
      # resource path
      local_var_path = "/chat/threads/{id}/messages".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageResourceChatMessageResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_thread_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List messages in a topic
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param id The topic id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [PageResourceChatMessageResource]
    def get_topic_messages(id, opts = {})
      data, _status_code, _headers = get_topic_messages_with_http_info(id, opts)
      return data
    end

    # List messages in a topic
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param id The topic id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceChatMessageResource, Fixnum, Hash)>] PageResourceChatMessageResource data, response status code and response headers
    def get_topic_messages_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.get_topic_messages ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.get_topic_messages"
      end
      # resource path
      local_var_path = "/chat/topics/{id}/messages".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageResourceChatMessageResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#get_topic_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a user from a blacklist
    # <b>Permissions Needed:</b> CHAT_ADMIN or owner
    # @param blacklisted_user_id The user id to blacklist
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_chat_blacklist(blacklisted_user_id, id, opts = {})
      remove_chat_blacklist_with_http_info(blacklisted_user_id, id, opts)
      return nil
    end

    # Remove a user from a blacklist
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; CHAT_ADMIN or owner
    # @param blacklisted_user_id The user id to blacklist
    # @param id The user id or &#39;me&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_chat_blacklist_with_http_info(blacklisted_user_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.remove_chat_blacklist ..."
      end
      # verify the required parameter 'blacklisted_user_id' is set
      if @api_client.config.client_side_validation && blacklisted_user_id.nil?
        fail ArgumentError, "Missing the required parameter 'blacklisted_user_id' when calling ChatApi.remove_chat_blacklist"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ChatApi.remove_chat_blacklist"
      end
      # resource path
      local_var_path = "/chat/users/{id}/blacklist/{blacklisted_user_id}".sub('{' + 'blacklisted_user_id' + '}', blacklisted_user_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ChatApi#remove_chat_blacklist\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a message
    # <b>Permissions Needed:</b> ANY
    # @param [Hash] opts the optional parameters
    # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
    # @return [ChatMessageResource]
    def send_chat_message(opts = {})
      data, _status_code, _headers = send_chat_message_with_http_info(opts)
      return data
    end

    # Send a message
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param [Hash] opts the optional parameters
    # @option opts [ChatMessageResource] :chat_message_resource The chat message resource
    # @return [Array<(ChatMessageResource, Fixnum, Hash)>] ChatMessageResource data, response status code and response headers
    def send_chat_message_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChatApi.send_chat_message ..."
      end
      # resource path
      local_var_path = "/chat/messages"

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
      post_body = @api_client.object_to_http_body(opts[:'chat_message_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ChatMessageResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChatApi#send_chat_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
