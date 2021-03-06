# KnetikCloudClient::AccessTokenApi

All URIs are relative to *https://jsapi-integration.us-east-1.elasticbeanstalk.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_o_auth_token**](AccessTokenApi.md#get_o_auth_token) | **POST** /oauth/token | Get access token


# **get_o_auth_token**
> OAuth2Resource get_o_auth_token(grant_type, client_id, opts)

Get access token

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AccessTokenApi.new

grant_type = "client_credentials" # String | Grant type

client_id = "knetik" # String | The id of the client

opts = { 
  client_secret: "client_secret_example", # String | The secret key of the client.  Used only with a grant_type of client_credentials
  username: "username_example", # String | The username of the client. Used only with a grant_type of password
  password: "password_example", # String | The password of the client. Used only with a grant_type of password
  token: "token_example", # String | The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins)
  refresh_token: "refresh_token_example" # String | The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token
}

begin
  #Get access token
  result = api_instance.get_o_auth_token(grant_type, client_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AccessTokenApi->get_o_auth_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **String**| Grant type | [default to client_credentials]
 **client_id** | **String**| The id of the client | [default to knetik]
 **client_secret** | **String**| The secret key of the client.  Used only with a grant_type of client_credentials | [optional] 
 **username** | **String**| The username of the client. Used only with a grant_type of password | [optional] 
 **password** | **String**| The password of the client. Used only with a grant_type of password | [optional] 
 **token** | **String**| The 3rd party authentication token. Used only with a grant_type of facebook, google, etc (social plugins) | [optional] 
 **refresh_token** | **String**| The refresh token obtained during prior authentication. Used only with a grant_type of refresh_token | [optional] 

### Return type

[**OAuth2Resource**](OAuth2Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



