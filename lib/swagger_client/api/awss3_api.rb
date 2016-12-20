=begin
#Knetik Platform API Documentation Latest

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class AWSS3Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a signed S3 URL
    # Requires the file name and file content type (i.e., 'video/mpeg')
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename The file name
    # @option opts [String] :content_type The content type
    # @return [AmazonS3Activity]
    def pre_sign_url_using_get(opts = {})
      data, _status_code, _headers = pre_sign_url_using_get_with_http_info(opts)
      return data
    end

    # Get a signed S3 URL
    # Requires the file name and file content type (i.e., &#39;video/mpeg&#39;)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename The file name
    # @option opts [String] :content_type The content type
    # @return [Array<(AmazonS3Activity, Fixnum, Hash)>] AmazonS3Activity data, response status code and response headers
    def pre_sign_url_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AWSS3Api.pre_sign_url_using_get ..."
      end
      # resource path
      local_var_path = "/amazon/s3/signedposturl".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'filename'] = opts[:'filename'] if !opts[:'filename'].nil?
      query_params[:'content_type'] = opts[:'content_type'] if !opts[:'content_type'].nil?

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
        :return_type => 'AmazonS3Activity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AWSS3Api#pre_sign_url_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
