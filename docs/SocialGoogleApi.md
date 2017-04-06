# KnetikCloudClient::SocialGoogleApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_accounts1**](SocialGoogleApi.md#link_accounts1) | **POST** /social/google/users | Link facebook account


# **link_accounts1**
> link_accounts1(opts)

Link facebook account

Links the current user account to a facebook account, using the acccess token from facebook. Can also be used to update the access token after it has expired.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::SocialGoogleApi.new

opts = { 
  facebook_token: KnetikCloudClient::GoogleToken.new # GoogleToken | The token from facebook
}

begin
  #Link facebook account
  api_instance.link_accounts1(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SocialGoogleApi->link_accounts1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facebook_token** | [**GoogleToken**](GoogleToken.md)| The token from facebook | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



