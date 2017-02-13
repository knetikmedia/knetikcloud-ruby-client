# SwaggerClient::UtilVersionApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_version**](UtilVersionApi.md#get_version) | **GET** /version | Get current version info


# **get_version**
> Version get_version

Get current version info

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilVersionApi.new

begin
  #Get current version info
  result = api_instance.get_version
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilVersionApi->get_version: #{e}"
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



