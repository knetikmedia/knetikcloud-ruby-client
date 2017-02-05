=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ReportingRevenueApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get revenue info by country
    # Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceRevenueCountryReportResource]
    def executive_revenue_country_sales_using_get(currency_code, opts = {})
      data, _status_code, _headers = executive_revenue_country_sales_using_get_with_http_info(currency_code, opts)
      return data
    end

    # Get revenue info by country
    # Get basic info about revenue from sales of all types, summed up within a time range and split out by country. Sorted for largest revenue at the top
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceRevenueCountryReportResource, Fixnum, Hash)>] PageResourceRevenueCountryReportResource data, response status code and response headers
    def executive_revenue_country_sales_using_get_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingRevenueApi.executive_revenue_country_sales_using_get ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingRevenueApi.executive_revenue_country_sales_using_get" if currency_code.nil?
      # resource path
      local_var_path = "/reporting/revenue/countries/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceRevenueCountryReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingRevenueApi#executive_revenue_country_sales_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get item revenue info
    # Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [RevenueReportResource]
    def executive_revenue_item_sales_using_get(currency_code, opts = {})
      data, _status_code, _headers = executive_revenue_item_sales_using_get_with_http_info(currency_code, opts)
      return data
    end

    # Get item revenue info
    # Get basic info about revenue from sales of items and bundles (not subscriptions, shipping, etc), summed up within a time range
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [Array<(RevenueReportResource, Fixnum, Hash)>] RevenueReportResource data, response status code and response headers
    def executive_revenue_item_sales_using_get_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingRevenueApi.executive_revenue_item_sales_using_get ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingRevenueApi.executive_revenue_item_sales_using_get" if currency_code.nil?
      # resource path
      local_var_path = "/reporting/revenue/item-sales/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevenueReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingRevenueApi#executive_revenue_item_sales_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get revenue info by item
    # Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @option opts [Integer] :size The number of objects returned per page (default to 25)
    # @option opts [Integer] :page The number of the page returned, starting with 1 (default to 1)
    # @return [PageResourceRevenueProductReportResource]
    def executive_revenue_product_sales_using_get(currency_code, opts = {})
      data, _status_code, _headers = executive_revenue_product_sales_using_get_with_http_info(currency_code, opts)
      return data
    end

    # Get revenue info by item
    # Get basic info about revenue from sales of all types, summed up within a time range and split out by specific item. Sorted for largest revenue at the top
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @option opts [Integer] :size The number of objects returned per page
    # @option opts [Integer] :page The number of the page returned, starting with 1
    # @return [Array<(PageResourceRevenueProductReportResource, Fixnum, Hash)>] PageResourceRevenueProductReportResource data, response status code and response headers
    def executive_revenue_product_sales_using_get_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingRevenueApi.executive_revenue_product_sales_using_get ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingRevenueApi.executive_revenue_product_sales_using_get" if currency_code.nil?
      # resource path
      local_var_path = "/reporting/revenue/products/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceRevenueProductReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingRevenueApi#executive_revenue_product_sales_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get refund revenue info
    # Get basic info about revenue loss from refunds (for all item types), summed up within a time range.
    # @param currency_code The code for a currency to get refund data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [RevenueReportResource]
    def executive_revenue_refunds_using_get(currency_code, opts = {})
      data, _status_code, _headers = executive_revenue_refunds_using_get_with_http_info(currency_code, opts)
      return data
    end

    # Get refund revenue info
    # Get basic info about revenue loss from refunds (for all item types), summed up within a time range.
    # @param currency_code The code for a currency to get refund data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [Array<(RevenueReportResource, Fixnum, Hash)>] RevenueReportResource data, response status code and response headers
    def executive_revenue_refunds_using_get_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingRevenueApi.executive_revenue_refunds_using_get ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingRevenueApi.executive_revenue_refunds_using_get" if currency_code.nil?
      # resource path
      local_var_path = "/reporting/revenue/refunds/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevenueReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingRevenueApi#executive_revenue_refunds_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get subscription revenue info
    # Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [RevenueReportResource]
    def executive_revenue_subscription_sales_using_get(currency_code, opts = {})
      data, _status_code, _headers = executive_revenue_subscription_sales_using_get_with_http_info(currency_code, opts)
      return data
    end

    # Get subscription revenue info
    # Get basic info about revenue from sales of new subscriptions as well as recurring payemnts, summed up within a time range
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
    # @return [Array<(RevenueReportResource, Fixnum, Hash)>] RevenueReportResource data, response status code and response headers
    def executive_revenue_subscription_sales_using_get_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingRevenueApi.executive_revenue_subscription_sales_using_get ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingRevenueApi.executive_revenue_subscription_sales_using_get" if currency_code.nil?
      # resource path
      local_var_path = "/reporting/revenue/subscription-sales/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?

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
      auth_names = ['knetik_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RevenueReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingRevenueApi#executive_revenue_subscription_sales_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
