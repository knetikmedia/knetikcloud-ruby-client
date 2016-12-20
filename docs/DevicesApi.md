# SwaggerClient::DevicesApi

All URIs are relative to *https://localhost:8080/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_device_using_post**](DevicesApi.md#create_device_using_post) | **POST** /devices | Create a device
[**delete_device_using_delete**](DevicesApi.md#delete_device_using_delete) | **DELETE** /devices/{id} | Delete a device
[**get_device_using_get**](DevicesApi.md#get_device_using_get) | **GET** /devices/{id} | Get a single device
[**get_devices_using_get**](DevicesApi.md#get_devices_using_get) | **GET** /devices | List and search devices
[**update_device_using_put**](DevicesApi.md#update_device_using_put) | **PUT** /devices/{id} | Update a device


# **create_device_using_post**
> DeviceResource create_device_using_post(device)

Create a device

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DevicesApi.new

device = SwaggerClient::DeviceResource.new # DeviceResource | device


begin
  #Create a device
  result = api_instance.create_device_using_post(device)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DevicesApi->create_device_using_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device_using_delete**
> delete_device_using_delete(id)

Delete a device

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DevicesApi.new

id = 56 # Integer | id


begin
  #Delete a device
  api_instance.delete_device_using_delete(id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DevicesApi->delete_device_using_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_device_using_get**
> DeviceResource get_device_using_get(id)

Get a single device

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DevicesApi.new

id = 56 # Integer | id


begin
  #Get a single device
  result = api_instance.get_device_using_get(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DevicesApi->get_device_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id | 

### Return type

[**DeviceResource**](DeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_devices_using_get**
> PageResourceDeviceResource get_devices_using_get(opts)

List and search devices

Get a list of devices with optional filtering

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DevicesApi.new

opts = { 
  filter_make: "filter_make_example", # String | Filter for devices with specified make
  filter_model: "filter_model_example", # String | Filter for devices with specified model
  size: 25, # Integer | The number of objects returned per page
  page: 1, # Integer | The number of the page returned, starting with 1
  order: "id:ASC" # String | A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]
}

begin
  #List and search devices
  result = api_instance.get_devices_using_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DevicesApi->get_devices_using_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_make** | **String**| Filter for devices with specified make | [optional] 
 **filter_model** | **String**| Filter for devices with specified model | [optional] 
 **size** | **Integer**| The number of objects returned per page | [optional] [default to 25]
 **page** | **Integer**| The number of the page returned, starting with 1 | [optional] [default to 1]
 **order** | **String**| A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] | [optional] [default to id:ASC]

### Return type

[**PageResourceDeviceResource**](PageResourceDeviceResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_device_using_put**
> update_device_using_put(device, id)

Update a device

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::DevicesApi.new

device = SwaggerClient::DeviceResource.new # DeviceResource | device

id = 56 # Integer | id


begin
  #Update a device
  api_instance.update_device_using_put(device, id)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DevicesApi->update_device_using_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**DeviceResource**](DeviceResource.md)| device | 
 **id** | **Integer**| id | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



