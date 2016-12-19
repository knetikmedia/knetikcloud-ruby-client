=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ContentCommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a new comment
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CommentResource] :comment_resource The comment to be added
    # @return [CommentResource]
    def add_comment_using_post(opts = {})
      data, _status_code, _headers = add_comment_using_post_with_http_info(opts)
      return data
    end

    # Add a new comment
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CommentResource] :comment_resource The comment to be added
    # @return [Array<(CommentResource, Fixnum, Hash)>] CommentResource data, response status code and response headers
    def add_comment_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.add_comment_using_post ..."
      end
      # resource path
      local_var_path = "/comments".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'comment_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#add_comment_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a comment
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_comment_using_delete(id, opts = {})
      delete_comment_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a comment
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_comment_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.delete_comment_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.delete_comment_using_delete" if id.nil?
      # resource path
      local_var_path = "/comments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        @api_client.config.logger.debug "API called: ContentCommentsApi#delete_comment_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a comment by comment id
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [CommentResource]
    def get_comment_using_get(id, opts = {})
      data, _status_code, _headers = get_comment_using_get_with_http_info(id, opts)
      return data
    end

    # Returns a comment by comment id
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommentResource, Fixnum, Hash)>] CommentResource data, response status code and response headers
    def get_comment_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.get_comment_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.get_comment_using_get" if id.nil?
      # resource path
      local_var_path = "/comments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'CommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#get_comment_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a page of comments
    # 
    # @param context Get comments by context type
    # @param context_id Get comments by context id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageCommentResource]
    def get_comments_using_get(context, context_id, opts = {})
      data, _status_code, _headers = get_comments_using_get_with_http_info(context, context_id, opts)
      return data
    end

    # Returns a page of comments
    # 
    # @param context Get comments by context type
    # @param context_id Get comments by context id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageCommentResource, Fixnum, Hash)>] PageCommentResource data, response status code and response headers
    def get_comments_using_get_with_http_info(context, context_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.get_comments_using_get ..."
      end
      # verify the required parameter 'context' is set
      fail ArgumentError, "Missing the required parameter 'context' when calling ContentCommentsApi.get_comments_using_get" if context.nil?
      # verify the required parameter 'context_id' is set
      fail ArgumentError, "Missing the required parameter 'context_id' when calling ContentCommentsApi.get_comments_using_get" if context_id.nil?
      # resource path
      local_var_path = "/comments".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'context'] = context
      query_params[:'context_id'] = context_id
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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
        :return_type => 'PageCommentResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#get_comments_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search the comment index
    # The body is an ElasticSearch query json. Please see their <a href='https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html'>documentation</a> for details on the format and search options
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :query The search query
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [CommentSearch]
    def search_comments_using_post(opts = {})
      data, _status_code, _headers = search_comments_using_post_with_http_info(opts)
      return data
    end

    # Search the comment index
    # The body is an ElasticSearch query json. Please see their &lt;a href&#x3D;&#39;https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html&#39;&gt;documentation&lt;/a&gt; for details on the format and search options
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :query The search query
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(CommentSearch, Fixnum, Hash)>] CommentSearch data, response status code and response headers
    def search_comments_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.search_comments_using_post ..."
      end
      # resource path
      local_var_path = "/comments/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'query'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CommentSearch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#search_comments_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update comment content
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content The comment content
    # @return [nil]
    def update_comment_using_put(id, opts = {})
      update_comment_using_put_with_http_info(id, opts)
      return nil
    end

    # Update comment content
    # 
    # @param id The comment id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content The comment content
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_comment_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentCommentsApi.update_comment_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentCommentsApi.update_comment_using_put" if id.nil?
      # resource path
      local_var_path = "/comments/{id}/content".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'content'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentCommentsApi#update_comment_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
