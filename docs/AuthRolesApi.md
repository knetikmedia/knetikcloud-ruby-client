# SwaggerClient::AuthRolesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_client_roles_using_put**](AuthRolesApi.md#assign_client_roles_using_put) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**assign_permissions_using_put**](AuthRolesApi.md#assign_permissions_using_put) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**assign_user_roles_external_using_put**](AuthRolesApi.md#assign_user_roles_external_using_put) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**create_role_using_post**](AuthRolesApi.md#create_role_using_post) | **POST** /auth/roles | Create a new role
[**delete_role_using_delete**](AuthRolesApi.md#delete_role_using_delete) | **DELETE** /auth/roles/{role} | Delete a role
[**get_client_roles_using_get**](AuthRolesApi.md#get_client_roles_using_get) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**get_role_using_get**](AuthRolesApi.md#get_role_using_get) | **GET** /auth/roles/{role} | Get a single role
[**get_roles_using_get**](AuthRolesApi.md#get_roles_using_get) | **GET** /auth/roles | List and search roles
[**get_user_roles_using_get**](AuthRolesApi.md#get_user_roles_using_get) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**update_role_using_put**](AuthRolesApi.md#update_role_using_put) | **PUT** /auth/roles/{role} | Update a role


# **assign_client_roles_using_put**
> assign_client_roles_using_put(client_key, opts)

Set roles for a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

client_key = "client_key_example" # String | The client key

opts = { 
  roles_list: [SwaggerClient::Array<String>.new] # Array<String> | The list of unique roles
}

begin
  #Set roles for a client
  api_instance.assign_client_roles_using_put(client_key, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->assign_client_roles_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The client key | 
 **roles_list** | **Array&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **assign_permissions_using_put**
> assign_permissions_using_put(role, opts)

Set permissions for a role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  permissions_list: [SwaggerClient::Array<String>.new] # Array<String> | The list of unique permissions
}

begin
  #Set permissions for a role
  api_instance.assign_permissions_using_put(role, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->assign_permissions_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **permissions_list** | **Array&lt;String&gt;**| The list of unique permissions | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **assign_user_roles_external_using_put**
> assign_user_roles_external_using_put(user_id, opts)

Set roles for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

user_id = 56 # Integer | The user's id

opts = { 
  roles_list: [SwaggerClient::Array<String>.new] # Array<String> | The list of unique roles
}

begin
  #Set roles for a user
  api_instance.assign_user_roles_external_using_put(user_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->assign_user_roles_external_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **roles_list** | **Array&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_role_using_post**
> RoleResource create_role_using_post(opts)

Create a new role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

opts = { 
  role_resource: SwaggerClient::RoleResource.new # RoleResource | The role resource object
}

begin
  #Create a new role
  result = api_instance.create_role_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->create_role_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_role_using_delete**
> delete_role_using_delete(role, opts)

Delete a role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  force: true # BOOLEAN | If true, removes role from users/clients
}

begin
  #Delete a role
  api_instance.delete_role_using_delete(role, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->delete_role_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **force** | **BOOLEAN**| If true, removes role from users/clients | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_client_roles_using_get**
> Array&lt;RoleResource&gt; get_client_roles_using_get(client_key)

Get roles for a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

client_key = "client_key_example" # String | The client key


begin
  #Get roles for a client
  result = api_instance.get_client_roles_using_get(client_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_client_roles_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The client key | 

### Return type

[**Array&lt;RoleResource&gt;**](RoleResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_role_using_get**
> RoleResource get_role_using_get(role)

Get a single role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

role = "role_example" # String | The role value


begin
  #Get a single role
  result = api_instance.get_role_using_get(role)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_role_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_roles_using_get**
> PageResourceRoleResource get_roles_using_get(opts)

List and search roles

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search roles
  result = api_instance.get_roles_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_roles_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to name:ASC]

### Return type

[**PageResourceRoleResource**](PageResourceRoleResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_roles_using_get**
> Array&lt;RoleResource&gt; get_user_roles_using_get(user_id)

Get roles for a user

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

user_id = 56 # Integer | The user's id


begin
  #Get roles for a user
  result = api_instance.get_user_roles_using_get(user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_user_roles_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 

### Return type

[**Array&lt;RoleResource&gt;**](RoleResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_role_using_put**
> update_role_using_put(role, opts)

Update a role

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  role_resource: SwaggerClient::RoleResource.new # RoleResource | The role resource object
}

begin
  #Update a role
  api_instance.update_role_using_put(role, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthRolesApi->update_role_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



