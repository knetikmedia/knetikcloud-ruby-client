# KnetikCloudClient::ConfigsApi

All URIs are relative to *https://devsandbox.knetikcloud.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_config**](ConfigsApi.md#create_config) | **POST** /configs | Create a new config
[**delete_config**](ConfigsApi.md#delete_config) | **DELETE** /configs/{name} | Delete an existing config
[**get_config**](ConfigsApi.md#get_config) | **GET** /configs/{name} | Get a single config
[**get_configs**](ConfigsApi.md#get_configs) | **GET** /configs | List and search configs
[**update_config**](ConfigsApi.md#update_config) | **PUT** /configs/{name} | Update an existing config


# **create_config**
> Config create_config(opts)

Create a new config

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

api_instance = KnetikCloudClient::ConfigsApi.new

opts = { 
  config: KnetikCloudClient::Config.new # Config | The config object
}

begin
  #Create a new config
  result = api_instance.create_config(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ConfigsApi->create_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config** | [**Config**](Config.md)| The config object | [optional] 

### Return type

[**Config**](Config.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_config**
> delete_config(name)

Delete an existing config

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

api_instance = KnetikCloudClient::ConfigsApi.new

name = "name_example" # String | The config name


begin
  #Delete an existing config
  api_instance.delete_config(name)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ConfigsApi->delete_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

nil (empty response body)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_config**
> Config get_config(name)

Get a single config

Only configs that are public readable will be shown without admin access

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

api_instance = KnetikCloudClient::ConfigsApi.new

name = "name_example" # String | The config name


begin
  #Get a single config
  result = api_instance.get_config(name)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ConfigsApi->get_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The config name | 

### Return type

[**Config**](Config.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_configs**
> PageResourceConfig get_configs(opts)

List and search configs

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

api_instance = KnetikCloudClient::ConfigsApi.new

opts = { 
  filter_search: "filter_search_example", # String | Filter for configs whose name contains the given string
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned
  order: "1" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search configs
  result = api_instance.get_configs(opts)
  p result
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ConfigsApi->get_configs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_search** | **String**| Filter for configs whose name contains the given string | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to 1]

### Return type

[**PageResourceConfig**](PageResourceConfig.md)

### Authorization

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_config**
> update_config(name, opts)

Update an existing config

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

api_instance = KnetikCloudClient::ConfigsApi.new

name = "name_example" # String | The config name

opts = { 
  config: KnetikCloudClient::Config.new # Config | The config object
}

begin
  #Update an existing config
  api_instance.update_config(name, opts)
rescue KnetikCloudClient::ApiError => e
  puts "Exception when calling ConfigsApi->update_config: #{e}"
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

[oauth2_client_credentials_grant](../README.md#oauth2_client_credentials_grant), [oauth2_password_grant](../README.md#oauth2_password_grant)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



