# SwaggerClient::BRERuleEngineVariablesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_list_using_get**](BRERuleEngineVariablesApi.md#get_list_using_get) | **GET** /bre/variable-types | Get a list of variable types available


# **get_list_using_get**
> Array&lt;VariableTypeResource&gt; get_list_using_get

Get a list of variable types available

Types include integer, string, user and invoice. These are used to qualify trigger parameters and action variables with strong typing.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineVariablesApi.new

begin
  #Get a list of variable types available
  result = api_instance.get_list_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineVariablesApi->get_list_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VariableTypeResource&gt;**](VariableTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


