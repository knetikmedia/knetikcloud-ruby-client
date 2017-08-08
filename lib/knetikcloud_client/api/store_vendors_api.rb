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
  class StoreVendorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a vendor
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [VendorResource] :vendor The vendor
    # @return [VendorResource]
    def create_vendor(opts = {})
      data, _status_code, _headers = create_vendor_with_http_info(opts)
      return data
    end

    # Create a vendor
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [VendorResource] :vendor The vendor
    # @return [Array<(VendorResource, Fixnum, Hash)>] VendorResource data, response status code and response headers
    def create_vendor_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.create_vendor ..."
      end
      # resource path
      local_var_path = "/vendors"

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
      post_body = @api_client.object_to_http_body(opts[:'vendor'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VendorResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#create_vendor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a vendor template
    # Vendor Templates define a type of vendor and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :vendor_template_resource The new vendor template
    # @return [ItemTemplateResource]
    def create_vendor_template(opts = {})
      data, _status_code, _headers = create_vendor_template_with_http_info(opts)
      return data
    end

    # Create a vendor template
    # Vendor Templates define a type of vendor and the properties they have.
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :vendor_template_resource The new vendor template
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def create_vendor_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.create_vendor_template ..."
      end
      # resource path
      local_var_path = "/vendors/templates"

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
      post_body = @api_client.object_to_http_body(opts[:'vendor_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#create_vendor_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_vendor(id, opts = {})
      delete_vendor_with_http_info(id, opts)
      return nil
    end

    # Delete a vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_vendor_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.delete_vendor ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.delete_vendor"
      end
      # resource path
      local_var_path = "/vendors/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreVendorsApi#delete_vendor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a vendor template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [nil]
    def delete_vendor_template(id, opts = {})
      delete_vendor_template_with_http_info(id, opts)
      return nil
    end

    # Delete a vendor template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_vendor_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.delete_vendor_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.delete_vendor_template"
      end
      # resource path
      local_var_path = "/vendors/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: StoreVendorsApi#delete_vendor_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @return [VendorResource]
    def get_vendor(id, opts = {})
      data, _status_code, _headers = get_vendor_with_http_info(id, opts)
      return data
    end

    # Get a single vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @return [Array<(VendorResource, Fixnum, Hash)>] VendorResource data, response status code and response headers
    def get_vendor_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.get_vendor ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.get_vendor"
      end
      # resource path
      local_var_path = "/vendors/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'VendorResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#get_vendor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a single vendor template
    # Vendor Templates define a type of vendor and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [ItemTemplateResource]
    def get_vendor_template(id, opts = {})
      data, _status_code, _headers = get_vendor_template_with_http_info(id, opts)
      return data
    end

    # Get a single vendor template
    # Vendor Templates define a type of vendor and the properties they have.
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def get_vendor_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.get_vendor_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.get_vendor_template"
      end
      # resource path
      local_var_path = "/vendors/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#get_vendor_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search vendor templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to 1)
    # @return [PageResourceItemTemplateResource]
    def get_vendor_templates(opts = {})
      data, _status_code, _headers = get_vendor_templates_with_http_info(opts)
      return data
    end

    # List and search vendor templates
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceItemTemplateResource, Fixnum, Hash)>] PageResourceItemTemplateResource data, response status code and response headers
    def get_vendor_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.get_vendor_templates ..."
      end
      # resource path
      local_var_path = "/vendors/templates"

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
        :return_type => 'PageResourceItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#get_vendor_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List and search vendors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name Filters vendors by name starting with the text provided in the filter
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (default to id:ASC)
    # @return [PageResourceVendorResource]
    def get_vendors(opts = {})
      data, _status_code, _headers = get_vendors_with_http_info(opts)
      return data
    end

    # List and search vendors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_name Filters vendors by name starting with the text provided in the filter
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @option opts [String] :order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
    # @return [Array<(PageResourceVendorResource, Fixnum, Hash)>] PageResourceVendorResource data, response status code and response headers
    def get_vendors_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.get_vendors ..."
      end
      # resource path
      local_var_path = "/vendors"

      # query parameters
      query_params = {}
      query_params[:'filter_name'] = opts[:'filter_name'] if !opts[:'filter_name'].nil?
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
        :return_type => 'PageResourceVendorResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#get_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @option opts [VendorResource] :vendor The vendor
    # @return [VendorResource]
    def update_vendor(id, opts = {})
      data, _status_code, _headers = update_vendor_with_http_info(id, opts)
      return data
    end

    # Update a vendor
    # 
    # @param id The id of the vendor
    # @param [Hash] opts the optional parameters
    # @option opts [VendorResource] :vendor The vendor
    # @return [Array<(VendorResource, Fixnum, Hash)>] VendorResource data, response status code and response headers
    def update_vendor_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.update_vendor ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.update_vendor"
      end
      # resource path
      local_var_path = "/vendors/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'vendor'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VendorResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#update_vendor\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a vendor template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :vendor_template_resource The vendor template resource object
    # @return [ItemTemplateResource]
    def update_vendor_template(id, opts = {})
      data, _status_code, _headers = update_vendor_template_with_http_info(id, opts)
      return data
    end

    # Update a vendor template
    # 
    # @param id The id of the template
    # @param [Hash] opts the optional parameters
    # @option opts [ItemTemplateResource] :vendor_template_resource The vendor template resource object
    # @return [Array<(ItemTemplateResource, Fixnum, Hash)>] ItemTemplateResource data, response status code and response headers
    def update_vendor_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StoreVendorsApi.update_vendor_template ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StoreVendorsApi.update_vendor_template"
      end
      # resource path
      local_var_path = "/vendors/templates/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'vendor_template_resource'])
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ItemTemplateResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StoreVendorsApi#update_vendor_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
