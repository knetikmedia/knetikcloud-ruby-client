# KnetikCloudClient::ReportingUsageApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_usage_by_day**](ReportingUsageApi.md#get_usage_by_day) | **GET** /reporting/usage/day | Returns aggregated endpoint usage information by day
[**get_usage_by_hour**](ReportingUsageApi.md#get_usage_by_hour) | **GET** /reporting/usage/hour | Returns aggregated endpoint usage information by hour
[**get_usage_by_minute**](ReportingUsageApi.md#get_usage_by_minute) | **GET** /reporting/usage/minute | Returns aggregated endpoint usage information by minute
[**get_usage_by_month**](ReportingUsageApi.md#get_usage_by_month) | **GET** /reporting/usage/month | Returns aggregated endpoint usage information by month
[**get_usage_by_year**](ReportingUsageApi.md#get_usage_by_year) | **GET** /reporting/usage/year | Returns aggregated endpoint usage information by year
[**get_usage_endpoints**](ReportingUsageApi.md#get_usage_endpoints) | **GET** /reporting/usage/endpoints | Returns list of endpoints called (method and url)


# **get_usage_by_day**
> PageResourceUsageInfo get_usage_by_day(start_date, end_date, opts)

Returns aggregated endpoint usage information by day

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  method: "method_example", # String | Filter for a certain endpoint method.  Must include url as well to work
  url: "url_example", # String | Filter for a certain endpoint.  Must include method as well to work
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by day
  result = api_instance.get_usage_by_day(start_date, end_date, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_day: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **String**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **String**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_hour**
> PageResourceUsageInfo get_usage_by_hour(start_date, end_date, opts)

Returns aggregated endpoint usage information by hour

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  method: "method_example", # String | Filter for a certain endpoint method.  Must include url as well to work
  url: "url_example", # String | Filter for a certain endpoint.  Must include method as well to work
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by hour
  result = api_instance.get_usage_by_hour(start_date, end_date, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_hour: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **String**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **String**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_minute**
> PageResourceUsageInfo get_usage_by_minute(start_date, end_date, opts)

Returns aggregated endpoint usage information by minute

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  method: "method_example", # String | Filter for a certain endpoint method.  Must include url as well to work
  url: "url_example", # String | Filter for a certain endpoint.  Must include method as well to work
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by minute
  result = api_instance.get_usage_by_minute(start_date, end_date, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_minute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **String**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **String**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_month**
> PageResourceUsageInfo get_usage_by_month(start_date, end_date, opts)

Returns aggregated endpoint usage information by month

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoint. Removes the url and method from the result object
  method: "method_example", # String | Filter for a certain endpoint method.  Must include url as well to work
  url: "url_example", # String | Filter for a certain endpoint.  Must include method as well to work
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by month
  result = api_instance.get_usage_by_month(start_date, end_date, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_month: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoint. Removes the url and method from the result object | [optional] [default to false]
 **method** | **String**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **String**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_by_year**
> PageResourceUsageInfo get_usage_by_year(start_date, end_date, opts)

Returns aggregated endpoint usage information by year

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds

opts = { 
  combine_endpoints: false, # BOOLEAN | Whether to combine counts from different endpoints. Removes the url and method from the result object
  method: "method_example", # String | Filter for a certain endpoint method.  Must include url as well to work
  url: "url_example", # String | Filter for a certain endpoint.  Must include method as well to work
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #Returns aggregated endpoint usage information by year
  result = api_instance.get_usage_by_year(start_date, end_date, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_by_year: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 
 **combine_endpoints** | **BOOLEAN**| Whether to combine counts from different endpoints. Removes the url and method from the result object | [optional] [default to false]
 **method** | **String**| Filter for a certain endpoint method.  Must include url as well to work | [optional] 
 **url** | **String**| Filter for a certain endpoint.  Must include method as well to work | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceUsageInfo**](PageResourceUsageInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_usage_endpoints**
> Array&lt;String&gt; get_usage_endpoints(start_date, end_date)

Returns list of endpoints called (method and url)

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::ReportingUsageApi.new

start_date = 789 # Integer | The beginning of the range being requested, unix timestamp in seconds

end_date = 789 # Integer | The ending of the range being requested, unix timestamp in seconds


begin
  #Returns list of endpoints called (method and url)
  result = api_instance.get_usage_endpoints(start_date, end_date)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ReportingUsageApi->get_usage_endpoints: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Integer**| The beginning of the range being requested, unix timestamp in seconds | 
 **end_date** | **Integer**| The ending of the range being requested, unix timestamp in seconds | 

### Return type

**Array&lt;String&gt;**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



