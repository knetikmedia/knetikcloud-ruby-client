=begin
#Knetik Platform API Documentation latest 

#This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ReportingOrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve invoice counts aggregated by time ranges
    # 
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :granularity The time duration to aggregate by (default to day)
    # @option opts [String] :filter_payment_status A payment status to filter results by, can be a comma separated list
    # @option opts [String] :filter_fulfillment_status An invoice fulfillment status to filter results by, can be a comma separated list
    # @option opts [Integer] :start_date The start of the time range to return, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to return, unix timestamp in seconds. Default is end of time
    # @return [PageResourceAggregateInvoiceReportResource]
    def get_invoice_reports(currency_code, opts = {})
      data, _status_code, _headers = get_invoice_reports_with_http_info(currency_code, opts)
      return data
    end

    # Retrieve invoice counts aggregated by time ranges
    # 
    # @param currency_code The code for a currency to get sales data for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :granularity The time duration to aggregate by
    # @option opts [String] :filter_payment_status A payment status to filter results by, can be a comma separated list
    # @option opts [String] :filter_fulfillment_status An invoice fulfillment status to filter results by, can be a comma separated list
    # @option opts [Integer] :start_date The start of the time range to return, unix timestamp in seconds. Default is beginning of time
    # @option opts [Integer] :end_date The end of the time range to return, unix timestamp in seconds. Default is end of time
    # @return [Array<(PageResourceAggregateInvoiceReportResource, Fixnum, Hash)>] PageResourceAggregateInvoiceReportResource data, response status code and response headers
    def get_invoice_reports_with_http_info(currency_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingOrdersApi.get_invoice_reports ..."
      end
      # verify the required parameter 'currency_code' is set
      fail ArgumentError, "Missing the required parameter 'currency_code' when calling ReportingOrdersApi.get_invoice_reports" if currency_code.nil?
      if opts[:'granularity'] && !['millisecond', 'second', 'minute', 'hour', 'day', 'week', 'month', 'year'].include?(opts[:'granularity'])
        fail ArgumentError, 'invalid value for "granularity", must be one of millisecond, second, minute, hour, day, week, month, year'
      end
      # resource path
      local_var_path = "/reporting/orders/count/{currency_code}".sub('{format}','json').sub('{' + 'currency_code' + '}', currency_code.to_s)

      # query parameters
      query_params = {}
      query_params[:'granularity'] = opts[:'granularity'] if !opts[:'granularity'].nil?
      query_params[:'filter_payment_status'] = opts[:'filter_payment_status'] if !opts[:'filter_payment_status'].nil?
      query_params[:'filter_fulfillment_status'] = opts[:'filter_fulfillment_status'] if !opts[:'filter_fulfillment_status'].nil?
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
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageResourceAggregateInvoiceReportResource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingOrdersApi#get_invoice_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
