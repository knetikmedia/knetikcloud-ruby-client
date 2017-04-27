# KnetikCloudClient::BRERuleEngineGlobalsApi

All URIs are relative to *https://sandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_bre_global**](BRERuleEngineGlobalsApi.md#create_bre_global) | **POST** /bre/globals/definitions | Create a global definition
[**delete_bre_global**](BRERuleEngineGlobalsApi.md#delete_bre_global) | **DELETE** /bre/globals/definitions/{id} | Delete a global
[**get_bre_global**](BRERuleEngineGlobalsApi.md#get_bre_global) | **GET** /bre/globals/definitions/{id} | Get a single global definition
[**get_bre_globals**](BRERuleEngineGlobalsApi.md#get_bre_globals) | **GET** /bre/globals/definitions | List global definitions
[**update_bre_global**](BRERuleEngineGlobalsApi.md#update_bre_global) | **PUT** /bre/globals/definitions/{id} | Update a global definition


# **create_bre_global**
> BreGlobalResource create_bre_global(opts)

Create a global definition

Once created you can then use in a custom rule. Note that global definitions cannot be modified or deleted if in use.

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineGlobalsApi.new

opts = { 
  bre_global_resource: KnetikCloudClient::BreGlobalResource.new # BreGlobalResource | The BRE global resource object
}

begin
  #Create a global definition
  result = api_instance.create_bre_global(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->create_bre_global: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bre_global_resource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_bre_global**
> delete_bre_global(id)

Delete a global

May fail if there are existing rules against it. Cannot delete core globals

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition


begin
  #Delete a global
  api_instance.delete_bre_global(id)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->delete_bre_global: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_global**
> BreGlobalResource get_bre_global(id)

Get a single global definition

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition


begin
  #Get a single global definition
  result = api_instance.get_bre_global(id)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->get_bre_global: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bre_globals**
> PageResourceBreGlobalResource get_bre_globals(opts)

List global definitions

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineGlobalsApi.new

opts = { 
  filter_system: true, # BOOLEAN | Filter for globals that are system globals when true, or not when false. Leave off for both mixed
  size: 25, # Integer | The number of objects returned per page
  page: 1 # Integer | The number of the page returned, starting with 1
}

begin
  #List global definitions
  result = api_instance.get_bre_globals(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->get_bre_globals: #{e}"
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

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_bre_global**
> BreGlobalResource update_bre_global(id, opts)

Update a global definition

May fail if new parameters mismatch requirements of existing rules. Cannot update core globals

### Example
```ruby
# load the gem
require 'knetikcloud_client'
# setup authorization
KnetikCloudClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = KnetikCloudClient::BRERuleEngineGlobalsApi.new

id = "id_example" # String | The id of the global definition

opts = { 
  bre_global_resource: KnetikCloudClient::BreGlobalResource.new # BreGlobalResource | The BRE global resource object
}

begin
  #Update a global definition
  result = api_instance.update_bre_global(id, opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling BRERuleEngineGlobalsApi->update_bre_global: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the global definition | 
 **bre_global_resource** | [**BreGlobalResource**](BreGlobalResource.md)| The BRE global resource object | [optional] 

### Return type

[**BreGlobalResource**](BreGlobalResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



