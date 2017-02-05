# SwaggerClient::UsersRelationshipsApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_relationship_using_post**](UsersRelationshipsApi.md#add_relationship_using_post) | **POST** /users/relationships | Create a user relationship
[**delete_relationship_using_delete**](UsersRelationshipsApi.md#delete_relationship_using_delete) | **DELETE** /users/relationships/{id} | Delete a user relationship
[**get_relationship_using_get**](UsersRelationshipsApi.md#get_relationship_using_get) | **GET** /users/relationships/{id} | Get a user relationship
[**get_relationships_using_get**](UsersRelationshipsApi.md#get_relationships_using_get) | **GET** /users/relationships | Get a list of user relationships
[**update_relationship_using_put**](UsersRelationshipsApi.md#update_relationship_using_put) | **PUT** /users/relationships/{id} | Update a user relationship


# **add_relationship_using_post**
> UserRelationshipResource add_relationship_using_post(opts)

Create a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

opts = { 
  relationship: SwaggerClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Create a user relationship
  result = api_instance.add_relationship_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->add_relationship_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relationship** | [**UserRelationshipResource**](UserRelationshipResource.md)| The new relationship | [optional] 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_relationship_using_delete**
> delete_relationship_using_delete(id)

Delete a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Delete a user relationship
  api_instance.delete_relationship_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->delete_relationship_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the relationship | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_relationship_using_get**
> UserRelationshipResource get_relationship_using_get(id)

Get a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Get a user relationship
  result = api_instance.get_relationship_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->get_relationship_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the relationship | 

### Return type

[**UserRelationshipResource**](UserRelationshipResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_relationships_using_get**
> PageResourceUserRelationshipResource get_relationships_using_get

Get a list of user relationships

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

begin
  #Get a list of user relationships
  result = api_instance.get_relationships_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->get_relationships_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PageResourceUserRelationshipResource**](PageResourceUserRelationshipResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_relationship_using_put**
> UserRelationshipResource update_relationship_using_put(id, opts)

Update a user relationship

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship

opts = { 
  relationship: SwaggerClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Update a user relationship
  result = api_instance.update_relationship_using_put(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->update_relationship_using_put: #{e}"
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

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



