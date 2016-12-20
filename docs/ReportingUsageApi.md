# SwaggerClient::ReportingUsageApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_usage_by_day_using_get**](ReportingUsageApi.md#get_usage_by_day_using_get) | **GET** /reporting/usage/day | Returns aggregated endpoint usage information by the day
[**get_usage_by_hour_using_get**](ReportingUsageApi.md#get_usage_by_hour_using_get) | **GET** /reporting/usage/hour | Returns aggregated endpoint usage information by hour
[**get_usage_by_minute_using_get**](ReportingUsageApi.md#get_usage_by_minute_using_get) | **GET** /reporting/usage/minute | Returns aggregated endpoint usage information by minute
[**get_usage_by_month_using_get**](ReportingUsageApi.md#get_usage_by_month_using_get) | **GET** /reporting/usage/month | Returns aggregated endpoint usage information by month
[**get_usage_by_year_using_get**](ReportingUsageApi.md#get_usage_by_year_using_get) | **GET** /reporting/usage/year | Returns aggregated endpoint usage information by year


# **get_usage_by_day_using_get**
> PageResourceUsageInfo get_usage_by_day_using_get(start_date, end_date, opts)

Returns aggregated endpoint usage information by the day

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by the day
  result = api_instance.get_usage_by_day_using_get(start_date, end_date, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_day_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_hour_using_get**
> PageResourceUsageInfo get_usage_by_hour_using_get(start_date, end_date, opts)

Returns aggregated endpoint usage information by hour

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by hour
  result = api_instance.get_usage_by_hour_using_get(start_date, end_date, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_hour_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_minute_using_get**
> PageResourceUsageInfo get_usage_by_minute_using_get(start_date, end_date, opts)

Returns aggregated endpoint usage information by minute

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by minute
  result = api_instance.get_usage_by_minute_using_get(start_date, end_date, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_minute_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_month_using_get**
> PageResourceUsageInfo get_usage_by_month_using_get(start_date, end_date, opts)

Returns aggregated endpoint usage information by month

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by month
  result = api_instance.get_usage_by_month_using_get(start_date, end_date, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_month_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_year_using_get**
> PageResourceUsageInfo get_usage_by_year_using_get(start_date, end_date, opts)

Returns aggregated endpoint usage information by year

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by year
  result = api_instance.get_usage_by_year_using_get(start_date, end_date, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_year_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



