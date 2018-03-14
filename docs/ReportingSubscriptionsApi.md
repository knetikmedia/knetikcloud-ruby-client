# KnetikCloudClient::ReportingSubscriptionsApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_subscription_reports**](ReportingSubscriptionsApi.md#get_subscription_reports) | **GET** /reporting/subscription | Get a list of available subscription reports in most recent first order


# **get_subscription_reports**
> PageResourceBillingReport get_subscription_reports(opts)

Get a list of available subscription reports in most recent first order

<b>Permissions Needed:</b> SUBSCRIPTIONS_ADMIN

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

api_instance = KnetikCloudClient::ReportingSubscriptionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get a list of available subscription reports in most recent first order
  result = api_instance.get_subscription_reports(opts)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



