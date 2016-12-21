# SwaggerClient::ReportingUsersApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executive_revenue_item_sales_using_get1**](ReportingUsersApi.md#executive_revenue_item_sales_using_get1) | **GET** /reporting/users/registrations | Get user registration info


# **executive_revenue_item_sales_using_get1**
> PageResourceAggregateCountResource executive_revenue_item_sales_using_get1(opts)

Get user registration info

Get user registration counts grouped by time range

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsersApi.new

opts = { 
  granularity: "day", # String | The time duration to aggregate by
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789 # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
}

begin
  #Get user registration info
  result = api_instance.executive_revenue_item_sales_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsersApi->executive_revenue_item_sales_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 

### Return type

[**PageResourceAggregateCountResource**](PageResourceAggregateCountResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



