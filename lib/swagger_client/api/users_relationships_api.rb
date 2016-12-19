=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class UsersRelationshipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a user relationship
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [UserRelationshipResource] :relationship The new relationship
    # @return [UserRelationshipResource]
    def add_relationship_using_post(opts = {})
      data, _status_code, _headers = add_relationship_using_post_with_http_info(opts)
      return data
    end

    # Create a user relationship
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [UserRelationshipResource] :relationship The new relationship
    # @return [Array<(UserRelationshipResource, Fixnum, Hash)>] UserRelationshipResource data, response status code and response headers
    def add_relationship_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersRelationshipsApi.add_relationship_using_post ..."
      end
      # resource path
      local_var_path = "/users/relationships".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'relationship'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserRelationshipResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersRelationshipsApi#add_relationship_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_relationship_using_delete(id, opts = {})
      delete_relationship_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_relationship_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersRelationshipsApi.delete_relationship_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersRelationshipsApi.delete_relationship_using_delete" if id.nil?
      # resource path
      local_var_path = "/users/relationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: UsersRelationshipsApi#delete_relationship_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @return [UserRelationshipResource]
    def get_relationship_using_get(id, opts = {})
      data, _status_code, _headers = get_relationship_using_get_with_http_info(id, opts)
      return data
    end

    # Get a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserRelationshipResource, Fixnum, Hash)>] UserRelationshipResource data, response status code and response headers
    def get_relationship_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersRelationshipsApi.get_relationship_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersRelationshipsApi.get_relationship_using_get" if id.nil?
      # resource path
      local_var_path = "/users/relationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserRelationshipResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersRelationshipsApi#get_relationship_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of user relationships
    # 
    # @param [Hash] opts the optional parameters
    # @return [PageUserRelationshipResource]
    def get_relationships_using_get(opts = {})
      data, _status_code, _headers = get_relationships_using_get_with_http_info(opts)
      return data
    end

    # Get a list of user relationships
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PageUserRelationshipResource, Fixnum, Hash)>] PageUserRelationshipResource data, response status code and response headers
    def get_relationships_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersRelationshipsApi.get_relationships_using_get ..."
      end
      # resource path
      local_var_path = "/users/relationships".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageUserRelationshipResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersRelationshipsApi#get_relationships_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @option opts [UserRelationshipResource] :relationship The new relationship
    # @return [UserRelationshipResource]
    def update_relationship_using_put(id, opts = {})
      data, _status_code, _headers = update_relationship_using_put_with_http_info(id, opts)
      return data
    end

    # Update a user relationship
    # 
    # @param id The id of the relationship
    # @param [Hash] opts the optional parameters
    # @option opts [UserRelationshipResource] :relationship The new relationship
    # @return [Array<(UserRelationshipResource, Fixnum, Hash)>] UserRelationshipResource data, response status code and response headers
    def update_relationship_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersRelationshipsApi.update_relationship_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling UsersRelationshipsApi.update_relationship_using_put" if id.nil?
      # resource path
      local_var_path = "/users/relationships/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'relationship'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserRelationshipResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersRelationshipsApi#update_relationship_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
