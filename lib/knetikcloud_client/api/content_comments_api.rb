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
  class ContentCommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new comment
    # <b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [CommentResource] :comment_resource The comment to be added
    # @return [CommentResource]
    def add_comment(opts = {})
      data, _status_code, _headers = add_comment_with_http_info(opts)
      return data
    end

    # Add a new comment
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [CommentResource] :comment_resource The comment to be added
    # @return [Array<(CommentResource, Fixnum, Hash)>] CommentResource data, response status code and response headers
    def add_comment_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.add_comment ..."
      end
      # resource path
      local_var_path = "/comments"

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
      post_body = @api_client.object_to_http_body(opts[:'comment_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#add_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a comment
    # <b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_comment(id, opts = {})
      delete_comment_with_http_info(id, opts)
      return nil
    end

    # Delete a comment
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.delete_comment ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.delete_comment"
      end
      # resource path
      local_var_path = "/comments/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContentCommentsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return a comment
    # <b>Permissions Needed:</b> ANY
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [CommentResource]
    def get_comment(id, opts = {})
      data, _status_code, _headers = get_comment_with_http_info(id, opts)
      return data
    end

    # Return a comment
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommentResource, Fixnum, Hash)>] CommentResource data, response status code and response headers
    def get_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.get_comment ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.get_comment"
      end
      # resource path
      local_var_path = "/comments/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a page of comments
    # <b>Permissions Needed:</b> ANY
    # @param context Get comments by context type
    # @param context_id Get comments by context id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceCommentResource]
    def get_comments(context, context_id, opts = {})
      data, _status_code, _headers = get_comments_with_http_info(context, context_id, opts)
      return data
    end

    # Returns a page of comments
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param context Get comments by context type
    # @param context_id Get comments by context id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceCommentResource, Fixnum, Hash)>] PageResourceCommentResource data, response status code and response headers
    def get_comments_with_http_info(context, context_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.get_comments ..."
      end
      # verify the required parameter 'context' is set
      if @api_client.config.client_side_validation && context.nil?
        fail ArgumentError, "Missing the required parameter 'context' when calling ContentCommentsApi.get_comments"
      end
      # verify the required parameter 'context_id' is set
      if @api_client.config.client_side_validation && context_id.nil?
        fail ArgumentError, "Missing the required parameter 'context_id' when calling ContentCommentsApi.get_comments"
      end
      # resource path
      local_var_path = "/comments"

      # query parameters
      query_params = {}
      query_params[:'context'] = context
      query_params[:'context_id'] = context_id
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
        :return_type => 'PageResourceCommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a comment
    # <b>Permissions Needed:</b> COMMENTS_USER or COMMENTS_ADMIN
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @option opts [StringWrapper] :content The comment content
    # @return [nil]
    def update_comment(id, opts = {})
      update_comment_with_http_info(id, opts)
      return nil
    end

    # Update a comment
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; COMMENTS_USER or COMMENTS_ADMIN
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @option opts [StringWrapper] :content The comment content
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.update_comment ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.update_comment"
      end
      # resource path
      local_var_path = "/comments/{id}/content".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'content'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#update_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
