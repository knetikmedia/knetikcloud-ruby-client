# KnetikCloudClient::SocialFacebookApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_accounts**](SocialFacebookApi.md#link_accounts) | **POST** /social/facebook/users | Link facebook account


# **link_accounts**
> link_accounts(opts)

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

api_instance = KnetikCloudClient::SocialFacebookApi.new

opts = { 
  facebook_token: KnetikCloudClient::FacebookToken.new # FacebookToken | The token from facebook
}

begin
  #Link facebook account
  api_instance.link_accounts(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SocialFacebookApi->link_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **facebook_token** | [**FacebookToken**](FacebookToken.md)| The token from facebook | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



