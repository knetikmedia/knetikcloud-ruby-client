# SwaggerClient::ReportingSubscriptionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_reports**](ReportingSubscriptionsApi.md#get_subscription_reports) | **GET** /reporting/subscription | Get a list of available subscription reports in most recent first order


# **get_subscription_reports**
> PageResourceBillingReport get_subscription_reports(opts)

Get a list of available subscription reports in most recent first order

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingSubscriptionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get a list of available subscription reports in most recent first order
  result = api_instance.get_subscription_reports(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingSubscriptionsApi->get_subscription_reports: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBillingReport**](PageResourceBillingReport.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



