# KnetikCloudClient::AuthPermissionsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_permission**](AuthPermissionsApi.md#create_permission) | **POST** /auth/permissions | Create a new permission
[**delete_permission**](AuthPermissionsApi.md#delete_permission) | **DELETE** /auth/permissions/{permission} | Delete a permission
[**get_permission**](AuthPermissionsApi.md#get_permission) | **GET** /auth/permissions/{permission} | Get a single permission
[**get_permissions**](AuthPermissionsApi.md#get_permissions) | **GET** /auth/permissions | List and search permissions
[**update_permission**](AuthPermissionsApi.md#update_permission) | **PUT** /auth/permissions/{permission} | Update a permission


# **create_permission**
> PermissionResource create_permission(opts)

Create a new permission

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthPermissionsApi.new

opts = { 
  permission_resource: KnetikCloudClient::PermissionResource.new # PermissionResource | The permission resource object
}

begin
  #Create a new permission
  result = api_instance.create_permission(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->create_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_permission**
> delete_permission(permission, opts)

Delete a permission

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value

opts = { 
  force: true # BOOLEAN | If true, removes permission assigned to roles
}

begin
  #Delete a permission
  api_instance.delete_permission(permission, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->delete_permission: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_permission**
> PermissionResource get_permission(permission)

Get a single permission

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value


begin
  #Get a single permission
  result = api_instance.get_permission(permission)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->get_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_permissions**
> PageResourcePermissionResource get_permissions(opts)

List and search permissions

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthPermissionsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "permission:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search permissions
  result = api_instance.get_permissions(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->get_permissions: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_permission**
> PermissionResource update_permission(permission, opts)

Update a permission

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthPermissionsApi.new

permission = "permission_example" # String | The permission value

opts = { 
  permission_resource: KnetikCloudClient::PermissionResource.new # PermissionResource | The permission resource object
}

begin
  #Update a permission
  result = api_instance.update_permission(permission, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthPermissionsApi->update_permission: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission** | **String**| The permission value | 
 **permission_resource** | [**PermissionResource**](PermissionResource.md)| The permission resource object | [optional] 

### Return type

[**PermissionResource**](PermissionResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



