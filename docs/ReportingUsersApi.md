# KnetikCloudClient::ReportingUsersApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_registrations**](ReportingUsersApi.md#get_user_registrations) | **GET** /reporting/users/registrations | Get user registration info


# **get_user_registrations**
> PageResourceAggregateCountResource get_user_registrations(opts)

Get user registration info

Get user registration counts grouped by time range

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

api_instance = KnetikCloudClient::ReportingUsersApi.new

opts = { 
  granularity: "day", # String | The time duration to aggregate by
  start_date: 789, # Integer | The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time
  end_date: 789, # Integer | The end of the time range to aggregate, unix timestamp in seconds. Default is end of time
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Get user registration info
  result = api_instance.get_user_registrations(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsersApi->get_user_registrations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **granularity** | **String**| The time duration to aggregate by | [optional] [default to day]
 **start_date** | **Integer**| The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time | [optional] 
 **end_date** | **Integer**| The end of the time range to aggregate, unix timestamp in seconds. Default is end of time | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceAggregateCountResource**](PageResourceAggregateCountResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



