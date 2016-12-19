# SwaggerClient::UsersFriendshipsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_friend_using_post**](UsersFriendshipsApi.md#add_friend_using_post) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**connect_using_token_using_post**](UsersFriendshipsApi.md#connect_using_token_using_post) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**get_friends_using_get**](UsersFriendshipsApi.md#get_friends_using_get) | **GET** /users/{user_id}/friends | Get friends list
[**get_invite_token_using_get**](UsersFriendshipsApi.md#get_invite_token_using_get) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**get_invites_using_get**](UsersFriendshipsApi.md#get_invites_using_get) | **GET** /users/{user_id}/invites | Get pending invites
[**remove_friend_using_delete**](UsersFriendshipsApi.md#remove_friend_using_delete) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **add_friend_using_post**
> add_friend_using_post(user_id, id)

Add a friend

As a user, either creates or confirm a pending request. As an admin, call this endpoint twice while inverting the IDs to create a confirmed friendship.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me' if logged in

id = 56 # Integer | The id of the user to befriend


begin
  #Add a friend
  api_instance.add_friend_using_post(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->add_friend_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **Integer**| The id of the user to befriend | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **connect_using_token_using_post**
> connect_using_token_using_post(user_id, opts)

Redeem friendship token

Immediately connects the requested user with the user mapped by the provided invite token

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me' if logged in

opts = { 
  token: "token_example" # String | The invite token
}

begin
  #Redeem friendship token
  api_instance.connect_using_token_using_post(user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->connect_using_token_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **token** | **String**| The invite token | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_friends_using_get**
> PageSimpleUserResource get_friends_using_get(user_id, opts)

Get friends list

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me'

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get friends list
  result = api_instance.get_friends_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_friends_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageSimpleUserResource**](PageSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_invite_token_using_get**
> String get_invite_token_using_get(user_id)

Returns the invite token

This is a unique invite token that allows direct connection to the request user.  Exposing that token presents privacy issues if the token is leaked. Use friend request flow instead if confirmation is required

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me' if logged in


begin
  #Returns the invite token
  result = api_instance.get_invite_token_using_get(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_invite_token_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; if logged in | 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_invites_using_get**
> PageSimpleUserResource get_invites_using_get(user_id, opts)

Get pending invites

Invites that the specified user received

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me'

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "1" # String | a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get pending invites
  result = api_instance.get_invites_using_get(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_invites_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageSimpleUserResource**](PageSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **remove_friend_using_delete**
> remove_friend_using_delete(user_id, id)

Remove or decline a friend

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersFriendshipsApi.new

user_id = "user_id_example" # String | The id of the user or 'me' if logged in

id = 56 # Integer | The id of the user to befriend


begin
  #Remove or decline a friend
  api_instance.remove_friend_using_delete(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->remove_friend_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; if logged in | 
 **id** | **Integer**| The id of the user to befriend | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


