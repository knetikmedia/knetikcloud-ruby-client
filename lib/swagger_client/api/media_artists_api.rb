=begin
#Knetik Platform API Documentation Latest

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class MediaArtistsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Adds a new artist in the system
    # Adds a new artist in the system. Use specific media contributions endpoint to add contributions
    # @param [Hash] opts the optional parameters
    # @option opts [ArtistResource] :artist_resource The new artist
    # @return [ArtistResource]
    def add_artist_using_post(opts = {})
      data, _status_code, _headers = add_artist_using_post_with_http_info(opts)
      return data
    end

    # Adds a new artist in the system
    # Adds a new artist in the system. Use specific media contributions endpoint to add contributions
    # @param [Hash] opts the optional parameters
    # @option opts [ArtistResource] :artist_resource The new artist
    # @return [Array<(ArtistResource, Fixnum, Hash)>] ArtistResource data, response status code and response headers
    def add_artist_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.add_artist_using_post ..."
      end
      # resource path
      local_var_path = "/media/artists".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'artist_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ArtistResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#add_artist_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an artist template
    # Artist Templates define a type of artist and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :artist_template_resource The artist template resource object
    # @return [TemplateResource]
    def create_artist_template_using_post(opts = {})
      data, _status_code, _headers = create_artist_template_using_post_with_http_info(opts)
      return data
    end

    # Create an artist template
    # Artist Templates define a type of artist and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :artist_template_resource The artist template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_artist_template_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.create_artist_template_using_post ..."
      end
      # resource path
      local_var_path = "/media/artists/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'artist_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#create_artist_template_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an artist template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_artist_template_using_delete(id, opts = {})
      delete_artist_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete an artist template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_artist_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.delete_artist_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.delete_artist_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/media/artists/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: MediaArtistsApi#delete_artist_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Removes an artist from the system IF no resources are attached to it
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_artist_using_delete(id, opts = {})
      delete_artist_using_delete_with_http_info(id, opts)
      return nil
    end

    # Removes an artist from the system IF no resources are attached to it
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_artist_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.delete_artist_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.delete_artist_using_delete" if id.nil?
      # resource path
      local_var_path = "/media/artists/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MediaArtistsApi#delete_artist_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single artist template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_artist_template_using_get(id, opts = {})
      data, _status_code, _headers = get_artist_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single artist template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_artist_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.get_artist_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.get_artist_template_using_get" if id.nil?
      # resource path
      local_var_path = "/media/artists/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#get_artist_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search artist templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageTemplateResource]
    def get_artist_templates_using_get(opts = {})
      data, _status_code, _headers = get_artist_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search artist templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageTemplateResource, Fixnum, Hash)>] PageTemplateResource data, response status code and response headers
    def get_artist_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.get_artist_templates_using_get ..."
      end
      # resource path
      local_var_path = "/media/artists/templates".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#get_artist_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Loads a specific artist details
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :show_contributions The number of contributions to show fetch
    # @return [ArtistResource]
    def get_artist_using_get(id, opts = {})
      data, _status_code, _headers = get_artist_using_get_with_http_info(id, opts)
      return data
    end

    # Loads a specific artist details
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :show_contributions The number of contributions to show fetch
    # @return [Array<(ArtistResource, Fixnum, Hash)>] ArtistResource data, response status code and response headers
    def get_artist_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.get_artist_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.get_artist_using_get" if id.nil?
      # resource path
      local_var_path = "/media/artists/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'show_contributions'] = opts[:'show_contributions'] if !opts[:'show_contributions'].nil?

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
        :return_type => 'ArtistResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#get_artist_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for artists
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_artists_by_name Filter for artists which name *STARTS* with the given string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageArtistResource]
    def search_artists_using_get(opts = {})
      data, _status_code, _headers = search_artists_using_get_with_http_info(opts)
      return data
    end

    # Search for artists
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_artists_by_name Filter for artists which name *STARTS* with the given string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageArtistResource, Fixnum, Hash)>] PageArtistResource data, response status code and response headers
    def search_artists_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.search_artists_using_get ..."
      end
      # resource path
      local_var_path = "/media/artists".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_artists_by_name'] = opts[:'filter_artists_by_name'] if !opts[:'filter_artists_by_name'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

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
        :return_type => 'PageArtistResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#search_artists_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an artist template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :artist_template_resource The artist template resource object
    # @return [nil]
    def update_artist_template_using_put(id, opts = {})
      update_artist_template_using_put_with_http_info(id, opts)
      return nil
    end

    # Update an artist template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :artist_template_resource The artist template resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_artist_template_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.update_artist_template_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.update_artist_template_using_put" if id.nil?
      # resource path
      local_var_path = "/media/artists/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'artist_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#update_artist_template_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modifies an artist details
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @option opts [ArtistResource] :artist_resource The new artist
    # @return [nil]
    def update_artist_using_put(id, opts = {})
      update_artist_using_put_with_http_info(id, opts)
      return nil
    end

    # Modifies an artist details
    # 
    # @param id The artist id
    # @param [Hash] opts the optional parameters
    # @option opts [ArtistResource] :artist_resource The new artist
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_artist_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MediaArtistsApi.update_artist_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling MediaArtistsApi.update_artist_using_put" if id.nil?
      # resource path
      local_var_path = "/media/artists/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'artist_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MediaArtistsApi#update_artist_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end