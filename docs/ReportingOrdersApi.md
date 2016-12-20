# SwaggerClient::ReportingOrdersApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_daily_invoices_using_get**](ReportingOrdersApi.md#get_daily_invoices_using_get) | **GET** /reporting/orders/count/{currency_code} | Retrieve invoice counts aggregated by time ranges


# **get_daily_invoices_using_get**
> PageAggregateInvoiceReportResource get_daily_invoices_using_get(currency_code, opts)

Retrieve invoice counts aggregated by time ranges

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingOrdersApi.new

currency_code = "currency_code_example" # String | The code for a currency to get sales data for

opts = { 
  granularity: "day", # String | The time duration to aggregate by
  filter_payment_status: "filter_payment_status_example", # String | A payment status to filter results by, can be a comma separated list
  filter_fulfillment_status: "filter_fulfillment_status_example", # String | An invoice fulfillment status to filter results by, can be a comma separated list
  start_date: 789, # Integer | The start of the time range to return, unix timestamp in seconds. Default is beginning of time
  end_date: 789 # Integer | The end of the time range to return, unix timestamp in seconds. Default is end of time
}

begin
  #Retrieve invoice counts aggregated by time ranges
  result = api_instance.get_daily_invoices_using_get(currency_code, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingOrdersApi->get_daily_invoices_using_get: #{e}"
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

### Return type

[**PageAggregateInvoiceReportResource**](PageAggregateInvoiceReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



