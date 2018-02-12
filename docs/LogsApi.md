# KnetikCloudClient::LogsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_log**](LogsApi.md#add_user_log) | **POST** /audit/logs | Add a user log entry
[**get_bre_event_log**](LogsApi.md#get_bre_event_log) | **GET** /bre/logs/event-log/{id} | Get an existing BRE event log entry by id
[**get_bre_event_logs**](LogsApi.md#get_bre_event_logs) | **GET** /bre/logs/event-log | Returns a list of BRE event log entries
[**get_bre_forward_log**](LogsApi.md#get_bre_forward_log) | **GET** /bre/logs/forward-log/{id} | Get an existing forward log entry by id
[**get_bre_forward_logs**](LogsApi.md#get_bre_forward_logs) | **GET** /bre/logs/forward-log | Returns a list of forward log entries
[**get_user_log**](LogsApi.md#get_user_log) | **GET** /audit/logs/{id} | Returns a user log entry by id
[**get_user_logs**](LogsApi.md#get_user_logs) | **GET** /audit/logs | Returns a page of user logs entries


# **add_user_log**
> add_user_log(opts)

Add a user log entry

<b>Permissions Needed:</b> owner

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

api_instance = KnetikCloudClient::LogsApi.new

opts = { 
  log_entry: KnetikCloudClient::UserActionLog.new # UserActionLog | The user log entry to be added
}

begin
  #Add a user log entry
  api_instance.add_user_log(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->add_user_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **log_entry** | [**UserActionLog**](UserActionLog.md)| The user log entry to be added | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_event_log**
> BreEventLog get_bre_event_log(id)

Get an existing BRE event log entry by id

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

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

api_instance = KnetikCloudClient::LogsApi.new

id = "id_example" # String | The BRE event log entry id


begin
  #Get an existing BRE event log entry by id
  result = api_instance.get_bre_event_log(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_bre_event_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The BRE event log entry id | 

### Return type

[**BreEventLog**](BreEventLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_event_logs**
> PageResourceBreEventLog get_bre_event_logs(opts)

Returns a list of BRE event log entries

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

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

api_instance = KnetikCloudClient::LogsApi.new

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_event_name: "filter_event_name_example", # String | Filter event logs by event name
  filter_event_id: "filter_event_id_example", # String | Filter event logs by request id
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:DESC", # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
  filter_rule_id: "filter_rule_id_example" # String | Filter event logs by request id
}

begin
  #Returns a list of BRE event log entries
  result = api_instance.get_bre_event_logs(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_bre_event_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_event_name** | **String**| Filter event logs by event name | [optional] 
 **filter_event_id** | **String**| Filter event logs by request id | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]
 **filter_rule_id** | **String**| Filter event logs by request id | [optional] 

### Return type

[**PageResourceBreEventLog**](PageResourceBreEventLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_forward_log**
> ForwardLog get_bre_forward_log(id)

Get an existing forward log entry by id

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

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

api_instance = KnetikCloudClient::LogsApi.new

id = "id_example" # String | The forward log entry id


begin
  #Get an existing forward log entry by id
  result = api_instance.get_bre_forward_log(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_bre_forward_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The forward log entry id | 

### Return type

[**ForwardLog**](ForwardLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_bre_forward_logs**
> PageResourceForwardLog get_bre_forward_logs(opts)

Returns a list of forward log entries

<b>Permissions Needed:</b> BRE_RULE_ENGINE_EVENTS_ADMIN

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

api_instance = KnetikCloudClient::LogsApi.new

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_end_date: "filter_end_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_status_code: 56, # Integer | Filter forward logs by http status code
  filter_url: 56, # Integer | Filter forward logs by URL starting with...
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:DESC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a list of forward log entries
  result = api_instance.get_bre_forward_logs(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_bre_forward_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_status_code** | **Integer**| Filter forward logs by http status code | [optional] 
 **filter_url** | **Integer**| Filter forward logs by URL starting with... | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:DESC]

### Return type

[**PageResourceForwardLog**](PageResourceForwardLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_log**
> UserActionLog get_user_log(id)

Returns a user log entry by id

<b>Permissions Needed:</b> LOGS_ADMIN or owner

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

api_instance = KnetikCloudClient::LogsApi.new

id = "id_example" # String | The user log entry id


begin
  #Returns a user log entry by id
  result = api_instance.get_user_log(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_user_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user log entry id | 

### Return type

[**UserActionLog**](UserActionLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_logs**
> PageResourceUserActionLog get_user_logs(opts)

Returns a page of user logs entries

<b>Permissions Needed:</b> LOGS_ADMIN or owner

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

api_instance = KnetikCloudClient::LogsApi.new

opts = { 
  filter_user: 56, # Integer | Filter for actions taken by a specific user by id
  filter_action_name: "filter_action_name_example", # String | Filter for actions of a specific name
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "timestamp:DESC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a page of user logs entries
  result = api_instance.get_user_logs(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling LogsApi->get_user_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_user** | **Integer**| Filter for actions taken by a specific user by id | [optional] 
 **filter_action_name** | **String**| Filter for actions of a specific name | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to timestamp:DESC]

### Return type

[**PageResourceUserActionLog**](PageResourceUserActionLog.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



