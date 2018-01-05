# KnetikCloudClient::UsersRelationshipsApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

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
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_client_credentials_grant
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_password_grant
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::UsersRelationshipsApi.new

opts = { 
  relationship: KnetikCloudClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Create a user relationship
  result = api_instance.create_user_relationship(opts)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_user_relationship**
> delete_user_relationship(id)

Delete a user relationship

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

api_instance = KnetikCloudClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Delete a user relationship
  api_instance.delete_user_relationship(id)
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_relationship**
> UserRelationshipResource get_user_relationship(id)

Get a user relationship

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

api_instance = KnetikCloudClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship


begin
  #Get a user relationship
  result = api_instance.get_user_relationship(id)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_relationships**
> PageResourceUserRelationshipResource get_user_relationships(opts)

Get a list of user relationships

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

api_instance = KnetikCloudClient::UsersRelationshipsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "order_example" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #Get a list of user relationships
  result = api_instance.get_user_relationships(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling UsersRelationshipsApi->get_user_relationships: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] 

### Return type

[**PageResourceUserRelationshipResource**](PageResourceUserRelationshipResource.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user_relationship**
> UserRelationshipResource update_user_relationship(id, opts)

Update a user relationship

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

api_instance = KnetikCloudClient::UsersRelationshipsApi.new

id = 789 # Integer | The id of the relationship

opts = { 
  relationship: KnetikCloudClient::UserRelationshipResource.new # UserRelationshipResource | The new relationship
}

begin
  #Update a user relationship
  result = api_instance.update_user_relationship(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



