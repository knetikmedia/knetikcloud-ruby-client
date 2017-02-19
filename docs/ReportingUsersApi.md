# SwaggerClient::ReportingUsersApi

All URIs are relative to *https://localhost:8080/*

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
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
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
  result = api_instance.get_user_registrations(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsersApi->get_user_registrations: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



