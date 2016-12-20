=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ContentPollsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add your vote to a poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :answer_key The answer key
    # @return [PollResponseResource]
    def answer_poll_using_post(id, opts = {})
      data, _status_code, _headers = answer_poll_using_post_with_http_info(id, opts)
      return data
    end

    # Add your vote to a poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :answer_key The answer key
    # @return [Array<(PollResponseResource, Fixnum, Hash)>] PollResponseResource data, response status code and response headers
    def answer_poll_using_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.answer_poll_using_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.answer_poll_using_post" if id.nil?
      # resource path
      local_var_path = "/media/polls/{id}/response".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'answer_key'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PollResponseResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#answer_poll_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a poll template
    # Poll templates define a type of poll and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :poll_template_resource The poll template resource object
    # @return [TemplateResource]
    def create_poll_template_using_post(opts = {})
      data, _status_code, _headers = create_poll_template_using_post_with_http_info(opts)
      return data
    end

    # Create a poll template
    # Poll templates define a type of poll and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :poll_template_resource The poll template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_poll_template_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.create_poll_template_using_post ..."
      end
      # resource path
      local_var_path = "/media/polls/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'poll_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#create_poll_template_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new poll
    # Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
    # @param [Hash] opts the optional parameters
    # @option opts [PollResource] :poll_resource The poll object
    # @return [PollResource]
    def create_poll_using_post(opts = {})
      data, _status_code, _headers = create_poll_using_post_with_http_info(opts)
      return data
    end

    # Create a new poll
    # Polls are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.
    # @param [Hash] opts the optional parameters
    # @option opts [PollResource] :poll_resource The poll object
    # @return [Array<(PollResource, Fixnum, Hash)>] PollResource data, response status code and response headers
    def create_poll_using_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.create_poll_using_post ..."
      end
      # resource path
      local_var_path = "/media/polls".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'poll_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PollResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#create_poll_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a poll template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_poll_template_using_delete(id, opts = {})
      delete_poll_template_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete a poll template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_poll_template_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.delete_poll_template_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.delete_poll_template_using_delete" if id.nil?
      # resource path
      local_var_path = "/media/polls/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: ContentPollsApi#delete_poll_template_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_poll_using_delete(id, opts = {})
      delete_poll_using_delete_with_http_info(id, opts)
      return nil
    end

    # Delete an existing poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_poll_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.delete_poll_using_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.delete_poll_using_delete" if id.nil?
      # resource path
      local_var_path = "/media/polls/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContentPollsApi#delete_poll_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get poll answer
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [PollResponseResource]
    def get_poll_answer_using_get(id, opts = {})
      data, _status_code, _headers = get_poll_answer_using_get_with_http_info(id, opts)
      return data
    end

    # Get poll answer
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [Array<(PollResponseResource, Fixnum, Hash)>] PollResponseResource data, response status code and response headers
    def get_poll_answer_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.get_poll_answer_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.get_poll_answer_using_get" if id.nil?
      # resource path
      local_var_path = "/media/polls/{id}/response".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PollResponseResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#get_poll_answer_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single poll template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_poll_template_using_get(id, opts = {})
      data, _status_code, _headers = get_poll_template_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single poll template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_poll_template_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.get_poll_template_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.get_poll_template_using_get" if id.nil?
      # resource path
      local_var_path = "/media/polls/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#get_poll_template_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search poll templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageTemplateResource]
    def get_poll_templates_using_get(opts = {})
      data, _status_code, _headers = get_poll_templates_using_get_with_http_info(opts)
      return data
    end

    # List and search poll templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageTemplateResource, Fixnum, Hash)>] PageTemplateResource data, response status code and response headers
    def get_poll_templates_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.get_poll_templates_using_get ..."
      end
      # resource path
      local_var_path = "/media/polls/templates".sub('{format}','json')

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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#get_poll_templates_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [PollResource]
    def get_poll_using_get(id, opts = {})
      data, _status_code, _headers = get_poll_using_get_with_http_info(id, opts)
      return data
    end

    # Get a single poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @return [Array<(PollResource, Fixnum, Hash)>] PollResource data, response status code and response headers
    def get_poll_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.get_poll_using_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.get_poll_using_get" if id.nil?
      # resource path
      local_var_path = "/media/polls/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PollResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#get_poll_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search polls
    # Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single poll' to retrieve the full resource with assets for a given item as needed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_category Filter for polls from a specific category by id
    # @option opts [String] :filter_tagset Filter for polls with specified tags (separated by comma)
    # @option opts [String] :filter_text Filter for polls whose text contains a string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PagePollResource]
    def get_polls_using_get(opts = {})
      data, _status_code, _headers = get_polls_using_get_with_http_info(opts)
      return data
    end

    # List and search polls
    # Get a list of polls with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single poll&#39; to retrieve the full resource with assets for a given item as needed.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_category Filter for polls from a specific category by id
    # @option opts [String] :filter_tagset Filter for polls with specified tags (separated by comma)
    # @option opts [String] :filter_text Filter for polls whose text contains a string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PagePollResource, Fixnum, Hash)>] PagePollResource data, response status code and response headers
    def get_polls_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.get_polls_using_get ..."
      end
      # resource path
      local_var_path = "/media/polls".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_category'] = opts[:'filter_category'] if !opts[:'filter_category'].nil?
      query_params[:'filter_tagset'] = opts[:'filter_tagset'] if !opts[:'filter_tagset'].nil?
      query_params[:'filter_text'] = opts[:'filter_text'] if !opts[:'filter_text'].nil?
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
        :return_type => 'PagePollResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#get_polls_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a poll template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :poll_template_resource The poll template resource object
    # @return [nil]
    def update_poll_template_using_put(id, opts = {})
      update_poll_template_using_put_with_http_info(id, opts)
      return nil
    end

    # Update a poll template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :poll_template_resource The poll template resource object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_poll_template_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.update_poll_template_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.update_poll_template_using_put" if id.nil?
      # resource path
      local_var_path = "/media/polls/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'poll_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#update_poll_template_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @option opts [PollResource] :poll_resource The poll object
    # @return [nil]
    def update_poll_using_put(id, opts = {})
      update_poll_using_put_with_http_info(id, opts)
      return nil
    end

    # Update an existing poll
    # 
    # @param id The poll id
    # @param [Hash] opts the optional parameters
    # @option opts [PollResource] :poll_resource The poll object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_poll_using_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentPollsApi.update_poll_using_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContentPollsApi.update_poll_using_put" if id.nil?
      # resource path
      local_var_path = "/media/polls/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'poll_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentPollsApi#update_poll_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end