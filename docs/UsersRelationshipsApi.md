# SwaggerClient::UsersRelationshipsApi

All URIs are relative to *https://sandbox.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user_relationship**](UsersRelationshipsApi.md#create_user_relationship) | **POST** /users/relationships | Create a user relationship
[**delete_user_relationship**](UsersRelationshipsApi.md#delete_user_relationship) | **DELETE** /users/relationships/{id} | Delete a user relationship
[**get_user_relationship**](UsersRelationshipsApi.md#get_user_relationship) | **GET** /users/relationships/{id} | Get a user relationship
[**get_user_relationships**](UsersRelationshipsApi.md#get_user_relationships) | **GET** /users/relationships | Get a list of user relationships
[**update_user_relationship**](UsersRelationshipsApi.md#update_user_relationship) | **PUT** /users/relationships/{id} | Update a user relationship


# **create_user_relationship**
> UserRelationshipResource create_user_relationship(opts)

Create a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

opts = { 
  relationship: SwaggerClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Create a user relationship
  result = api_instance.create_user_relationship(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->create_user_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user_relationship**
> delete_user_relationship(id)

Delete a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Delete a user relationship
  api_instance.delete_user_relationship(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->delete_user_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the relationship | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_relationship**
> UserRelationshipResource get_user_relationship(id)

Get a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Get a user relationship
  result = api_instance.get_user_relationship(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->get_user_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the relationship | 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_relationships**
> PageResourceUserRelationshipResource get_user_relationships

Get a list of user relationships

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

begin
  #Get a list of user relationships
  result = api_instance.get_user_relationships
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->get_user_relationships: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResourceUserRelationshipResource**](PageResourceUserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_relationship**
> UserRelationshipResource update_user_relationship(id, opts)

Update a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship

opts = { 
  relationship: SwaggerClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Update a user relationship
  result = api_instance.update_user_relationship(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->update_user_relationship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the relationship | 
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



