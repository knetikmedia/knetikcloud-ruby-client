# SwaggerClient::AuthClientsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_client_grant_types_using_put**](AuthClientsApi.md#assign_client_grant_types_using_put) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**assign_client_redirect_uris_using_put**](AuthClientsApi.md#assign_client_redirect_uris_using_put) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**create_client_using_post**](AuthClientsApi.md#create_client_using_post) | **POST** /auth/clients | Create a new client
[**delete_client_using_delete**](AuthClientsApi.md#delete_client_using_delete) | **DELETE** /auth/clients/{client_key} | Delete a client
[**get_client_using_get**](AuthClientsApi.md#get_client_using_get) | **GET** /auth/clients/{client_key} | Get a single client
[**get_clients_using_get**](AuthClientsApi.md#get_clients_using_get) | **GET** /auth/clients | List and search clients
[**list_available_grant_types_using_get**](AuthClientsApi.md#list_available_grant_types_using_get) | **GET** /auth/clients/grant-types | List available client grant types
[**update_client_using_put**](AuthClientsApi.md#update_client_using_put) | **PUT** /auth/clients/{client_key} | Update a client


# **assign_client_grant_types_using_put**
> assign_client_grant_types_using_put(client_key, opts)

Set grant types for a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  grant_list: [SwaggerClient::Array<String>.new] # Array<String> | A list of unique grant types
}

begin
  #Set grant types for a client
  api_instance.assign_client_grant_types_using_put(client_key, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->assign_client_grant_types_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 
 **grant_list** | **Array&lt;String&gt;**| A list of unique grant types | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **assign_client_redirect_uris_using_put**
> assign_client_redirect_uris_using_put(client_key, opts)

Set redirect uris for a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  redirect_list: [SwaggerClient::Array<String>.new] # Array<String> | A list of unique redirect uris
}

begin
  #Set redirect uris for a client
  api_instance.assign_client_redirect_uris_using_put(client_key, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->assign_client_redirect_uris_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 
 **redirect_list** | **Array&lt;String&gt;**| A list of unique redirect uris | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_client_using_post**
> ClientResource create_client_using_post(opts)

Create a new client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

opts = { 
  client_resource: SwaggerClient::ClientResource.new # ClientResource | The client resource object
}

begin
  #Create a new client
  result = api_instance.create_client_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->create_client_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_client_using_delete**
> delete_client_using_delete(client_key)

Delete a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client


begin
  #Delete a client
  api_instance.delete_client_using_delete(client_key)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->delete_client_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_client_using_get**
> ClientResource get_client_using_get(client_key)

Get a single client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client


begin
  #Get a single client
  result = api_instance.get_client_using_get(client_key)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->get_client_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_clients_using_get**
> PageClientResource get_clients_using_get(opts)

List and search clients

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search clients
  result = api_instance.get_clients_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->get_clients_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageClientResource**](PageClientResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_available_grant_types_using_get**
> Array&lt;GrantTypeResource&gt; list_available_grant_types_using_get

List available client grant types

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

begin
  #List available client grant types
  result = api_instance.list_available_grant_types_using_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->list_available_grant_types_using_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;GrantTypeResource&gt;**](GrantTypeResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_client_using_put**
> update_client_using_put(client_key, opts)

Update a client

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  client_resource: SwaggerClient::ClientResource.new # ClientResource | The client resource object
}

begin
  #Update a client
  api_instance.update_client_using_put(client_key, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthClientsApi->update_client_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



