# KnetikCloudClient::UtilHealthApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_health**](UtilHealthApi.md#get_health) | **GET** /health | Get health info


# **get_health**
> Object get_health

Get health info

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::UtilHealthApi.new

begin
  #Get health info
  result = api_instance.get_health
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilHealthApi->get_health: #{e}"
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
 - **Accept**: application/json



