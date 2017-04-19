=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module KnetikCloudClient
  class UtilMaintenanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_maintenance(opts = {})
      delete_maintenance_with_http_info(opts)
      return nil
    end

    # Delete maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_maintenance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilMaintenanceApi.delete_maintenance ..."
      end
      # resource path
      local_var_path = "/maintenance"

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
        @api_client.config.logger.debug "API called: UtilMaintenanceApi#delete_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get current maintenance info
    # Get current maintenance info. 404 if no maintenance.
    # @param [Hash] opts the optional parameters
    # @return [Maintenance]
    def get_maintenance(opts = {})
      data, _status_code, _headers = get_maintenance_with_http_info(opts)
      return data
    end

    # Get current maintenance info
    # Get current maintenance info. 404 if no maintenance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Maintenance, Fixnum, Hash)>] Maintenance data, response status code and response headers
    def get_maintenance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilMaintenanceApi.get_maintenance ..."
      end
      # resource path
      local_var_path = "/maintenance"

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
        :return_type => 'Maintenance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilMaintenanceApi#get_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set current maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Maintenance] :maintenance The maintenance object
    # @return [nil]
    def set_maintenance(opts = {})
      set_maintenance_with_http_info(opts)
      return nil
    end

    # Set current maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Maintenance] :maintenance The maintenance object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_maintenance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilMaintenanceApi.set_maintenance ..."
      end
      # resource path
      local_var_path = "/maintenance"

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
      post_body = @api_client.object_to_http_body(opts[:'maintenance'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilMaintenanceApi#set_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update current maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Maintenance] :maintenance The maintenance object
    # @return [nil]
    def update_maintenance(opts = {})
      update_maintenance_with_http_info(opts)
      return nil
    end

    # Update current maintenance info
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Maintenance] :maintenance The maintenance object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_maintenance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UtilMaintenanceApi.update_maintenance ..."
      end
      # resource path
      local_var_path = "/maintenance"

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
      post_body = @api_client.object_to_http_body(opts[:'maintenance'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UtilMaintenanceApi#update_maintenance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
