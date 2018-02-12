# KnetikCloudClient::ReportingOrdersApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_invoice_reports**](ReportingOrdersApi.md#get_invoice_reports) | **GET** /reporting/orders/count/{currency_code} | Retrieve invoice counts aggregated by time ranges


# **get_invoice_reports**
> PageResourceAggregateInvoiceReportResource get_invoice_reports(currency_code, opts)

Retrieve invoice counts aggregated by time ranges

<b>Permissions Needed:</b> REPORTING_ORDERS_ADMIN

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingOrdersApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  granularity: "day", # String | The time duration to aggregate by
  filter_payment_status: "filter_payment_status_example", # String | A payment status to filter results by, can be a comma separated list
  filter_fulfillment_status: "filter_fulfillment_status_example", # String | An invoice fulfillment status to filter results by, can be a comma separated list
  start_date: 789, # Integer | The start of the time range to return, unix timestamp in seconds. Default is beginning of time
  end_date: 789, # Integer | The end of the time range to return, unix timestamp in seconds. Default is end of time
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned
}

begin
  #Retrieve invoice counts aggregated by time ranges
  result = api_instance.get_invoice_reports(currency_code, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingOrdersApi->get_invoice_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency_code** | **String**| The code for a currency to get sales data for | 
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **filter_payment_status** | **String**| A payment status to filter results by, can be a comma separated list | [optional] 
 **filter_fulfillment_status** | **String**| An invoice fulfillment status to filter results by, can be a comma separated list | [optional] 
 **start_date** | **Integer**| The start of the time range to return, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to return, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]

### Return type

[**PageResourceAggregateInvoiceReportResource**](PageResourceAggregateInvoiceReportResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



