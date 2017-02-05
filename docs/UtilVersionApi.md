# SwaggerClient::UtilVersionApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_using_get3**](UtilVersionApi.md#get_using_get3) | **GET** /version | Get current version info


# **get_using_get3**
> Version get_using_get3

Get current version info

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilVersionApi.new

begin
  #Get current version info
  result = api_instance.get_using_get3
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilVersionApi->get_using_get3: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



