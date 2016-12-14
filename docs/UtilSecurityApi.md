# SwaggerClient::UtilSecurityApi

All URIs are relative to *https://devsandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_location_log_using_get**](UtilSecurityApi.md#get_user_location_log_using_get) | **GET** /security/country-log | Returns the authentication log for a user
[**user_using_get**](UtilSecurityApi.md#user_using_get) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **get_user_location_log_using_get**
> PageLocationLogResource get_user_location_log_using_get(opts)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilSecurityApi.new

opts = { 
  user_id: 56 # Integer | The user id
}

begin
  #Returns the authentication log for a user
  result = api_instance.get_user_location_log_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilSecurityApi->get_user_location_log_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user id | [optional] 

### Return type

[**PageLocationLogResource**](PageLocationLogResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **user_using_get**
> TokenDetailsResource user_using_get(opts)

Returns the authentication token details. Use /users endpoint for detailed user's info

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilSecurityApi.new

opts = { 
  authentication: SwaggerClient::Authentication.new # Authentication | The Authentication Object
}

begin
  #Returns the authentication token details. Use /users endpoint for detailed user's info
  result = api_instance.user_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilSecurityApi->user_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authentication** | [**Authentication**](Authentication.md)| The Authentication Object | [optional] 

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



