# SwaggerClient::AuthTokensApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_token_using_delete**](AuthTokensApi.md#delete_token_using_delete) | **DELETE** /auth/tokens/{username} | Delete all tokens by username
[**delete_token_with_client_id_using_delete**](AuthTokensApi.md#delete_token_with_client_id_using_delete) | **DELETE** /auth/tokens/{username}/{client_id} | Delete a token by username and client id
[**get_token_by_user_using_get**](AuthTokensApi.md#get_token_by_user_using_get) | **GET** /auth/tokens/{username}/{client_id} | Get a single token by username and client id
[**get_tokens_using_get**](AuthTokensApi.md#get_tokens_using_get) | **GET** /auth/tokens | List usernames and client ids


# **delete_token_using_delete**
> delete_token_using_delete(username)

Delete all tokens by username

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthTokensApi.new

username = "username_example" # String | The username of the user


begin
  #Delete all tokens by username
  api_instance.delete_token_using_delete(username)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthTokensApi->delete_token_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_token_with_client_id_using_delete**
> delete_token_with_client_id_using_delete(username, client_id)

Delete a token by username and client id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthTokensApi.new

username = "username_example" # String | The username of the user

client_id = "client_id_example" # String | The id of the client


begin
  #Delete a token by username and client id
  api_instance.delete_token_with_client_id_using_delete(username, client_id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthTokensApi->delete_token_with_client_id_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The username of the user | 
 **client_id** | **String**| The id of the client | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_token_by_user_using_get**
> OauthAccessTokenResource get_token_by_user_using_get(username, client_id)

Get a single token by username and client id

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthTokensApi.new

username = "username_example" # String | The username of the user

client_id = "client_id_example" # String | The id of the client


begin
  #Get a single token by username and client id
  result = api_instance.get_token_by_user_using_get(username, client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthTokensApi->get_token_by_user_using_get: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_tokens_using_get**
> PageResourceOauthAccessTokenResource get_tokens_using_get(opts)

List usernames and client ids

Token value not shown

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthTokensApi.new

opts = { 
  filter_client_id: "filter_client_id_example", # String | Filters for token whose client id matches provided string
  filter_username: "filter_username_example", # String | Filters for token whose username matches provided string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "username:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List usernames and client ids
  result = api_instance.get_tokens_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthTokensApi->get_tokens_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_client_id** | **String**| Filters for token whose client id matches provided string | [optional] 
 **filter_username** | **String**| Filters for token whose username matches provided string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to username:ASC]

### Return type

[**PageResourceOauthAccessTokenResource**](PageResourceOauthAccessTokenResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



