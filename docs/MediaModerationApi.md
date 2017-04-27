# KnetikCloudClient::MediaModerationApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_moderation_report**](MediaModerationApi.md#get_moderation_report) | **GET** /moderation/reports/{id} | Get a flag report
[**get_moderation_reports**](MediaModerationApi.md#get_moderation_reports) | **GET** /moderation/reports | Returns a page of flag reports
[**update_moderation_report**](MediaModerationApi.md#update_moderation_report) | **PUT** /moderation/reports/{id} | Update a flag report


# **get_moderation_report**
> FlagReportResource get_moderation_report(id)

Get a flag report

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaModerationApi.new

id = 789 # Integer | The flag report id


begin
  #Get a flag report
  result = api_instance.get_moderation_report(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->get_moderation_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The flag report id | 

### Return type

[**FlagReportResource**](FlagReportResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_moderation_reports**
> PageResourceFlagReportResource get_moderation_reports(opts)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaModerationApi.new

opts = { 
  exclude_resolved: true, # BOOLEAN | Ignore resolved context
  filter_context: "filter_context_example", # String | Filter by moderation context
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of flag reports
  result = api_instance.get_moderation_reports(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->get_moderation_reports: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_moderation_report**
> update_moderation_report(id, opts)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::MediaModerationApi.new

id = 789 # Integer | The flag report id

opts = { 
  flag_report_resource: KnetikCloudClient::FlagReportResource.new # FlagReportResource | The new flag report
}

begin
  #Update a flag report
  api_instance.update_moderation_report(id, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->update_moderation_report: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



