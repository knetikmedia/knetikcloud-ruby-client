# KnetikCloudClient::SocialGoogleApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**link_accounts1**](SocialGoogleApi.md#link_accounts1) | **POST** /social/google/users | Link google account


# **link_accounts1**
> link_accounts1(opts)

Link google account

Links the current user account to a google account, using the acccess token from google. Can also be used to update the access token after it has expired.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::SocialGoogleApi.new

opts = { 
  google_token: KnetikCloudClient::GoogleToken.new # GoogleToken | The token from google
}

begin
  #Link google account
  api_instance.link_accounts1(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling SocialGoogleApi->link_accounts1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **google_token** | [**GoogleToken**](GoogleToken.md)| The token from google | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



