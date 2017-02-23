# SwaggerClient::UsersFriendshipsApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_friend**](UsersFriendshipsApi.md#add_friend) | **POST** /users/{user_id}/friends/{id} | Add a friend
[**get_friends**](UsersFriendshipsApi.md#get_friends) | **GET** /users/{user_id}/friends | Get friends list
[**get_invite_token**](UsersFriendshipsApi.md#get_invite_token) | **GET** /users/{user_id}/invite-token | Returns the invite token
[**get_invites**](UsersFriendshipsApi.md#get_invites) | **GET** /users/{user_id}/invites | Get pending invites
[**redeem_friendship_token**](UsersFriendshipsApi.md#redeem_friendship_token) | **POST** /users/{user_id}/friends/tokens | Redeem friendship token
[**remove_or_decline_friend**](UsersFriendshipsApi.md#remove_or_decline_friend) | **DELETE** /users/{user_id}/friends/{id} | Remove or decline a friend


# **add_friend**
> add_friend(user_id, id)

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
  api_instance.add_friend(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->add_friend: #{e}"
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
 - **Accept**: application/json



# **get_friends**
> PageResourceSimpleUserResource get_friends(user_id, opts)

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
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get friends list
  result = api_instance.get_friends(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_friends: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSimpleUserResource**](PageResourceSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_invite_token**
> String get_invite_token(user_id)

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
  result = api_instance.get_invite_token(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_invite_token: #{e}"
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
 - **Accept**: application/json



# **get_invites**
> PageResourceSimpleUserResource get_invites(user_id, opts)

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
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get pending invites
  result = api_instance.get_invites(user_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->get_invites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| The id of the user or &#39;me&#39; | 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceSimpleUserResource**](PageResourceSimpleUserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **redeem_friendship_token**
> redeem_friendship_token(user_id, opts)

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
  api_instance.redeem_friendship_token(user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->redeem_friendship_token: #{e}"
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
 - **Accept**: application/json



# **remove_or_decline_friend**
> remove_or_decline_friend(user_id, id)

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
  api_instance.remove_or_decline_friend(user_id, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersFriendshipsApi->remove_or_decline_friend: #{e}"
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
 - **Accept**: application/json



