# SwaggerClient::AccessTokenApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_o_auth_token**](AccessTokenApi.md#get_o_auth_token) | **POST** /oauth/token | Get access token


# **get_o_auth_token**
> OAuth2Resource get_o_auth_token(grant_type, client_id, opts)

Get access token

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AccessTokenApi.new

grant_type = "client_credentials" # String | Grant type

client_id = "knetik" # String | The id of the client

opts = { 
  client_secret: "client_secret_example", # String | The secret key of the client.  Used only with a grant_type of client_credentials
  username: "username_example", # String | The username of the client.  Used only with a grant_type of password
  password: "password_example" # String | The password of the client.  Used only with a grant_type of password
}

begin
  #Get access token
  result = api_instance.get_o_auth_token(grant_type, client_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccessTokenApi->get_o_auth_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant type | [default to client_credentials]
 **client_id** | **String**| The id of the client | [default to knetik]
 **client_secret** | **String**| The secret key of the client.  Used only with a grant_type of client_credentials | [optional] 
 **username** | **String**| The username of the client.  Used only with a grant_type of password | [optional] 
 **password** | **String**| The password of the client.  Used only with a grant_type of password | [optional] 

### Return type

[**OAuth2Resource**](OAuth2Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



