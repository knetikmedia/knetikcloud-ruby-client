# SwaggerClient::MediaModerationApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_flag_report_using_get**](MediaModerationApi.md#get_flag_report_using_get) | **GET** /moderation/reports/{id} | Get a flag report
[**get_flags_report_using_get**](MediaModerationApi.md#get_flags_report_using_get) | **GET** /moderation/reports | Returns a page of flag reports
[**set_flag_resolution_using_put**](MediaModerationApi.md#set_flag_resolution_using_put) | **PUT** /moderation/reports/{id} | Update a flag report


# **get_flag_report_using_get**
> get_flag_report_using_get(id)

Get a flag report

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaModerationApi.new

id = 789 # Integer | The flag report id


begin
  #Get a flag report
  api_instance.get_flag_report_using_get(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaModerationApi->get_flag_report_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The flag report id | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_flags_report_using_get**
> PageResourceFlagReportResource get_flags_report_using_get(opts)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaModerationApi.new

opts = { 
  exclude_resolved: true, # BOOLEAN | Ignore resolved context
  filter_context: "filter_context_example", # String | Filter by moderation context
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of flag reports
  result = api_instance.get_flags_report_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaModerationApi->get_flags_report_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exclude_resolved** | **BOOLEAN**| Ignore resolved context | [optional] [default to true]
 **filter_context** | **String**| Filter by moderation context | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceFlagReportResource**](PageResourceFlagReportResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_flag_resolution_using_put**
> set_flag_resolution_using_put(id, opts)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MediaModerationApi.new

id = 789 # Integer | The flag report id

opts = { 
  flag_report_resource: SwaggerClient::FlagReportResource.new # FlagReportResource | The new flag report
}

begin
  #Update a flag report
  api_instance.set_flag_resolution_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MediaModerationApi->set_flag_resolution_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The flag report id | 
 **flag_report_resource** | [**FlagReportResource**](FlagReportResource.md)| The new flag report | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



