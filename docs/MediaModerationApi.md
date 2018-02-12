# KnetikCloudClient::MediaModerationApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_flag**](MediaModerationApi.md#add_flag) | **POST** /moderation/flags | Add a flag
[**delete_flag**](MediaModerationApi.md#delete_flag) | **DELETE** /moderation/flags | Delete a flag
[**get_flags**](MediaModerationApi.md#get_flags) | **GET** /moderation/flags | Returns a page of flags
[**get_moderation_report**](MediaModerationApi.md#get_moderation_report) | **GET** /moderation/reports/{id} | Get a flag report
[**get_moderation_reports**](MediaModerationApi.md#get_moderation_reports) | **GET** /moderation/reports | Returns a page of flag reports
[**update_moderation_report**](MediaModerationApi.md#update_moderation_report) | **PUT** /moderation/reports/{id} | Update a flag report


# **add_flag**
> FlagResource add_flag(opts)

Add a flag

<b>Permissions Needed:</b> ANY

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

api_instance = KnetikCloudClient::MediaModerationApi.new

opts = { 
  flag_resource: KnetikCloudClient::FlagResource.new # FlagResource | The flag resource object
}

begin
  #Add a flag
  result = api_instance.add_flag(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->add_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag_resource** | [**FlagResource**](FlagResource.md)| The flag resource object | [optional] 

### Return type

[**FlagResource**](FlagResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_flag**
> delete_flag(opts)

Delete a flag

<b>Permissions Needed:</b> MODERATION_ADMIN or owner

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

api_instance = KnetikCloudClient::MediaModerationApi.new

opts = { 
  context_name: "context_name_example", # String | The name of the context
  context_id: "context_id_example", # String | The id of the context
  user_id: 56 # Integer | The id of the user
}

begin
  #Delete a flag
  api_instance.delete_flag(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->delete_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context_name** | **String**| The name of the context | [optional] 
 **context_id** | **String**| The id of the context | [optional] 
 **user_id** | **Integer**| The id of the user | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_flags**
> PageResourceFlagResource get_flags(opts)

Returns a page of flags

<b>Permissions Needed:</b> MODERATION_ADMIN or owner

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

api_instance = KnetikCloudClient::MediaModerationApi.new

opts = { 
  filter_context: "filter_context_example", # String | Filter by flag context
  filter_context_id: "filter_context_id_example", # String | Filter by flag context ID
  filter_user_id: 56, # Integer | Filter by user ID
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of flags
  result = api_instance.get_flags(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling MediaModerationApi->get_flags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_context** | **String**| Filter by flag context | [optional] 
 **filter_context_id** | **String**| Filter by flag context ID | [optional] 
 **filter_user_id** | **Integer**| Filter by user ID | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceFlagResource**](PageResourceFlagResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_moderation_report**
> FlagReportResource get_moderation_report(id)

Get a flag report

<b>Permissions Needed:</b> MODERATION_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_moderation_reports**
> PageResourceFlagReportResource get_moderation_reports(opts)

Returns a page of flag reports

Context can be either a free-form string or a pre-defined context name. <br><br><b>Permissions Needed:</b> MODERATION_ADMIN

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

api_instance = KnetikCloudClient::MediaModerationApi.new

opts = { 
  exclude_resolved: true, # BOOLEAN | Ignore resolved context
  filter_context: "filter_context_example", # String | Filter by moderation context
  filter_context_id: "filter_context_id_example", # String | Filter by moderation context ID
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
 **filter_context_id** | **String**| Filter by moderation context ID | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceFlagReportResource**](PageResourceFlagReportResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_moderation_report**
> update_moderation_report(id, opts)

Update a flag report

Lets you set the resolution of a report. Resolution types is {banned,ignore} in case of 'banned' you will need to pass the reason. <br><br><b>Permissions Needed:</b> MODERATION_ADMIN

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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



