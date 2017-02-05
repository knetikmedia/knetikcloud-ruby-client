# SwaggerClient::AuthPermissionsApi

All URIs are relative to *https://integration.knetikcloud.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_permission_using_post**](AuthPermissionsApi.md#create_permission_using_post) | **POST** /auth/permissions | Create a new permission
[**delete_permission_using_delete**](AuthPermissionsApi.md#delete_permission_using_delete) | **DELETE** /auth/permissions/{permission} | Delete a permission
[**get_permission_using_get**](AuthPermissionsApi.md#get_permission_using_get) | **GET** /auth/permissions/{permission} | Get a single permission
[**get_permission_using_get1**](AuthPermissionsApi.md#get_permission_using_get1) | **GET** /auth/permissions | List and search permissions
[**update_permission_using_put**](AuthPermissionsApi.md#update_permission_using_put) | **PUT** /auth/permissions/{permission} | Update a permission


# **create_permission_using_post**
> PermissionResource create_permission_using_post(opts)

Create a new permission

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthPermissionsApi.new

opts = { 
  permission_resource: SwaggerClient::PermissionResource.new # PermissionResource | The permission resource object
}

begin
  #Create a new permission
  result = api_instance.create_permission_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->create_permission_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_permission_using_delete**
> delete_permission_using_delete(permission, opts)

Delete a permission

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value

opts = { 
  force: true # BOOLEAN | If true, removes permission assigned to roles
}

begin
  #Delete a permission
  api_instance.delete_permission_using_delete(permission, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->delete_permission_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **force** | **BOOLEAN**| If true, removes permission assigned to roles | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_permission_using_get**
> PermissionResource get_permission_using_get(permission)

Get a single permission

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value


begin
  #Get a single permission
  result = api_instance.get_permission_using_get(permission)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->get_permission_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_permission_using_get1**
> PageResourcePermissionResource get_permission_using_get1(opts)

List and search permissions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthPermissionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "permission:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search permissions
  result = api_instance.get_permission_using_get1(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->get_permission_using_get1: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to permission:ASC]

### Return type

[**PageResourcePermissionResource**](PageResourcePermissionResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_permission_using_put**
> update_permission_using_put(permission, opts)

Update a permission

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value

opts = { 
  permission_resource: SwaggerClient::PermissionResource.new # PermissionResource | The permission resource object
}

begin
  #Update a permission
  api_instance.update_permission_using_put(permission, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->update_permission_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



