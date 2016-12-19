# SwaggerClient::ConfigsApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_config_using_post**](ConfigsApi.md#create_config_using_post) | **POST** /configs | Create a new config
[**delete_config_using_delete**](ConfigsApi.md#delete_config_using_delete) | **DELETE** /configs/{name} | Delete an existing config.
[**get_config_using_get**](ConfigsApi.md#get_config_using_get) | **GET** /configs/{name} | Get a single config
[**get_configs_using_get**](ConfigsApi.md#get_configs_using_get) | **GET** /configs | List and search configs
[**update_config_using_put**](ConfigsApi.md#update_config_using_put) | **PUT** /configs/{name} | Update an existing config.


# **create_config_using_post**
> Config create_config_using_post(opts)

Create a new config

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConfigsApi.new

opts = { 
  config: SwaggerClient::Config.new # Config | The config object
}

begin
  #Create a new config
  result = api_instance.create_config_using_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConfigsApi->create_config_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

[**Config**](Config.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **delete_config_using_delete**
> delete_config_using_delete(name)

Delete an existing config.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConfigsApi.new

name = "name_example" # String | The config name


begin
  #Delete an existing config.
  api_instance.delete_config_using_delete(name)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConfigsApi->delete_config_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_config_using_get**
> Config get_config_using_get(name)

Get a single config

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConfigsApi.new

name = "name_example" # String | The config name


begin
  #Get a single config
  result = api_instance.get_config_using_get(name)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConfigsApi->get_config_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **get_configs_using_get**
> PageConfig get_configs_using_get(opts)

List and search configs

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::ConfigsApi.new

opts = { 
  filter_search: "filter_search_example", # String | Filter for configs whose name contains the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search configs
  result = api_instance.get_configs_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConfigsApi->get_configs_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **String**| Filter for configs whose name contains the given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageConfig**](PageConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



# **update_config_using_put**
> update_config_using_put(name, opts)

Update an existing config.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::ConfigsApi.new

name = "name_example" # String | The config name

opts = { 
  config: SwaggerClient::Config.new # Config | The config object
}

begin
  #Update an existing config.
  api_instance.update_config_using_put(name, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ConfigsApi->update_config_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



