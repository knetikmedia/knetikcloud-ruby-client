# KnetikCloudClient::UtilSecurityApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user_location_log**](UtilSecurityApi.md#get_user_location_log) | **GET** /security/country-log | Returns the authentication log for a user
[**get_user_token_details**](UtilSecurityApi.md#get_user_token_details) | **GET** /me | Returns the authentication token details. Use /users endpoint for detailed user&#39;s info


# **get_user_location_log**
> PageResourceLocationLogResource get_user_location_log(opts)

Returns the authentication log for a user

A log entry is recorded everytime a user requests a new token. Standard pagination available

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

api_instance = KnetikCloudClient::UtilSecurityApi.new

opts = { 
  user_id: 56, # Integer | The user id
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Returns the authentication log for a user
  result = api_instance.get_user_location_log(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilSecurityApi->get_user_location_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user id | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceLocationLogResource**](PageResourceLocationLogResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_token_details**
> TokenDetailsResource get_user_token_details

Returns the authentication token details. Use /users endpoint for detailed user's info

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

api_instance = KnetikCloudClient::UtilSecurityApi.new

begin
  #Returns the authentication token details. Use /users endpoint for detailed user's info
  result = api_instance.get_user_token_details
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UtilSecurityApi->get_user_token_details: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenDetailsResource**](TokenDetailsResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



