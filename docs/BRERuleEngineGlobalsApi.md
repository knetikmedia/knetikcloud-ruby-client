# SwaggerClient::BRERuleEngineGlobalsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_global_using_post**](BRERuleEngineGlobalsApi.md#create_global_using_post) | **POST** /bre/globals/definitions | Create a global definition
[**delete_global_using_delete**](BRERuleEngineGlobalsApi.md#delete_global_using_delete) | **DELETE** /bre/globals/definitions/{id} | Delete a global
[**get_global_using_get**](BRERuleEngineGlobalsApi.md#get_global_using_get) | **GET** /bre/globals/definitions/{id} | Get a single global definition
[**get_globals_using_get**](BRERuleEngineGlobalsApi.md#get_globals_using_get) | **GET** /bre/globals/definitions | List global definitions
[**update_global_using_put**](BRERuleEngineGlobalsApi.md#update_global_using_put) | **PUT** /bre/globals/definitions/{id} | Update a global definition


# **create_global_using_post**
> BreGlobalResource create_global_using_post(opts)

Create a global definition

Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineGlobalsApi.new

opts = { 
  bre_global_resource: SwaggerClient::BreGlobalResource.new # BreGlobalResource | The BRE global resource object
}

begin
  #Create a global definition
  result = api_instance.create_global_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->create_global_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_global_resource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_global_using_delete**
> delete_global_using_delete(id)

Delete a global

May fail if there are existing rules against it. Cannot delete core globals

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition


begin
  #Delete a global
  api_instance.delete_global_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->delete_global_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_global_using_get**
> BreGlobalResource get_global_using_get(id)

Get a single global definition

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition


begin
  #Get a single global definition
  result = api_instance.get_global_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->get_global_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_globals_using_get**
> PageResourceBreGlobalResource get_globals_using_get(opts)

List global definitions

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineGlobalsApi.new

opts = { 
  filter_system: true, # BOOLEAN | Filter for globals that are system globals when true, or not when false. Leave off for both mixed
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List global definitions
  result = api_instance.get_globals_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->get_globals_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_system** | **BOOLEAN**| Filter for globals that are system globals when true, or not when false. Leave off for both mixed | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]

### Return type

[**PageResourceBreGlobalResource**](PageResourceBreGlobalResource.md)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_global_using_put**
> update_global_using_put(id, opts)

Update a global definition

May fail if new parameters mismatch requirements of existing rules. Cannot update core globals

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: knetik_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition

opts = { 
  bre_global_resource: SwaggerClient::BreGlobalResource.new # BreGlobalResource | The BRE global resource object
}

begin
  #Update a global definition
  api_instance.update_global_using_put(id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->update_global_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 
 **bre_global_resource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

nil (empty response body)

### Authorization

[knetik_oauth](../README.md#knetik_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



