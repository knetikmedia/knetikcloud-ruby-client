# KnetikCloudClient::AuthTokensApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_tokens**](AuthTokensApi.md#delete_tokens) | **DELETE** /auth/tokens | Delete tokens by username, client id, or both
[**get_token**](AuthTokensApi.md#get_token) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**get_tokens**](AuthTokensApi.md#get_tokens) | **GET** /auth/tokens | List usernames and client ids


# **delete_tokens**
> delete_tokens(opts)

Delete tokens by username, client id, or both

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

api_instance = KnetikCloudClient::AuthTokensApi.new

opts = { 
  username: "username_example", # String | The username of the user
  client_id: "client_id_example" # String | The id of the client
}

begin
  #Delete tokens by username, client id, or both
  api_instance.delete_tokens(opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthTokensApi->delete_tokens: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | [optional] 
 **client_id** | **String**| The id of the client | [optional] 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_token**
> OauthAccessTokenResource get_token(username, client_id)

Get a single token by username and client id

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

api_instance = KnetikCloudClient::AuthTokensApi.new

username = "username_example" # String | The username of the user

client_id = "client_id_example" # String | The id of the client


begin
  #Get a single token by username and client id
  result = api_instance.get_token(username, client_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthTokensApi->get_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 
 **client_id** | **String**| The id of the client | 

### Return type

[**OauthAccessTokenResource**](OauthAccessTokenResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tokens**
> PageResourceOauthAccessTokenResource get_tokens(opts)

List usernames and client ids

Token value not shown

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

api_instance = KnetikCloudClient::AuthTokensApi.new

opts = { 
  filter_client_id: "filter_client_id_example", # String | Filters for token whose client id matches provided string
  filter_username: "filter_username_example", # String | Filters for token whose username matches provided string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List usernames and client ids
  result = api_instance.get_tokens(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthTokensApi->get_tokens: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_client_id** | **String**| Filters for token whose client id matches provided string | [optional] 
 **filter_username** | **String**| Filters for token whose username matches provided string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceOauthAccessTokenResource**](PageResourceOauthAccessTokenResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



