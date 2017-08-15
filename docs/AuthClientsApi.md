# KnetikCloudClient::AuthClientsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_client**](AuthClientsApi.md#create_client) | **POST** /auth/clients | Create a new client
[**delete_client**](AuthClientsApi.md#delete_client) | **DELETE** /auth/clients/{client_key} | Delete a client
[**get_client**](AuthClientsApi.md#get_client) | **GET** /auth/clients/{client_key} | Get a single client
[**get_client_grant_types**](AuthClientsApi.md#get_client_grant_types) | **GET** /auth/clients/grant-types | List available client grant types
[**get_clients**](AuthClientsApi.md#get_clients) | **GET** /auth/clients | List and search clients
[**set_client_grant_types**](AuthClientsApi.md#set_client_grant_types) | **PUT** /auth/clients/{client_key}/grant-types | Set grant types for a client
[**set_client_redirect_uris**](AuthClientsApi.md#set_client_redirect_uris) | **PUT** /auth/clients/{client_key}/redirect-uris | Set redirect uris for a client
[**update_client**](AuthClientsApi.md#update_client) | **PUT** /auth/clients/{client_key} | Update a client


# **create_client**
> ClientResource create_client(opts)

Create a new client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

opts = { 
  client_resource: KnetikCloudClient::ClientResource.new # ClientResource | The client resource object
}

begin
  #Create a new client
  result = api_instance.create_client(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->create_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_client**
> delete_client(client_key)

Delete a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client


begin
  #Delete a client
  api_instance.delete_client(client_key)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->delete_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_client**
> ClientResource get_client(client_key)

Get a single client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client


begin
  #Get a single client
  result = api_instance.get_client(client_key)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->get_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_client_grant_types**
> Array&lt;GrantTypeResource&gt; get_client_grant_types

List available client grant types

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

begin
  #List available client grant types
  result = api_instance.get_client_grant_types
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->get_client_grant_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;GrantTypeResource&gt;**](GrantTypeResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_clients**
> PageResourceClientResource get_clients(opts)

List and search clients

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

opts = { 
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search clients
  result = api_instance.get_clients(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->get_clients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceClientResource**](PageResourceClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_client_grant_types**
> set_client_grant_types(client_key, opts)

Set grant types for a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  grant_list: [KnetikCloudClient::Array<String>.new] # Array<String> | A list of unique grant types
}

begin
  #Set grant types for a client
  api_instance.set_client_grant_types(client_key, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->set_client_grant_types: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_client_redirect_uris**
> set_client_redirect_uris(client_key, opts)

Set redirect uris for a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  redirect_list: [KnetikCloudClient::Array<String>.new] # Array<String> | A list of unique redirect uris
}

begin
  #Set redirect uris for a client
  api_instance.set_client_redirect_uris(client_key, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->set_client_redirect_uris: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_client**
> ClientResource update_client(client_key, opts)

Update a client

### Example
```ruby
# load the gem
require 'knetikcloud_client'

api_instance = KnetikCloudClient::AuthClientsApi.new

client_key = "client_key_example" # String | The key of the client

opts = { 
  client_resource: KnetikCloudClient::ClientResource.new # ClientResource | The client resource object
}

begin
  #Update a client
  result = api_instance.update_client(client_key, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling AuthClientsApi->update_client: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_key** | **String**| The key of the client | 
 **client_resource** | [**ClientResource**](ClientResource.md)| The client resource object | [optional] 

### Return type

[**ClientResource**](ClientResource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



