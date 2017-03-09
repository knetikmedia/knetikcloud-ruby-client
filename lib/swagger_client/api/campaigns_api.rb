=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a challenge to a campaign
    # 
    # @param id The id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :challenge_id The id of the challenge
    # @return [nil]
    def add_challenge_to_campaign(id, opts = {})
      add_challenge_to_campaign_with_http_info(id, opts)
      return nil
    end

    # Add a challenge to a campaign
    # 
    # @param id The id of the campaign
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :challenge_id The id of the challenge
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_challenge_to_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.add_challenge_to_campaign ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.add_challenge_to_campaign" if id.nil?
      # resource path
      local_var_path = "/campaigns/{id}/challenges".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'challenge_id'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#add_challenge_to_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a campaign
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CampaignResource] :campaign_resource The campaign resource object
    # @return [CampaignResource]
    def create_campaign(opts = {})
      data, _status_code, _headers = create_campaign_with_http_info(opts)
      return data
    end

    # Create a campaign
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CampaignResource] :campaign_resource The campaign resource object
    # @return [Array<(CampaignResource, Fixnum, Hash)>] CampaignResource data, response status code and response headers
    def create_campaign_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.create_campaign ..."
      end
      # resource path
      local_var_path = "/campaigns".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'campaign_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a campaign template
    # Campaign Templates define a type of campaign and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
    # @return [TemplateResource]
    def create_campaign_template(opts = {})
      data, _status_code, _headers = create_campaign_template_with_http_info(opts)
      return data
    end

    # Create a campaign template
    # Campaign Templates define a type of campaign and the properties they have
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def create_campaign_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.create_campaign_template ..."
      end
      # resource path
      local_var_path = "/campaigns/templates".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'campaign_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_campaign(id, opts = {})
      delete_campaign_with_http_info(id, opts)
      return nil
    end

    # Delete a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.delete_campaign ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.delete_campaign" if id.nil?
      # resource path
      local_var_path = "/campaigns/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignsApi#delete_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a campaign template
    # If cascade = 'detach', it will force delete the template even if it's attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [nil]
    def delete_campaign_template(id, opts = {})
      delete_campaign_template_with_http_info(id, opts)
      return nil
    end

    # Delete a campaign template
    # If cascade &#x3D; &#39;detach&#39;, it will force delete the template even if it&#39;s attached to other objects
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade The value needed to delete used templates
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_campaign_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.delete_campaign_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.delete_campaign_template" if id.nil?
      # resource path
      local_var_path = "/campaigns/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignsApi#delete_campaign_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a single campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [CampaignResource]
    def get_campaign(id, opts = {})
      data, _status_code, _headers = get_campaign_with_http_info(id, opts)
      return data
    end

    # Returns a single campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignResource, Fixnum, Hash)>] CampaignResource data, response status code and response headers
    def get_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.get_campaign" if id.nil?
      # resource path
      local_var_path = "/campaigns/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CampaignResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the challenges associated with a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [PageResourceChallengeResource]
    def get_campaign_challenges(id, opts = {})
      data, _status_code, _headers = get_campaign_challenges_with_http_info(id, opts)
      return data
    end

    # List the challenges associated with a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(PageResourceChallengeResource, Fixnum, Hash)>] PageResourceChallengeResource data, response status code and response headers
    def get_campaign_challenges_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign_challenges ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.get_campaign_challenges" if id.nil?
      # resource path
      local_var_path = "/campaigns/{id}/challenges".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PageResourceChallengeResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_challenges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single campaign template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [TemplateResource]
    def get_campaign_template(id, opts = {})
      data, _status_code, _headers = get_campaign_template_with_http_info(id, opts)
      return data
    end

    # Get a single campaign template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def get_campaign_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.get_campaign_template" if id.nil?
      # resource path
      local_var_path = "/campaigns/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search campaign templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceTemplateResource]
    def get_campaign_templates(opts = {})
      data, _status_code, _headers = get_campaign_templates_with_http_info(opts)
      return data
    end

    # List and search campaign templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceTemplateResource, Fixnum, Hash)>] PageResourceTemplateResource data, response status code and response headers
    def get_campaign_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign_templates ..."
      end
      # resource path
      local_var_path = "/campaigns/templates".sub('{format}','json')

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
        :return_type => 'PageResourceTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search campaigns
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_active Filter for campaigns that are active
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceCampaignResource]
    def get_campaigns(opts = {})
      data, _status_code, _headers = get_campaigns_with_http_info(opts)
      return data
    end

    # List and search campaigns
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :filter_active Filter for campaigns that are active
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceCampaignResource, Fixnum, Hash)>] PageResourceCampaignResource data, response status code and response headers
    def get_campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaigns ..."
      end
      # resource path
      local_var_path = "/campaigns".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filter_active'] = opts[:'filter_active'] if !opts[:'filter_active'].nil?
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
        :return_type => 'PageResourceCampaignResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a challenge from a campaign
    # 
    # @param campaign_id The campaign id
    # @param id The challenge id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_challenge_from_campaign(campaign_id, id, opts = {})
      remove_challenge_from_campaign_with_http_info(campaign_id, id, opts)
      return nil
    end

    # Remove a challenge from a campaign
    # 
    # @param campaign_id The campaign id
    # @param id The challenge id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def remove_challenge_from_campaign_with_http_info(campaign_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.remove_challenge_from_campaign ..."
      end
      # verify the required parameter 'campaign_id' is set
      fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.remove_challenge_from_campaign" if campaign_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.remove_challenge_from_campaign" if id.nil?
      # resource path
      local_var_path = "/campaigns/{campaign_id}/challenges/{id}".sub('{format}','json').sub('{' + 'campaign_id' + '}', campaign_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignsApi#remove_challenge_from_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [CampaignResource] :campaign_resource The campaign resource object
    # @return [CampaignResource]
    def update_campaign(id, opts = {})
      data, _status_code, _headers = update_campaign_with_http_info(id, opts)
      return data
    end

    # Update a campaign
    # 
    # @param id The campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [CampaignResource] :campaign_resource The campaign resource object
    # @return [Array<(CampaignResource, Fixnum, Hash)>] CampaignResource data, response status code and response headers
    def update_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.update_campaign ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.update_campaign" if id.nil?
      # resource path
      local_var_path = "/campaigns/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'campaign_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#update_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an campaign template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
    # @return [TemplateResource]
    def update_campaign_template(id, opts = {})
      data, _status_code, _headers = update_campaign_template_with_http_info(id, opts)
      return data
    end

    # Update an campaign template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateResource] :campaign_template_resource The campaign template resource object
    # @return [Array<(TemplateResource, Fixnum, Hash)>] TemplateResource data, response status code and response headers
    def update_campaign_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.update_campaign_template ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.update_campaign_template" if id.nil?
      # resource path
      local_var_path = "/campaigns/templates/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'campaign_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#update_campaign_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
