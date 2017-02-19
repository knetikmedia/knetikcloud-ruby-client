=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class MessagingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Send a raw email to one or more users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RawEmailResource] :raw_email_resource The new raw email to be sent
    # @return [nil]
    def send_raw_email(opts = {})
      send_raw_email_with_http_info(opts)
      return nil
    end

    # Send a raw email to one or more users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [RawEmailResource] :raw_email_resource The new raw email to be sent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_raw_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_raw_email ..."
      end
      # resource path
      local_var_path = "/messaging/raw-email".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'raw_email_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_raw_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a raw SMS
    # Sends a raw SMS text message to one or more users. User's without registered mobile numbers will be skipped.
    # @param [Hash] opts the optional parameters
    # @option opts [RawSMSResource] :raw_sms_resource The new raw SMS to be sent
    # @return [nil]
    def send_raw_sms(opts = {})
      send_raw_sms_with_http_info(opts)
      return nil
    end

    # Send a raw SMS
    # Sends a raw SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped.
    # @param [Hash] opts the optional parameters
    # @option opts [RawSMSResource] :raw_sms_resource The new raw SMS to be sent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_raw_sms_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_raw_sms ..."
      end
      # resource path
      local_var_path = "/messaging/raw-sms".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'raw_sms_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_raw_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a templated email to one or more users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateEmailResource] :message_resource The new template email to be sent
    # @return [nil]
    def send_templated_email(opts = {})
      send_templated_email_with_http_info(opts)
      return nil
    end

    # Send a templated email to one or more users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateEmailResource] :message_resource The new template email to be sent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_templated_email_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_templated_email ..."
      end
      # resource path
      local_var_path = "/messaging/templated-email".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'message_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_templated_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send a new templated SMS
    # Sends a templated SMS text message to one or more users. User's without registered mobile numbers will be skipped.
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateSMSResource] :template_sms_resource The new template SMS to be sent
    # @return [nil]
    def send_templated_sms(opts = {})
      send_templated_sms_with_http_info(opts)
      return nil
    end

    # Send a new templated SMS
    # Sends a templated SMS text message to one or more users. User&#39;s without registered mobile numbers will be skipped.
    # @param [Hash] opts the optional parameters
    # @option opts [TemplateSMSResource] :template_sms_resource The new template SMS to be sent
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def send_templated_sms_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagingApi.send_templated_sms ..."
      end
      # resource path
      local_var_path = "/messaging/templated-sms".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(opts[:'template_sms_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagingApi#send_templated_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
