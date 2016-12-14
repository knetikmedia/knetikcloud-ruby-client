# SwaggerClient::LogsApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_log_using_post**](LogsApi.md#add_user_log_using_post) | **POST** /audit/logs | Add a new user log entry
[**get_event_log_using_get**](LogsApi.md#get_event_log_using_get) | **GET** /bre/logs/event-log/{id} | Get an existing BRE event log entry by id
[**get_events_logs_using_get**](LogsApi.md#get_events_logs_using_get) | **GET** /bre/logs/event-log | Returns a list of BRE event log entries
[**get_forward_log_using_get**](LogsApi.md#get_forward_log_using_get) | **GET** /bre/logs/forward-log/{id} | Get an existing forward log entry by id
[**get_forward_logs_using_get**](LogsApi.md#get_forward_logs_using_get) | **GET** /bre/logs/forward-log | Returns a list of forward log entries
[**get_user_logs_using_get**](LogsApi.md#get_user_logs_using_get) | **GET** /audit/logs/{id} | Returns a user log entry by id
[**get_user_logs_using_get1**](LogsApi.md#get_user_logs_using_get1) | **GET** /audit/logs | Returns a page of user logs entries


# **add_user_log_using_post**
> add_user_log_using_post(opts)

Add a new user log entry

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

opts = { 
  log_entry: SwaggerClient::UserActionLog.new # UserActionLog | The user log entry to be added
}

begin
  #Add a new user log entry
  api_instance.add_user_log_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->add_user_log_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **log_entry** | [**UserActionLog**](UserActionLog.md)| The user log entry to be added | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_event_log_using_get**
> BreEventLog get_event_log_using_get(id)

Get an existing BRE event log entry by id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

id = "id_example" # String | The BRE event log entry id


begin
  #Get an existing BRE event log entry by id
  result = api_instance.get_event_log_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_event_log_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The BRE event log entry id | 

### Return type

[**BreEventLog**](BreEventLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_events_logs_using_get**
> PageBreEventLog get_events_logs_using_get(opts)

Returns a list of BRE event log entries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_event_name: "filter_event_name_example", # String | Filter event logs by event name
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a list of BRE event log entries
  result = api_instance.get_events_logs_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_events_logs_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_event_name** | **String**| Filter event logs by event name | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageBreEventLog**](PageBreEventLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_forward_log_using_get**
> ForwardLog get_forward_log_using_get(id)

Get an existing forward log entry by id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

id = "id_example" # String | The forward log entry id


begin
  #Get an existing forward log entry by id
  result = api_instance.get_forward_log_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_forward_log_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The forward log entry id | 

### Return type

[**ForwardLog**](ForwardLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_forward_logs_using_get**
> PageForwardLog get_forward_logs_using_get(opts)

Returns a list of forward log entries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

opts = { 
  filter_start_date: "filter_start_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_end_date: "filter_end_date_example", # String | A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).
  filter_status_code: 56, # Integer | Filter forward logs by http status code
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns a list of forward log entries
  result = api_instance.get_forward_logs_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_forward_logs_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_start_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_end_date** | **String**| A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). | [optional] 
 **filter_status_code** | **Integer**| Filter forward logs by http status code | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageForwardLog**](PageForwardLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_logs_using_get**
> UserActionLog get_user_logs_using_get(id)

Returns a user log entry by id

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

id = "id_example" # String | The user log entry id


begin
  #Returns a user log entry by id
  result = api_instance.get_user_logs_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_user_logs_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The user log entry id | 

### Return type

[**UserActionLog**](UserActionLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_user_logs_using_get1**
> PageUserActionLog get_user_logs_using_get1(opts)

Returns a page of user logs entries

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::LogsApi.new

opts = { 
  filter_user: 56, # Integer | Filter for actions taken by a specific user by id
  filter_action_name: "filter_action_name_example", # String | Filter for actions of a specific name
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns a page of user logs entries
  result = api_instance.get_user_logs_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->get_user_logs_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_user** | **Integer**| Filter for actions taken by a specific user by id | [optional] 
 **filter_action_name** | **String**| Filter for actions of a specific name | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageUserActionLog**](PageUserActionLog.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



