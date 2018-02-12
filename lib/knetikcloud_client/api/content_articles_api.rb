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
  class ContentArticlesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new article
    # Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.<br><br><b>Permissions:</b> ARTICLES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [ArticleResource] :article_resource The new article
    # @return [ArticleResource]
    def create_article(opts = {})
      data, _status_code, _headers = create_article_with_http_info(opts)
      return data
    end

    # Create a new article
    # Articles are blobs of text with titles, a category and assets. Formatting and display of the text is in the hands of the front end.&lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions:&lt;/b&gt; ARTICLES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [ArticleResource] :article_resource The new article
    # @return [Array<(ArticleResource, Fixnum, Hash)>] ArticleResource data, response status code and response headers
    def create_article_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.create_article ..."
      end
      # resource path
      local_var_path = "/content/articles"

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
      post_body = @api_client.object_to_http_body(opts[:'article_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ArticleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#create_article\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an article template
    # Article Templates define a type of article and the properties they have. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :article_template_resource The article template resource object
    # @return [TemplateResource]
    def create_article_template(opts = {})
      data, _status_code, _headers = create_article_template_with_http_info(opts)
      return data
    end

    # Create an article template
    # Article Templates define a type of article and the properties they have. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :article_template_resource The article template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_article_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.create_article_template ..."
      end
      # resource path
      local_var_path = "/content/articles/templates"

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
      post_body = @api_client.object_to_http_body(opts[:'article_template_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#create_article_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing article
    # <b>Permissions Needed:</b> ARTICLES_ADMIN
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_article(id, opts = {})
      delete_article_with_http_info(id, opts)
      return nil
    end

    # Delete an existing article
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_article_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.delete_article ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.delete_article"
      end
      # resource path
      local_var_path = "/content/articles/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContentArticlesApi#delete_article\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an article template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects. <br><br><b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_article_template(id, opts = {})
      delete_article_template_with_http_info(id, opts)
      return nil
    end

    # Delete an article template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_article_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.delete_article_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.delete_article_template"
      end
      # resource path
      local_var_path = "/content/articles/templates/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cascade'] = opts[:'cascade'] if !opts[:'cascade'].nil?

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
        @api_client.config.logger.debug "API called: ContentArticlesApi#delete_article_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single article
    # <b>Permissions Needed:</b> ANY
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @return [ArticleResource]
    def get_article(id, opts = {})
      data, _status_code, _headers = get_article_with_http_info(id, opts)
      return data
    end

    # Get a single article
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArticleResource, Fixnum, Hash)>] ArticleResource data, response status code and response headers
    def get_article_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.get_article ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.get_article"
      end
      # resource path
      local_var_path = "/content/articles/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ArticleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#get_article\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single article template
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_article_template(id, opts = {})
      data, _status_code, _headers = get_article_template_with_http_info(id, opts)
      return data
    end

    # Get a single article template
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTICLES_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_article_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.get_article_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.get_article_template"
      end
      # resource path
      local_var_path = "/content/articles/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#get_article_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search article templates
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN or ARTICLES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceTemplateResource]
    def get_article_templates(opts = {})
      data, _status_code, _headers = get_article_templates_with_http_info(opts)
      return data
    end

    # List and search article templates
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN or ARTICLES_ADMIN
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceTemplateResource, Fixnum, Hash)>] PageResourceTemplateResource data, response status code and response headers
    def get_article_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.get_article_templates ..."
      end
      # resource path
      local_var_path = "/content/articles/templates"

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
        :return_type => 'PageResourceTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#get_article_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search articles
    # Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use 'Get a single article' to retrieve the full resource with assets for a given item as needed. <br><br><b>Permissions Needed:</b> ANY
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_active_only Filter for articles that are active (true) or inactive (false)
    # @option opts [String] :filter_category Filter for articles from a specific category by id
    # @option opts [String] :filter_tagset Filter for articles with at least one of a specified set of tags (separated by comma)
    # @option opts [String] :filter_tag_intersection Filter for articles with all of a specified set of tags (separated by comma)
    # @option opts [String] :filter_tag_exclusion Filter for articles with none of a specified set of tags (separated by comma)
    # @option opts [String] :filter_title Filter for articles whose title contains a string
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceArticleResource]
    def get_articles(opts = {})
      data, _status_code, _headers = get_articles_with_http_info(opts)
      return data
    end

    # List and search articles
    # Get a list of articles with optional filtering. Assets will not be filled in on the resources returned. Use &#39;Get a single article&#39; to retrieve the full resource with assets for a given item as needed. &lt;br&gt;&lt;br&gt;&lt;b&gt;Permissions Needed:&lt;/b&gt; ANY
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_active_only Filter for articles that are active (true) or inactive (false)
    # @option opts [String] :filter_category Filter for articles from a specific category by id
    # @option opts [String] :filter_tagset Filter for articles with at least one of a specified set of tags (separated by comma)
    # @option opts [String] :filter_tag_intersection Filter for articles with all of a specified set of tags (separated by comma)
    # @option opts [String] :filter_tag_exclusion Filter for articles with none of a specified set of tags (separated by comma)
    # @option opts [String] :filter_title Filter for articles whose title contains a string
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceArticleResource, Fixnum, Hash)>] PageResourceArticleResource data, response status code and response headers
    def get_articles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.get_articles ..."
      end
      # resource path
      local_var_path = "/content/articles"

      # query parameters
      query_params = {}
      query_params[:'filter_active_only'] = opts[:'filter_active_only'] if !opts[:'filter_active_only'].nil?
      query_params[:'filter_category'] = opts[:'filter_category'] if !opts[:'filter_category'].nil?
      query_params[:'filter_tagset'] = opts[:'filter_tagset'] if !opts[:'filter_tagset'].nil?
      query_params[:'filter_tag_intersection'] = opts[:'filter_tag_intersection'] if !opts[:'filter_tag_intersection'].nil?
      query_params[:'filter_tag_exclusion'] = opts[:'filter_tag_exclusion'] if !opts[:'filter_tag_exclusion'].nil?
      query_params[:'filter_title'] = opts[:'filter_title'] if !opts[:'filter_title'].nil?
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
        :return_type => 'PageResourceArticleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#get_articles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing article
    # <b>Permissions Needed:</b> ARTICLES_ADMIN
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @option opts [ArticleResource] :article_resource The article object
    # @return [ArticleResource]
    def update_article(id, opts = {})
      data, _status_code, _headers = update_article_with_http_info(id, opts)
      return data
    end

    # Update an existing article
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; ARTICLES_ADMIN
    # @param id The article id
    # @param [Hash] opts the optional parameters
    # @option opts [ArticleResource] :article_resource The article object
    # @return [Array<(ArticleResource, Fixnum, Hash)>] ArticleResource data, response status code and response headers
    def update_article_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.update_article ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.update_article"
      end
      # resource path
      local_var_path = "/content/articles/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'article_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ArticleResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#update_article\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an article template
    # <b>Permissions Needed:</b> TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :article_template_resource The article template resource object
    # @return [TemplateResource]
    def update_article_template(id, opts = {})
      data, _status_code, _headers = update_article_template_with_http_info(id, opts)
      return data
    end

    # Update an article template
    # &lt;b&gt;Permissions Needed:&lt;/b&gt; TEMPLATE_ADMIN
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :article_template_resource The article template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def update_article_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContentArticlesApi.update_article_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContentArticlesApi.update_article_template"
      end
      # resource path
      local_var_path = "/content/articles/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'article_template_resource'])
      auth_names = ['oauth2_client_credentials_grant', 'oauth2_password_grant']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContentArticlesApi#update_article_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
