# SwaggerClient::UtilMaintenanceApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_using_delete1**](UtilMaintenanceApi.md#delete_using_delete1) | **DELETE** /maintenance | Remove maintenance info
[**get_using_get1**](UtilMaintenanceApi.md#get_using_get1) | **GET** /maintenance | Get current maintenance info
[**post_using_post**](UtilMaintenanceApi.md#post_using_post) | **POST** /maintenance | Set current maintenance info
[**post_using_put**](UtilMaintenanceApi.md#post_using_put) | **PUT** /maintenance | Set current maintenance info


# **delete_using_delete1**
> delete_using_delete1

Remove maintenance info

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UtilMaintenanceApi.new

begin
  #Remove maintenance info
  api_instance.delete_using_delete1
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->delete_using_delete1: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_using_get1**
> Maintenance get_using_get1

Get current maintenance info

Get current maintenance info. 404 if no maintenance.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::UtilMaintenanceApi.new

begin
  #Get current maintenance info
  result = api_instance.get_using_get1
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->get_using_get1: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Maintenance**](Maintenance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_using_post**
> post_using_post(opts)

Set current maintenance info

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UtilMaintenanceApi.new

opts = { 
  maintenance: SwaggerClient::Maintenance.new # Maintenance | The Maintenance Object
}

begin
  #Set current maintenance info
  api_instance.post_using_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->post_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_using_put**
> post_using_put(opts)

Set current maintenance info

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::UtilMaintenanceApi.new

opts = { 
  maintenance: SwaggerClient::Maintenance.new # Maintenance | The Maintenance Object
}

begin
  #Set current maintenance info
  api_instance.post_using_put(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilMaintenanceApi->post_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maintenance** | [**Maintenance**](Maintenance.md)| The Maintenance Object | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



