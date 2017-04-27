# KnetikCloudClient::AuthRolesApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_role**](AuthRolesApi.md#create_role) | **POST** /auth/roles | Create a new role
[**delete_role**](AuthRolesApi.md#delete_role) | **DELETE** /auth/roles/{role} | Delete a role
[**get_client_roles**](AuthRolesApi.md#get_client_roles) | **GET** /auth/clients/{client_key}/roles | Get roles for a client
[**get_role**](AuthRolesApi.md#get_role) | **GET** /auth/roles/{role} | Get a single role
[**get_roles**](AuthRolesApi.md#get_roles) | **GET** /auth/roles | List and search roles
[**get_user_roles**](AuthRolesApi.md#get_user_roles) | **GET** /auth/users/{user_id}/roles | Get roles for a user
[**set_client_roles**](AuthRolesApi.md#set_client_roles) | **PUT** /auth/clients/{client_key}/roles | Set roles for a client
[**set_permissions_for_role**](AuthRolesApi.md#set_permissions_for_role) | **PUT** /auth/roles/{role}/permissions | Set permissions for a role
[**set_user_roles**](AuthRolesApi.md#set_user_roles) | **PUT** /auth/users/{user_id}/roles | Set roles for a user
[**update_role**](AuthRolesApi.md#update_role) | **PUT** /auth/roles/{role} | Update a role


# **create_role**
> RoleResource create_role(opts)

Create a new role

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

opts = { 
  role_resource: KnetikCloudClient::RoleResource.new # RoleResource | The role resource object
}

begin
  #Create a new role
  result = api_instance.create_role(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->create_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_role**
> delete_role(role, opts)

Delete a role

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  force: true # BOOLEAN | If true, removes role from users/clients
}

begin
  #Delete a role
  api_instance.delete_role(role, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->delete_role: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_client_roles**
> Array&lt;RoleResource&gt; get_client_roles(client_key)

Get roles for a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

client_key = "client_key_example" # String | The client key


begin
  #Get roles for a client
  result = api_instance.get_client_roles(client_key)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_client_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The client key | 

### Return type

[**Array&lt;RoleResource&gt;**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_role**
> RoleResource get_role(role)

Get a single role

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

role = "role_example" # String | The role value


begin
  #Get a single role
  result = api_instance.get_role(role)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_roles**
> PageResourceRoleResource get_roles(opts)

List and search roles

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "name:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search roles
  result = api_instance.get_roles(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_roles: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_roles**
> Array&lt;RoleResource&gt; get_user_roles(user_id)

Get roles for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

user_id = 56 # Integer | The user's id


begin
  #Get roles for a user
  result = api_instance.get_user_roles(user_id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->get_user_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 

### Return type

[**Array&lt;RoleResource&gt;**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_client_roles**
> ClientResource set_client_roles(client_key, opts)

Set roles for a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

client_key = "client_key_example" # String | The client key

opts = { 
  roles_list: [KnetikCloudClient::Array<String>.new] # Array<String> | The list of unique roles
}

begin
  #Set roles for a client
  result = api_instance.set_client_roles(client_key, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->set_client_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The client key | 
 **roles_list** | **Array&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_permissions_for_role**
> RoleResource set_permissions_for_role(role, opts)

Set permissions for a role

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  permissions_list: [KnetikCloudClient::Array<String>.new] # Array<String> | The list of unique permissions
}

begin
  #Set permissions for a role
  result = api_instance.set_permissions_for_role(role, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->set_permissions_for_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **permissions_list** | **Array&lt;String&gt;**| The list of unique permissions | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_user_roles**
> UserResource set_user_roles(user_id, opts)

Set roles for a user

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

user_id = 56 # Integer | The user's id

opts = { 
  roles_list: [KnetikCloudClient::Array<String>.new] # Array<String> | The list of unique roles
}

begin
  #Set roles for a user
  result = api_instance.set_user_roles(user_id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->set_user_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| The user&#39;s id | 
 **roles_list** | **Array&lt;String&gt;**| The list of unique roles | [optional] 

### Return type

[**UserResource**](UserResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_role**
> RoleResource update_role(role, opts)

Update a role

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::AuthRolesApi.new

role = "role_example" # String | The role value

opts = { 
  role_resource: KnetikCloudClient::RoleResource.new # RoleResource | The role resource object
}

begin
  #Update a role
  result = api_instance.update_role(role, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthRolesApi->update_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| The role value | 
 **role_resource** | [**RoleResource**](RoleResource.md)| The role resource object | [optional] 

### Return type

[**RoleResource**](RoleResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



