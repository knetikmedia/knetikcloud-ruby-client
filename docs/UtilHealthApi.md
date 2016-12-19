# SwaggerClient::UtilHealthApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_health_info_using_get**](UtilHealthApi.md#get_health_info_using_get) | **GET** /health | Get health info


# **get_health_info_using_get**
> Object get_health_info_using_get

Get health info

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilHealthApi.new

begin
  #Get health info
  result = api_instance.get_health_info_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilHealthApi->get_health_info_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


